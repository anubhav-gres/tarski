
from ...syntax import symref, term_substitution, Constant, create_substitution
from ...fstrips.action import Action, PlainOperator


def ground_schema_into_plain_operator(action: Action, substitution):
    """ Apply the given substitution to the given action schema and attempt to create a PlainOperator
    :param action: A formula, term, FSTRIPS action, or FSTRIPS action effect.
    :param substitution: A dictionary from TermReferences (expected to be Variables) to Constants.
    :return: The result of applying the substituion to the element.
    """
    for param in action.parameters:
        c = substitution.get(symref(param))
        if c is None:
            raise RuntimeError(f'Can only ground action schemas when the substitution contains all action parameters')
        if not isinstance(c, Constant):
            raise RuntimeError(f'Can only ground action schemas with constant terms')

    paramlist = ', '.join(substitution[symref(p)].name for p in action.parameters)
    name = f'{action.name}({paramlist})'

    precondition = term_substitution(action.precondition, substitution, inplace=False)
    effects = [term_substitution(eff, substitution, inplace=False) for eff in action.effects]
    return PlainOperator(action.language, name, precondition, effects)


def ground_schema_into_plain_operator_from_grounding(action: Action, grounding):
    """ A wrapper to ground an schema from a "plain" grounding, i.e. a list of objects
    that correspond to the action parameters"""
    lang = action.language
    subst = create_substitution(action.parameters, [lang.get_constant(name) for name in grounding])
    return ground_schema_into_plain_operator(action, subst)
