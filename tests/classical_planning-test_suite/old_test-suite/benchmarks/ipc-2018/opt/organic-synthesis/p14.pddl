(define (problem alkene_p16)
(:domain organic-synthesis)
(:objects
    c007 - carbon
    c008 - carbon
    c009 - carbon
    c010 - carbon
    c011 - carbon
    c012 - carbon
    c013 - carbon
    c014 - carbon
    c015 - carbon
    c025 - carbon
    c026 - carbon
    c027 - carbon
    c028 - carbon
    c029 - carbon
    c030 - carbon
    c031 - carbon
    h056 - hydrogen
    h057 - hydrogen
    h088 - hydrogen
    h089 - hydrogen
    h090 - hydrogen
    h091 - hydrogen
    h092 - hydrogen
    h093 - hydrogen
    h094 - hydrogen
    h095 - hydrogen
    h096 - hydrogen
    h097 - hydrogen
    h098 - hydrogen
    h099 - hydrogen
    h100 - hydrogen
    h101 - hydrogen
    h102 - hydrogen
    h103 - hydrogen
    h104 - hydrogen
    h105 - hydrogen
    h119 - hydrogen
    h120 - hydrogen
    h121 - hydrogen
    h122 - hydrogen
    h123 - hydrogen
    h124 - hydrogen
    h125 - hydrogen
    h126 - hydrogen
    h127 - hydrogen
    h128 - hydrogen
    h129 - hydrogen
    h130 - hydrogen
    h131 - hydrogen
    h132 - hydrogen
    o063 - oxygen
)
(:init
    (bond c007 c008)
    (bond c008 c007)
    (bond c007 h090)
    (bond h090 c007)
    (bond c007 h089)
    (bond h089 c007)
    (bond c007 h088)
    (bond h088 c007)
    (bond c008 h091)
    (bond h091 c008)
    (bond c008 h092)
    (bond h092 c008)
    (bond c008 c009)
    (bond c009 c008)
    (bond c009 c010)
    (bond c010 c009)
    (bond c009 h094)
    (bond h094 c009)
    (bond c009 h093)
    (bond h093 c009)
    (bond c010 h096)
    (bond h096 c010)
    (bond c010 h095)
    (bond h095 c010)
    (bond c010 c011)
    (bond c011 c010)
    (doublebond c011 c013)
    (doublebond c013 c011)
    (bond c011 c012)
    (bond c012 c011)
    (bond c012 h097)
    (bond h097 c012)
    (bond c012 h098)
    (bond h098 c012)
    (bond c012 h099)
    (bond h099 c012)
    (bond c013 c015)
    (bond c015 c013)
    (bond c013 c014)
    (bond c014 c013)
    (bond c014 h102)
    (bond h102 c014)
    (bond c014 h100)
    (bond h100 c014)
    (bond c014 h101)
    (bond h101 c014)
    (bond c015 h103)
    (bond h103 c015)
    (bond c015 h104)
    (bond h104 c015)
    (bond c015 h105)
    (bond h105 c015)
    (bond c025 h121)
    (bond h121 c025)
    (bond c025 h120)
    (bond h120 c025)
    (bond c025 h119)
    (bond h119 c025)
    (bond c025 c026)
    (bond c026 c025)
    (bond c026 c027)
    (bond c027 c026)
    (bond c026 h122)
    (bond h122 c026)
    (bond c026 h123)
    (bond h123 c026)
    (bond c027 h125)
    (bond h125 c027)
    (bond c027 h124)
    (bond h124 c027)
    (bond c027 c028)
    (bond c028 c027)
    (bond c028 c029)
    (bond c029 c028)
    (bond c028 h127)
    (bond h127 c028)
    (bond c028 h126)
    (bond h126 c028)
    (doublebond c029 c030)
    (doublebond c030 c029)
    (bond c029 h128)
    (bond h128 c029)
    (bond c030 c031)
    (bond c031 c030)
    (bond c030 h129)
    (bond h129 c030)
    (bond c031 h130)
    (bond h130 c031)
    (bond c031 h131)
    (bond h131 c031)
    (bond c031 h132)
    (bond h132 c031)
    (bond h056 o063)
    (bond o063 h056)
    (bond h057 o063)
    (bond o063 h057)
)
(:goal
(and
    (bond c007 c008)
    (bond c008 c007)
    (bond c007 h090)
    (bond h090 c007)
    (bond c007 h089)
    (bond h089 c007)
    (bond c007 h088)
    (bond h088 c007)
    (bond c008 c009)
    (bond c009 c008)
    (bond c008 h092)
    (bond h092 c008)
    (bond c008 h091)
    (bond h091 c008)
    (bond c009 c010)
    (bond c010 c009)
    (bond c009 h094)
    (bond h094 c009)
    (bond c009 h093)
    (bond h093 c009)
    (bond c010 c011)
    (bond c011 c010)
    (bond c010 h096)
    (bond h096 c010)
    (bond c010 h095)
    (bond h095 c010)
    (bond c011 c013)
    (bond c013 c011)
    (bond c011 c012)
    (bond c012 c011)
    (bond c011 h056)
    (bond h056 c011)
    (bond c012 h098)
    (bond h098 c012)
    (bond c012 h097)
    (bond h097 c012)
    (bond c012 h099)
    (bond h099 c012)
    (bond c013 c014)
    (bond c014 c013)
    (bond c013 c015)
    (bond c015 c013)
    (bond c013 o063)
    (bond o063 c013)
    (bond c014 h100)
    (bond h100 c014)
    (bond c014 h102)
    (bond h102 c014)
    (bond c014 h101)
    (bond h101 c014)
    (bond c015 h103)
    (bond h103 c015)
    (bond c015 h105)
    (bond h105 c015)
    (bond c015 h104)
    (bond h104 c015)
    (bond c025 c026)
    (bond c026 c025)
    (bond c025 h121)
    (bond h121 c025)
    (bond c025 h119)
    (bond h119 c025)
    (bond c025 h120)
    (bond h120 c025)
    (bond c026 c027)
    (bond c027 c026)
    (bond c026 h122)
    (bond h122 c026)
    (bond c026 h123)
    (bond h123 c026)
    (bond c027 c028)
    (bond c028 c027)
    (bond c027 h124)
    (bond h124 c027)
    (bond c027 h125)
    (bond h125 c027)
    (bond c028 c029)
    (bond c029 c028)
    (bond c028 h126)
    (bond h126 c028)
    (bond c028 h127)
    (bond h127 c028)
    (bond c029 c030)
    (bond c030 c029)
    (bond c029 h057)
    (bond h057 c029)
    (bond c029 h128)
    (bond h128 c029)
    (bond c030 o063)
    (bond o063 c030)
    (bond c030 c031)
    (bond c031 c030)
    (bond c030 h129)
    (bond h129 c030)
    (bond c031 h131)
    (bond h131 c031)
    (bond c031 h130)
    (bond h130 c031)
    (bond c031 h132)
    (bond h132 c031)
)
)
)