# -*- coding: utf-8 -*-
import copy

from ... import fstrips as fs
from ...syntax import Variable
from ...syntax.visitors import CollectVariables


def process_expression(language, schema, op, copy_schema=True):
    # pylint: disable=unused-argument
    if copy_schema:
        g_expr = copy.deepcopy(schema)
    else:
        g_expr = schema
    op.visit(g_expr)
    var_collector = CollectVariables()
    var_collector.visit(g_expr)
    assert len(var_collector.variables) == 0
    return g_expr


def process_effect(language, eff_schema, op):
    # pylint: disable=unused-argument
    if isinstance(eff_schema, (fs.AddEffect, fs.DelEffect)):
        op.visit(eff_schema.atom)
    elif isinstance(eff_schema, fs.FunctionalEffect):
        op.visit(eff_schema.lhs)
        if isinstance(eff_schema.rhs, Variable):
            eff_schema.rhs = op.subst.get(eff_schema.rhs, None)
        else:
            op.visit(eff_schema.rhs)
    elif isinstance(eff_schema, fs.ChoiceEffect):
        op.visit(eff_schema.obj)
        _ = [op.visit(x) for x in eff_schema.variables]

    # MRJ: invariant
    var_collector = CollectVariables()
    if isinstance(eff_schema, (fs.AddEffect, fs.DelEffect)):
        var_collector.visit(eff_schema.atom)
    elif isinstance(eff_schema, fs.FunctionalEffect):
        var_collector.visit(eff_schema.lhs)
        var_collector.visit(eff_schema.rhs)
    elif isinstance(eff_schema, fs.ChoiceEffect):
        var_collector.visit(eff_schema.obj)
        _ = [var_collector.visit(x) for x in eff_schema.variables]
    assert len(var_collector.variables) == 0
    return eff_schema
