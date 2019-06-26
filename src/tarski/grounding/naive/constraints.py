# -*- coding: utf-8 -*-
import itertools
from collections import OrderedDict

from ...syntax.transform import TermSubstitution, UniversalQuantifierElimination, NegatedBuiltinAbsorption
from ...syntax.transform import CNFTransformation
from ...syntax.visitors import CollectVariables
from ...util import IndexDictionary
from ...syntax import QuantifiedFormula, Quantifier
from . import instantiation
from .elements import process_expression


class ConstraintGrounder:

    def __init__(self, prob, index):
        self.problem = prob
        self.L = self.problem.language
        self.index = index
        self.problem.ground_constraints = IndexDictionary()
        self.schemas = list(self.problem.constraints)
        self.constraints_generated = 0

    def __str__(self):
        return 'Constraints Generated: {}'.format(self.constraints_generated)

    def calculate_constraints(self):

        for const_schema in self.schemas:
            # 1. Collect set of free variables in the constraint
            const_schema = UniversalQuantifierElimination.rewrite(self.L, const_schema).universal_free
            var_collector = CollectVariables()
            var_collector.visit(const_schema)
            K, syms, substs = instantiation.enumerate_groundings(self.L, list(var_collector.variables))
            for values in itertools.product(*substs):
                subst = OrderedDict({syms[k]: v for k, v in enumerate(values)})
                op = TermSubstitution(self.L, subst)
                g_const = process_expression(self.L, const_schema, op)
                # Simplification steps
                s0 = NegatedBuiltinAbsorption.rewrite(self.L, g_const)
                # CNF
                if isinstance(s0.formula, QuantifiedFormula):
                    assert s0.formula.quantifier == Quantifier.Exists
                    # s0 is of the form \exists x1, ..., xn phi, phi is quantifier free
                    s0.formula.formula = CNFTransformation.rewrite(self.L, s0.formula.formula).cnf
                    self.problem.ground_constraints.add(s0.formula)
                else:
                    s1 = CNFTransformation.rewrite(self.L, s0.formula)
                    self.problem.ground_constraints.add(s1.cnf)
            self.constraints_generated += K
