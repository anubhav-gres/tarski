# -*- coding: utf-8 -*-
from tarski import FOL, \
    Formula,
    Variable,
    LanguageError

import abc

class Action(abc.ABC) :

    def __init__(self, name, pre, effs ) :
        self._name = name
        self._pre = pre
        self._effs = effs

    @property
    def name(self) :
        return self._name

    @property
    def precondition(self) :
        return self._pre

    @property
    def effects(self) :
        return self._effs



def action( L : FOL, **kwargs ) :
    # let's pick up each argument from kwargs and
    # process it
    argnames = kwargs.keys()
    name = None
    parameters = None
    precondition = None
    effects = None

    for arg in argnames :
        if arg == 'name' :
            name = kwargs[arg]
        elif arg in ('parameters','params') :
            parameters = kwargs[arg]
        elif arg in ('precondition','pre') :
            precondition = kwargs[arg]
        elif arg in ('effects','eff') :
            effects = kwargs[arg]
        kwargs.pop(arg)

    if len(kwargs) > 0 :
        raise LanguageError('Unknown arguments were passed: {}'.format(','.join(kwargs.keys())))

    return Action(name, parameters, precondition, effects)
