BEGIN BE3FADE

IF ~GlobalGT("E3LOVETALK","GLOBAL",30)
GlobalLT("E3LOVETALK","GLOBAL",32)
!GlobalTimerExpired("E3TREATMENTTIMER","GLOBAL")
Global("E3DIDTREATMENTTALK","GLOBAL",1)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN treatment_start
SAY @962
IF ~~ THEN REPLY @963 DO ~SetGlobal("E3DIDTREATMENTTALK","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY @964 DO ~SetGlobal("E3DIDTREATMENTTALK","GLOBAL",2)~ GOTO treatment_help
END

IF ~~ THEN BEGIN treatment_help
SAY @965 = @966
IF ~~ THEN REPLY @967 GOTO treatment_healing
IF ~~ THEN REPLY @968 GOTO treatment_yell
IF ~~ THEN REPLY @969 GOTO treatment_else
END

IF ~~ THEN BEGIN treatment_healing
SAY @970
IF ~~ THEN REPLY @971 GOTO treatment_potion
IF ~~ THEN REPLY @972 GOTO treatment_cleaning
IF ~~ THEN REPLY @973 GOTO treatment_yell
END

IF ~~ THEN BEGIN treatment_yell
SAY @974
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN treatment_else
SAY @975
IF ~~ THEN REPLY @976 GOTO treatment_abused
IF ~~ THEN REPLY @977 GOTO treatment_glad
END

IF ~~ THEN BEGIN treatment_potion
SAY @978 = @979 = @980
IF ~~ THEN REPLY @981 GOTO treatment_water
IF ~~ THEN REPLY @982 GOTO treatment_wounds
END

IF ~~ THEN BEGIN treatment_cleaning
SAY @983
IF ~~ THEN REPLY @981 GOTO treatment_water
IF ~~ THEN REPLY @984 GOTO treatment_water
IF ~~ THEN REPLY @982 GOTO treatment_wounds
END

IF ~~ THEN BEGIN treatment_abused
SAY @985 = @986
IF ~~ THEN REPLY @987 GOTO treatment_healing
IF ~~ THEN REPLY @988 GOTO treatment_yell
END

IF ~~ THEN BEGIN treatment_glad
SAY @989
IF ~~ THEN REPLY @990 GOTO treatment_healing
IF ~~ THEN REPLY @988 GOTO treatment_yell
END

IF ~~ THEN BEGIN treatment_water
SAY @991 = @992 = @993
IF ~~ THEN REPLY @994 GOTO treatment_gentle
IF ~~ THEN REPLY @995 GOTO treatment_still
END

IF ~~ THEN BEGIN treatment_wounds
SAY @996
IF ~~ THEN REPLY @997 GOTO treatment_water
END

IF ~~ THEN BEGIN treatment_gentle
SAY @998
IF ~~ THEN REPLY @999 GOTO treatment_embarrass
IF ~~ THEN REPLY @1000 GOTO treatment_finish
END

IF ~~ THEN BEGIN treatment_still
SAY @1001
IF ~~ THEN REPLY @999 GOTO treatment_embarrass
IF ~~ THEN REPLY @1000 GOTO treatment_finish
END

IF ~~ THEN BEGIN treatment_embarrass
SAY @1002
IF ~~ THEN REPLY @1003 GOTO treatment_around
IF ~~ THEN REPLY @1004 GOTO treatment_finish
END

IF ~~ THEN BEGIN treatment_finish
SAY @1005
IF ~~ THEN REPLY @1006 GOTO treatment_around
END

IF ~~ THEN BEGIN treatment_around
SAY @1007
IF ~~ THEN REPLY @1008 GOTO treatment_yourself
IF ~~ THEN REPLY @1009 GOTO treatment_help2
END

IF ~~ THEN BEGIN treatment_yourself
SAY @1010
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN treatment_help2
SAY @1011 = @1012
IF ~~ THEN REPLY @1013 GOTO treatment_sleep
IF ~~ THEN REPLY @1014 GOTO treatment_help3
END

IF ~~ THEN BEGIN treatment_sleep
SAY @1015
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN treatment_help3
SAY @1016 = @1017
IF ~~ THEN REPLY @1018 GOTO treatment_fond
IF ~~ THEN REPLY @1019 GOTO treatment_leave
END

IF ~~ THEN BEGIN treatment_fond
SAY @1020
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN treatment_leave
SAY @1021
IF ~~ THEN REPLY @1022 GOTO treatment_fond
IF ~~ THEN REPLY @1023 GOTO treatment_friends
END

IF ~~ THEN BEGIN treatment_friends
SAY @1024
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~GlobalGT("E3LOVETALK","GLOBAL",60)
Global("E3DIDDRUNKTALK","GLOBAL",1)
!StateCheck(Player1,STATE_SLEEPING)
OR(9)
AreaCheck("AR0313")
AreaCheck("AR0406")
AreaCheck("AR0509")
AreaCheck("AR0513")
AreaCheck("AR0522")
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR1105")
AreaCheck("AR2010")~ THEN BEGIN drunk_start
SAY @1990 = @1991 = @1992
IF ~~ THEN REPLY @1993 DO ~SetGlobal("E3DIDDRUNKTALK","GLOBAL",2)~ GOTO drunk_enough
IF ~~ THEN REPLY @1994 DO ~SetGlobal("E3DIDDRUNKTALK","GLOBAL",2)~ GOTO drunk_fun
IF ~~ THEN REPLY @1995 DO ~SetGlobal("E3DIDDRUNKTALK","GLOBAL",2)~ GOTO drunk_pester
END

IF ~~ THEN BEGIN drunk_enough
SAY @1996 = @1997
IF ~~ THEN REPLY @1998 GOTO drunk_morning
IF ~~ THEN REPLY @1999 GOTO drunk_gorgeous
IF ~~ THEN REPLY @2000 GOTO drunk_no
END

IF ~~ THEN BEGIN drunk_fun
SAY @2001 = @2002 = @1997
IF ~~ THEN REPLY @2003 GOTO drunk_morning
IF ~~ THEN REPLY @1999 GOTO drunk_gorgeous
IF ~~ THEN REPLY @2004 GOTO drunk_no
END

IF ~~ THEN BEGIN drunk_pester
SAY @2005 = @2006
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN drunk_morning
SAY @2007 = @2008
IF ~~ THEN REPLY @2009 GOTO drunk_shocked
IF ~~ THEN REPLY @2010 GOTO drunk_wine
IF ~~ THEN REPLY @2011 GOTO drunk_ale
END

IF ~~ THEN BEGIN drunk_gorgeous
SAY @2012 = @2013 = @2014
IF ~~ THEN REPLY @2015 GOTO drunk_satisfied
IF ~~ THEN REPLY @2016 GOTO drunk_disentangle
END

IF ~~ THEN BEGIN drunk_no
SAY @2018 = @2019
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN drunk_shocked
SAY @2020 = @2021
IF ~~ THEN REPLY @2022 GOTO drunk_confused
IF ~~ THEN REPLY @2023 GOTO drunk_no
END

IF ~~ THEN BEGIN drunk_wine
SAY @2024
IF ~~ THEN REPLY @2025 GOTO drunk_no
IF ~~ THEN REPLY @2026 GOTO drunk_ale
IF ~~ THEN REPLY @2027 GOTO drunk_bed
END

IF ~~ THEN BEGIN drunk_ale
SAY @2028
IF ~~ THEN REPLY @2029 GOTO drunk_kiss
IF ~~ THEN REPLY @2030 GOTO drunk_bed
END

IF ~~ THEN BEGIN drunk_satisfied
SAY @2031
IF ~~ THEN REPLY @2032 GOTO drunk_kiss
IF ~~ THEN REPLY @2033 GOTO drunk_bed
END

IF ~~ THEN BEGIN drunk_disentangle
SAY @2017
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN drunk_confused
SAY @2034 = @2035
IF ~~ THEN REPLY @2036 GOTO drunk_bed
END

IF ~~ THEN BEGIN drunk_bed
SAY @2042 = @2043
IF ~~ THEN REPLY @2044 GOTO drunk_find
IF ~~ THEN REPLY @2045 GOTO drunk_room
END

IF ~~ THEN BEGIN drunk_kiss
SAY @2037
IF ~~ THEN REPLY @2038 GOTO drunk_advice
IF ~~ THEN REPLY @2039 GOTO drunk_ignore
END

IF ~~ THEN BEGIN drunk_advice
SAY @2047
IF ~~ THEN GOTO drunk_room
END

IF ~~ THEN BEGIN drunk_ignore
SAY @2040
IF ~~ THEN REPLY @2041 GOTO drunk_bed
END

IF ~~ THEN BEGIN drunk_find
SAY @2046
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN drunk_room
SAY @2048 = @2049
IF ~~ THEN REPLY @2050 GOTO drunk_carryon
IF ~~ THEN REPLY @2051 GOTO drunk_rest
END

IF ~~ THEN BEGIN drunk_carryon
SAY @2052 = @2053
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN drunk_rest
SAY @2054 = @2053
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~GlobalGT("E3LOVETALK","GLOBAL",60)
Global("E3DIDDRUNKTALK","GLOBAL",3)
!StateCheck(Player1,STATE_SLEEPING)
OR(9)
AreaCheck("AR0313")
AreaCheck("AR0406")
AreaCheck("AR0509")
AreaCheck("AR0513")
AreaCheck("AR0522")
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR1105")
AreaCheck("AR2010")~ THEN BEGIN hangover_start
SAY @2460
IF ~~ THEN REPLY @2461 DO ~SetGlobal("E3DIDDRUNKTALK","GLOBAL",4)~ GOTO hangover_right
IF ~~ THEN REPLY @2462 DO ~SetGlobal("E3DIDDRUNKTALK","GLOBAL",4)~ GOTO hangover_alright
IF ~~ THEN REPLY @2463 DO ~SetGlobal("E3DIDDRUNKTALK","GLOBAL",4)~ GOTO hangover_sympathy
IF ~~ THEN REPLY @2464 DO ~SetGlobal("E3DIDDRUNKTALK","GLOBAL",4)~ GOTO hangover_poor
END

IF ~~ THEN BEGIN hangover_right
SAY @2465
IF ~~ THEN REPLY @2463 GOTO hangover_sympathy
IF ~~ THEN REPLY @2466 GOTO hangover_asleep
IF ~~ THEN REPLY @2464 GOTO hangover_poor
END

IF ~~ THEN BEGIN hangover_alright
SAY @2467
IF ~~ THEN REPLY @2468 GOTO hangover_anything
IF ~~ THEN REPLY @2463 GOTO hangover_sympathy
IF ~~ THEN REPLY @2464 GOTO hangover_poor
END

IF ~~ THEN BEGIN hangover_sympathy
SAY @2469
IF ~~ THEN REPLY @2470 GOTO hangover_poor
IF ~~ THEN REPLY @2471 GOTO hangover_breakfast
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @2472 GOTO hangover_better
END

IF ~~ THEN BEGIN hangover_poor
SAY @2473
IF ~~ THEN REPLY @2474 GOTO hangover_dwarves
IF ~~ THEN REPLY @2475 GOTO hangover_own
IF ~~ THEN REPLY @2471 GOTO hangover_breakfast
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @2472 GOTO hangover_better
END

IF ~~ THEN BEGIN hangover_asleep
SAY @2476
IF ~~ THEN REPLY @2468 GOTO hangover_anything
IF ~~ THEN REPLY @2463 GOTO hangover_sympathy
IF ~~ THEN REPLY @2464 GOTO hangover_poor
END

IF ~~ THEN BEGIN hangover_anything
SAY @2477
IF ~~ THEN REPLY @2474 GOTO hangover_dwarves
IF ~~ THEN REPLY @2475 GOTO hangover_own
IF ~~ THEN REPLY @2471 GOTO hangover_breakfast
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @2472 GOTO hangover_better
END

IF ~~ THEN BEGIN hangover_breakfast
SAY @2478
IF ~~ THEN REPLY @2479 GOTO hangover_egg
IF ~~ THEN REPLY @2480 GOTO hangover_yours
IF ~Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @2481 GOTO hangover_better
END

IF ~~ THEN BEGIN hangover_better
SAY @2482
IF ~~ THEN REPLY @2483 GOTO hangover_lewd
IF ~~ THEN REPLY @2484 GOTO hangover_ill
END

IF ~~ THEN BEGIN hangover_dwarves
SAY @2485
IF ~~ THEN REPLY @2486 GOTO hangover_throat
IF ~~ THEN REPLY @2487 GOTO hangover_ofcourse
END

IF ~~ THEN BEGIN hangover_own
SAY @2488
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hangover_egg
SAY @2489
IF ~~ THEN REPLY @2490 GOTO hangover_dwarves
IF ~~ THEN REPLY @2491 GOTO hangover_travel
END

IF ~~ THEN BEGIN hangover_yours
SAY @2492 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hangover_lewd
SAY @2493 
IF ~~ THEN REPLY @2494 GOTO hangover_mind
IF ~~ THEN REPLY @2495 GOTO hangover_eat
END

IF ~~ THEN BEGIN hangover_ill
SAY @2496
IF ~~ THEN REPLY @2494 GOTO hangover_mind
IF ~~ THEN REPLY @2497 GOTO hangover_later
IF ~~ THEN REPLY @2498 GOTO hangover_eat
END

IF ~~ THEN BEGIN hangover_throat
SAY @2499
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hangover_ofcourse
SAY @2500
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hangover_travel
SAY @2501
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hangover_mind
SAY @2502
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hangover_eat
SAY @2503
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hangover_later
SAY @2504
IF ~~ THEN EXIT
END

IF ~Global("PhaereJob","GLOBAL",1)
Global("E3DIDUDTAVERNTALK","LOCALS",0)
AreaCheck("AR2202")
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN udtavern_start
SAY @2055
IF ~~ THEN REPLY @2056 DO ~SetGlobal("E3DIDUDTAVERNTALK","LOCALS",1)~ GOTO udtavern_question
IF ~~ THEN REPLY @2057 DO ~SetGlobal("E3DIDUDTAVERNTALK","LOCALS",1)~ GOTO udtavern_ignore
END

IF ~~ THEN BEGIN udtavern_question
SAY @2058 
IF ~~ THEN REPLY @2059 GOTO udtavern_cover
IF ~~ THEN REPLY @2060 GOTO udtavern_later
IF ~~ THEN REPLY @2061 GOTO udtavern_rebuke
END

IF ~~ THEN BEGIN udtavern_ignore
SAY @2062
IF ~~ THEN REPLY @2063 GOTO udtavern_question
IF ~~ THEN REPLY @2064 GOTO udtavern_male
END

IF ~~ THEN BEGIN udtavern_cover
SAY @2065 = @2066
IF ~~ THEN REPLY @2067 GOTO udtavern_talk
IF ~~ THEN REPLY @2068 GOTO udtavern_rebuke
IF ~~ THEN REPLY @2069 GOTO udtavern_later
END

IF ~~ THEN BEGIN udtavern_later
SAY @2070 = @2071
IF ~~ THEN REPLY @2072 DO ~SetGlobal("E3DIDUDTAVERNTALK","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("E3Cut003")~ EXIT
IF ~~ THEN REPLY @2073 GOTO udtavern_unimportant
END

IF ~~ THEN BEGIN udtavern_rebuke
SAY @2074 = @2075
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN udtavern_male
SAY @2076
IF ~~ THEN REPLY @2077 GOTO udtavern_question
END

IF ~~ THEN BEGIN udtavern_talk
SAY @2078 = @2071
IF ~~ THEN REPLY @2072 DO ~SetGlobal("E3DIDUDTAVERNTALK","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("E3Cut003")~ EXIT
IF ~~ THEN REPLY @2073 GOTO udtavern_unimportant
END

IF ~~ THEN BEGIN udtavern_unimportant
SAY @2079 = @2075
IF ~~ THEN EXIT
END

IF ~Global("PhaereJob","GLOBAL",1)
Global("E3DIDUDTAVERNTALK","LOCALS",2)
AreaCheck("AR2203")
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN udtavern2_start
SAY @2080
IF ~~ THEN REPLY @2081 DO ~SetGlobal("E3DIDUDTAVERNTALK","LOCALS",3)~ GOTO udtavern2_necessary
IF ~~ THEN REPLY @2082 DO ~SetGlobal("E3DIDUDTAVERNTALK","LOCALS",3)~ GOTO udtavern2_atmosphere
END

IF ~~ THEN BEGIN udtavern2_necessary
SAY @2083
IF ~~ THEN REPLY @2084 GOTO udtavern2_atmosphere
IF ~~ THEN REPLY @2085 GOTO udtavern2_atmosphere
END

IF ~~ THEN BEGIN udtavern2_atmosphere
SAY @2086 = @2087 = @2088 = @2089 = @2090 = @2091 = @2092
IF ~~ THEN REPLY @2093 GOTO udtavern2_temptation
IF ~~ THEN REPLY @2094 GOTO udtavern2_temptation
IF ~~ THEN REPLY @2095 GOTO udtavern2_away
IF ~~ THEN REPLY @2096 GOTO udtavern2_evil
END

IF ~~ THEN BEGIN udtavern2_temptation
SAY @2097
IF ~~ THEN REPLY @2098 GOTO udtavern2_shock
IF ~~ THEN REPLY @2099 GOTO udtavern2_denial
IF ~~ THEN REPLY @2100 GOTO udtavern2_regret
END

IF ~~ THEN BEGIN udtavern2_away
SAY @2101
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN udtavern2_evil
SAY @2102 = @2103
IF ~~ THEN REPLY @2104 GOTO udtavern2_seduction
IF ~~ THEN REPLY @2105 GOTO udtavern2_horror
END

IF ~~ THEN BEGIN udtavern2_shock
SAY @2106 = @2107 = @2108
IF ~~ THEN REPLY @2109 GOTO udtavern2_rest
IF ~~ THEN REPLY @2110 GOTO udtavern2_away
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN REPLY @2111 GOTO udtavern2_disinterest
END

IF ~~ THEN BEGIN udtavern2_denial
SAY @2112 = @2113
IF ~~ THEN REPLY @2114 GOTO udtavern2_rest
IF ~~ THEN REPLY @2115 GOTO udtavern2_kill
END

IF ~~ THEN BEGIN udtavern2_regret
SAY @2116
IF ~~ THEN REPLY @2117 GOTO udtavern2_kill
IF ~~ THEN REPLY @2118 GOTO udtavern2_rest
END

IF ~~ THEN BEGIN udtavern2_seduction
SAY @2119 = @2120
IF ~~ THEN REPLY @2121 GOTO udtavern2_away
IF ~~ THEN REPLY @2122 GOTO udtavern2_rest
END

IF ~~ THEN BEGIN udtavern2_horror
SAY @2123 = @2120
IF ~~ THEN REPLY @2121 GOTO udtavern2_away
IF ~~ THEN REPLY @2124 GOTO udtavern2_rest
IF ~~ THEN REPLY @2125 GOTO udtavern2_totallyevil
END

IF ~~ THEN BEGIN udtavern2_rest
SAY @2126
IF ~~ THEN REPLY @2127 DO ~RestParty()~ EXIT
IF ~~ THEN REPLY @2128 DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN udtavern2_disinterest
SAY @2129
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN udtavern2_kill
SAY @2130 = @2131
IF ~~ THEN REPLY @2114 GOTO udtavern2_rest
IF ~~ THEN REPLY @2121 GOTO udtavern2_away
END                                       

IF ~~ THEN BEGIN udtavern2_totallyevil
SAY @2132 = @2133
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~Global("E3DIDSVIRFTALK","LOCALS",1)
Global("Chapter","GLOBAL",17)
AreaCheck("AR2100")
Range("udsvir04",15)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN svirf_start
SAY @2134
IF ~~ THEN REPLY @2135 DO ~SetGlobal("E3DIDSVIRFTALK","LOCALS",2)~ GOTO svirf_understatement
IF ~~ THEN REPLY @2136 DO ~SetGlobal("E3DIDSVIRFTALK","LOCALS",2)~ GOTO svirf_know
IF ~~ THEN REPLY @2137 DO ~SetGlobal("E3DIDSVIRFTALK","LOCALS",2)~ GOTO svirf_reassure
END

IF ~~ THEN BEGIN svirf_understatement
SAY @2138
IF ~~ THEN REPLY @2139 GOTO svirf_scared
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN REPLY @2140 GOTO svirf_along
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @2140 GOTO svirf_along_2
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN REPLY @2141 GOTO svirf_alright
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @2141 GOTO svirf_alright_2
END

IF ~~ THEN BEGIN svirf_know
SAY @2142
IF ~~ THEN REPLY @2139 GOTO svirf_scared
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN REPLY @2140 GOTO svirf_along
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @2140 GOTO svirf_along_2
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN REPLY @2141 GOTO svirf_alright
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @2141 GOTO svirf_alright_2
END

IF ~~ THEN BEGIN svirf_reassure
SAY @2143
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN REPLY @2144 GOTO svirf_along
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @2140 GOTO svirf_along_2
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN REPLY @2145 GOTO svirf_fine
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @2141 GOTO svirf_fine_2
IF ~~ THEN REPLY @2146 GOTO svirf_scared
END

IF ~~ THEN BEGIN svirf_scared
SAY @2147
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @2148 GOTO svirf_here
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN REPLY @2149 GOTO svirf_fine
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @2141 GOTO svirf_fine_2
END

IF ~~ THEN BEGIN svirf_along
SAY @2150 = @2151
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN svirf_alright
SAY @2152 = @2151
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN svirf_fine
SAY @2153 = @2154
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN svirf_along_2
SAY @2155 = @2156
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN svirf_alright_2
SAY @2152 = @2157
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN svirf_fine_2
SAY @2153 = @2158
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN svirf_here
SAY @2159
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~Global("udDoneDuty","AR2400",1)
Global("E3DIDMINDFLAYERTALK","LOCALS",0)
AreaCheck("AR2400")
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN mindflayer_start
SAY @2197
IF ~~ THEN REPLY @2198 DO ~SetGlobal("E3DIDMINDFLAYERTALK","LOCALS",1)~ EXIT
IF ~~ THEN REPLY @2199 DO ~SetGlobal("E3DIDMINDFLAYERTALK","LOCALS",1)~ GOTO mindflayer_touch
END

IF ~~ THEN BEGIN mindflayer_touch
SAY @2200
IF ~~ THEN REPLY @2201 GOTO mindflayer_okay
IF ~~ THEN REPLY @2202 GOTO mindflayer_insane
END

IF ~~ THEN BEGIN mindflayer_okay
SAY @2203
IF ~~ THEN REPLY @2204 GOTO mindflayer_slaves
IF ~~ THEN REPLY @2205 GOTO mindflayer_hug
END

IF ~~ THEN BEGIN mindflayer_insane
SAY @2206
IF ~~ THEN REPLY @2204 GOTO mindflayer_slaves
IF ~~ THEN REPLY @2205 GOTO mindflayer_hug
END

IF ~~ THEN BEGIN mindflayer_slaves
SAY @2207
IF ~~ THEN REPLY @2208 GOTO mindflayer_calm
IF ~~ THEN REPLY @2209 GOTO mindflayer_getout
END

IF ~~ THEN BEGIN mindflayer_hug
SAY @2210
IF ~~ THEN REPLY @2211 GOTO mindflayer_calm
END

IF ~~ THEN BEGIN mindflayer_calm
SAY @2212 = @2213
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN mindflayer_getout
SAY @2214 = @2213
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",2)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt2_1
SAY @156
IF ~~ THEN REPLY @157 GOTO lt2_info
IF ~~ THEN REPLY @158 GOTO lt2_later
IF ~~ THEN REPLY @159 GOTO lt2_insult
IF ~~ THEN REPLY @160 GOTO lt2_annoyance
END

IF ~~ THEN BEGIN lt2_info
SAY @161
IF ~~ THEN REPLY @162 GOTO lt2_sister
IF ~~ THEN REPLY @163 GOTO lt2_honour
IF ~~ THEN REPLY @164 GOTO lt2_uninterest
END

IF ~~ THEN BEGIN lt2_sister
SAY @173
IF ~~ THEN REPLY @174 GOTO lt2_abandon
IF ~~ THEN REPLY @175 GOTO lt2_location
IF ~~ THEN REPLY @176 GOTO lt2_insufferable
IF ~~ THEN REPLY @177 GOTO lt2_owe
END

IF ~~ THEN BEGIN lt2_abandon
SAY @188
IF ~~ THEN REPLY @189 EXIT
IF ~~ THEN REPLY @190 GOTO lt2_incarceration
END

IF ~~ THEN BEGIN lt2_incarceration
SAY @203 = @204
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_location
SAY @191
IF ~~ THEN REPLY @192 GOTO lt2_suffer
IF ~~ THEN REPLY @193 GOTO lt2_wizards
END

IF ~~ THEN BEGIN lt2_suffer
SAY @205 = @206
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_wizards
SAY @207 = @208
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_insufferable
SAY @194
IF ~~ THEN REPLY @195 EXIT
IF ~~ THEN REPLY @196 GOTO lt2_owe
END

IF ~~ THEN BEGIN lt2_owe
SAY @197 = @198
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_honour
SAY @181
IF ~~ THEN REPLY @182 GOTO lt2_friend
IF ~~ THEN REPLY @183 GOTO lt2_rescue
END

IF ~~ THEN BEGIN lt2_friend
SAY @199 = @200
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_rescue
SAY @201 = @202
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt2_uninterest
SAY @178
IF ~~ THEN REPLY @179 GOTO lt2_stop
IF ~~ THEN REPLY @180 GOTO lt2_sister
END

IF ~~ THEN BEGIN lt2_stop
SAY @169
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt2_later
SAY @165
IF ~~ THEN REPLY @166 GOTO lt2_info
IF ~~ THEN REPLY @167 GOTO lt2_uninterest
IF ~~ THEN REPLY @168 GOTO lt2_insult
END

IF ~~ THEN BEGIN lt2_insult
SAY @169
IF ~~ THEN REPLY @170 GOTO lt2_allofthis
IF ~~ THEN REPLY @171 DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt2_allofthis
SAY @184
IF ~~ THEN REPLY @185 GOTO lt2_sister
IF ~~ THEN REPLY @186 GOTO lt2_uninterest
IF ~~ THEN REPLY @187 GOTO lt2_honour
END

IF ~~ THEN BEGIN lt2_annoyance
SAY @172
IF ~~ THEN REPLY @170 GOTO lt2_allofthis
IF ~~ THEN REPLY @171 DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",4)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt4_start
SAY @209
IF ~~ THEN REPLY @210 GOTO lt4_1a
IF ~~ THEN REPLY @284 GOTO lt4_2a
IF ~~ THEN REPLY @211 GOTO lt4_3c
END

IF ~~ THEN BEGIN lt4_1a
SAY @212
IF ~~ THEN REPLY @213 GOTO lt4_1b
IF ~~ THEN REPLY @214 GOTO lt4_1c
IF ~~ THEN REPLY @215 GOTO lt4_1d
IF ~~ THEN REPLY @216 GOTO lt4_1e
END

IF ~~ THEN BEGIN lt4_1b
SAY @217
IF ~~ THEN REPLY @218 GOTO lt4_1f
IF ~~ THEN REPLY @219 GOTO lt4_1g
IF ~~ THEN REPLY @220 GOTO lt4_1h
END

IF ~~ THEN BEGIN lt4_1c
SAY @221
IF ~~ THEN REPLY @222 GOTO lt4_1i
IF ~~ THEN REPLY @223 GOTO lt4_1j
IF ~~ THEN REPLY @224 GOTO lt4_1k
END

IF ~~ THEN BEGIN lt4_1d
SAY @225
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_1e
SAY @226 = @227
IF ~~ THEN REPLY @228 GOTO lt4_1l
IF ~~ THEN REPLY @229 GOTO lt4_4a
IF ~~ THEN REPLY @230 GOTO lt4_1m
END

IF ~~ THEN BEGIN lt4_1f
SAY @231 = @232
IF ~~ THEN REPLY @233 GOTO lt4_1n
IF ~~ THEN REPLY @234 GOTO lt4_1n
IF ~~ THEN REPLY @235 GOTO lt4_1p
END

IF ~~ THEN BEGIN lt4_1g
SAY @236
IF ~~ THEN REPLY @237 GOTO lt4_4a
IF ~~ THEN REPLY @238 GOTO lt4_1q
END

IF ~~ THEN BEGIN lt4_1h
SAY @239
IF ~~ THEN REPLY @240 GOTO lt4_1n
IF ~~ THEN REPLY @241 GOTO lt4_1n
IF ~~ THEN REPLY @242 GOTO lt4_1p
END

IF ~~ THEN BEGIN lt4_1i
SAY @243
IF ~~ THEN REPLY @244 GOTO lt4_1n
IF ~~ THEN REPLY @245 GOTO lt4_1p
IF ~~ THEN REPLY @246 GOTO lt4_1r
IF ~~ THEN REPLY @247 GOTO lt4_1n
END

IF ~~ THEN BEGIN lt4_1j
SAY @248 
IF ~~ THEN REPLY @249 GOTO lt4_1s
IF ~~ THEN REPLY @250 GOTO lt4_1n
END

IF ~~ THEN BEGIN lt4_1k
SAY @251 = @252
IF ~~ THEN REPLY @253 GOTO lt4_1t
IF ~~ THEN REPLY @254 GOTO lt4_4b
END

IF ~~ THEN BEGIN lt4_1l
SAY @255
IF ~~ THEN REPLY @256 GOTO lt4_1n
IF ~~ THEN REPLY @257 GOTO lt4_1u
IF ~~ THEN REPLY @258 GOTO lt4_1r
END

IF ~~ THEN BEGIN lt4_1m
SAY @259 = @260
IF ~~ THEN REPLY @256 GOTO lt4_1n
IF ~~ THEN REPLY @257 GOTO lt4_1u
IF ~~ THEN REPLY @258 GOTO lt4_1r
END

IF ~~ THEN BEGIN lt4_1n
SAY @261
IF ~~ THEN REPLY @262 GOTO lt4_1r
IF ~~ THEN REPLY @263 GOTO lt4_4a
IF ~~ THEN REPLY @264 GOTO lt4_1v
END

IF ~~ THEN BEGIN lt4_1p
SAY @265
IF ~~ THEN REPLY @266 GOTO lt4_1r
IF ~~ THEN REPLY @267 GOTO lt4_1v
END

IF ~~ THEN BEGIN lt4_1q
SAY @268
IF ~~ THEN REPLY @256 GOTO lt4_1n
IF ~~ THEN REPLY @250 GOTO lt4_1n
IF ~~ THEN REPLY @242 GOTO lt4_1p
END

IF ~~ THEN BEGIN lt4_1r
SAY @269
IF ~~ THEN REPLY @270 GOTO lt4_4c
IF ~~ THEN REPLY @271 GOTO lt4_4b
END

IF ~~ THEN BEGIN lt4_1s
SAY @285
IF ~~ THEN REPLY @262 GOTO lt4_1r
IF ~~ THEN REPLY @264 GOTO lt4_1v
END

IF ~~ THEN BEGIN lt4_1t
SAY @272
IF ~~ THEN REPLY @273 GOTO lt4_4c
END

IF ~~ THEN BEGIN lt4_1u
SAY @274
IF ~~ THEN REPLY @270 GOTO lt4_4c
IF ~~ THEN REPLY @271 GOTO lt4_4b
END

IF ~~ THEN BEGIN lt4_1v
SAY @275
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_2a
SAY @276
IF ~~ THEN REPLY @277 GOTO lt4_1a
IF ~~ THEN REPLY @278 GOTO lt4_4a
END

IF ~~ THEN BEGIN lt4_3c
SAY @279
IF ~~ THEN REPLY @277 GOTO lt4_1a
IF ~~ THEN REPLY @280 GOTO lt4_4a
END

IF ~~ THEN BEGIN lt4_4a
SAY @281
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt4_4b
SAY @282
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4_4c
SAY @283
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",6)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt6_start
SAY @286
IF ~~ THEN REPLY @287 GOTO lt6_worry
IF ~~ THEN REPLY @288 GOTO lt6_feyri
IF ~~ THEN REPLY @289 GOTO lt6_elves
END

IF ~~ THEN BEGIN lt6_worry
SAY @290
IF ~~ THEN REPLY @291 GOTO lt6_curious
IF ~~ THEN REPLY @292 GOTO lt6_elves
END

IF ~~ THEN BEGIN lt6_feyri
SAY @293
IF ~~ THEN REPLY @294 GOTO lt6_heritage
IF ~~ THEN REPLY @295 GOTO lt6_demonic
IF ~~ THEN REPLY @296 GOTO lt6_meet
END

IF ~~ THEN BEGIN lt6_elves
SAY @297
IF ~~ THEN REPLY @298 GOTO lt6_heritage
IF ~~ THEN REPLY @299 GOTO lt6_demonic
IF ~~ THEN REPLY @300 GOTO lt6_meet
END

IF ~~ THEN BEGIN lt6_curious
SAY @301
IF ~~ THEN REPLY @302 GOTO lt6_heritage
IF ~~ THEN REPLY @303 GOTO lt6_demonic
IF ~~ THEN REPLY @304 GOTO lt6_meet
END

IF ~~ THEN BEGIN lt6_heritage
SAY @305 = @306
IF ~~ THEN REPLY @307 GOTO lt6_evil
IF ~~ THEN REPLY @308 GOTO lt6_surprise
IF ~~ THEN REPLY @309 GOTO lt6_judge
IF ~~ THEN REPLY @310 GOTO lt6_shock
END

IF ~~ THEN BEGIN lt6_demonic
SAY @311 = @306
IF ~~ THEN REPLY @312 GOTO lt6_surprise
IF ~~ THEN REPLY @313 GOTO lt6_evil
IF ~~ THEN REPLY @314 GOTO lt6_judge
IF ~~ THEN REPLY @315 GOTO lt6_shock
END

IF ~~ THEN BEGIN lt6_meet
SAY @316
IF ~~ THEN REPLY @317 GOTO lt6_bother
IF ~~ THEN REPLY @318 GOTO lt6_interest
END

IF ~~ THEN BEGIN lt6_evil
SAY @319
IF ~~ THEN REPLY @320 GOTO lt6_excuse
IF ~~ THEN REPLY @321 GOTO lt6_different
END

IF ~~ THEN BEGIN lt6_surprise
SAY @322
IF ~~ THEN REPLY @323 GOTO lt6_tease
IF ~~ THEN REPLY @324 GOTO lt6_judge
IF ~~ THEN REPLY @325 GOTO lt6_matters
IF ~~ THEN REPLY @326 GOTO lt6_advantage
END

IF ~~ THEN BEGIN lt6_judge
SAY @327
IF ~~ THEN REPLY @328 GOTO lt6_trust
IF ~~ THEN REPLY @329 GOTO lt6_honest
IF ~~ THEN REPLY @330 GOTO lt6_letsgo
END

IF ~~ THEN BEGIN lt6_shock
SAY @331 = @332
IF ~~ THEN REPLY @333 GOTO lt6_goaway
IF ~~ THEN REPLY @334 GOTO lt6_hasty
IF ~~ THEN REPLY @335 GOTO lt6_stayaway
END

IF ~~ THEN BEGIN lt6_bother
SAY @336
IF ~~ THEN REPLY @312 GOTO lt6_surprise
IF ~~ THEN REPLY @337 GOTO lt6_evil
IF ~~ THEN REPLY @314 GOTO lt6_judge
IF ~~ THEN REPLY @338 GOTO lt6_shock
END

IF ~~ THEN BEGIN lt6_interest
SAY @339
IF ~~ THEN REPLY @340 GOTO lt6_evil
IF ~~ THEN REPLY @341 GOTO lt6_abyss
IF ~~ THEN REPLY @342 GOTO lt6_yet
END

IF ~~ THEN BEGIN lt6_excuse
SAY @343
IF ~~ THEN REPLY @344 GOTO lt6_different
IF ~~ THEN REPLY @386 GOTO lt6_exterminate
IF ~~ THEN REPLY @345 GOTO lt6_tease
END

IF ~~ THEN BEGIN lt6_different
SAY @346
IF ~~ THEN REPLY @347 GOTO lt6_compassion
IF ~~ THEN REPLY @348 GOTO lt6_experience
END

IF ~~ THEN BEGIN lt6_exterminate
SAY @349
IF ~~ THEN REPLY @350 GOTO lt6_action
IF ~~ THEN REPLY @351 GOTO lt6_easy
END

IF ~~ THEN BEGIN lt6_tease
SAY @352
IF ~~ THEN REPLY @347 GOTO lt6_compassion
IF ~~ THEN REPLY @348 GOTO lt6_experience
END

IF ~~ THEN BEGIN lt6_matters
SAY @353 = @354
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_advantage
SAY @355 = @356
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_trust
SAY @357 = @358
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_honest
SAY @359 = @360
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_hasty
SAY @361 = @362
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_stayaway
SAY @363
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0307",4836,2136,6)~ EXIT
END

IF ~~ THEN BEGIN lt6_abyss
SAY @364
IF ~~ THEN REPLY @365 GOTO lt6_different
END

IF ~~ THEN BEGIN lt6_yet
SAY @366 = @367
IF ~~ THEN REPLY @368 GOTO lt6_buttout
IF ~~ THEN REPLY @369 GOTO lt6_concern
END

IF ~~ THEN BEGIN lt6_compassion
SAY @370 = @371
IF ~~ THEN REPLY @372 GOTO lt6_what
END

IF ~~ THEN BEGIN lt6_experience
SAY @373 = @374
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_action
SAY @375
IF ~~ THEN REPLY @376 GOTO lt6_dare
IF ~~ THEN REPLY @377 GOTO lt6_easy
END

IF ~~ THEN BEGIN lt6_easy
SAY @378 = @379
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_what
SAY @380
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_letsgo
SAY @381
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_goaway
SAY @382
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",0)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0307",4836,2136,6)~ EXIT
END

IF ~~ THEN BEGIN lt6_buttout
SAY @383
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt6_concern
SAY @384
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt6_dare
SAY @385
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",8)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt8_start
SAY @387
IF ~~ THEN REPLY @388 GOTO lt8_childhood
IF ~~ THEN REPLY @389 GOTO lt8_delayed
IF ~~ THEN REPLY @390 GOTO lt8_nerves
END

IF ~~ THEN BEGIN lt8_childhood
SAY @391
IF ~~ THEN REPLY @392 GOTO lt8_perception
IF ~~ THEN REPLY @393 GOTO lt8_issue
IF ~~ THEN REPLY @394 GOTO lt8_heritage
IF ~~ THEN REPLY @395 GOTO lt8_pester
END

IF ~~ THEN BEGIN lt8_delayed
SAY @396
IF ~~ THEN REPLY @397 GOTO lt8_rude
IF ~~ THEN REPLY @398 GOTO lt8_selfabsorbed
IF ~~ THEN REPLY @399 GOTO lt8_offended
END

IF ~~ THEN BEGIN lt8_nerves
SAY @400
IF ~~ THEN REPLY @401 GOTO lt8_yourself
IF ~~ THEN REPLY @402 GOTO lt8_got
END

IF ~~ THEN BEGIN lt8_perception
SAY @403 = @404
IF ~~ THEN REPLY @405 GOTO lt8_father
IF ~~ THEN REPLY @406 GOTO lt8_left
IF ~~ THEN REPLY @407 GOTO lt8_impulse
IF ~~ THEN REPLY @408 GOTO lt8_slaughter
END

IF ~~ THEN BEGIN lt8_issue
SAY @409
IF ~~ THEN REPLY @410 GOTO lt8_god
IF ~~ THEN REPLY @411 GOTO lt8_future
IF ~~ THEN REPLY @412 GOTO lt8_couldve
END

IF ~~ THEN BEGIN lt8_heritage
SAY @413
IF ~~ THEN REPLY @414 GOTO lt8_father
IF ~~ THEN REPLY @415 GOTO lt8_impulse
IF ~~ THEN REPLY @416 GOTO lt8_left
END

IF ~~ THEN BEGIN lt8_pester
SAY @417
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt8_rude
SAY @418
IF ~~ THEN REPLY @392 GOTO lt8_perception
IF ~~ THEN REPLY @393 GOTO lt8_issue
IF ~~ THEN REPLY @394 GOTO lt8_heritage
IF ~~ THEN REPLY @395 GOTO lt8_pester
END

IF ~~ THEN BEGIN lt8_selfabsorbed
SAY @419
IF ~~ THEN REPLY @420 GOTO lt8_bothered
IF ~~ THEN REPLY @421 GOTO lt8_nothing
END

IF ~~ THEN BEGIN lt8_offended
SAY @422 = @423
IF ~~ THEN REPLY @424 GOTO lt8_perception
IF ~~ THEN REPLY @393 GOTO lt8_issue
IF ~~ THEN REPLY @425 GOTO lt8_heritage
IF ~~ THEN REPLY @426 GOTO lt8_pester
END

IF ~~ THEN BEGIN lt8_yourself
SAY @427 
IF ~~ THEN REPLY @428 GOTO lt8_me
IF ~~ THEN REPLY @429 GOTO lt8_gladly
END

IF ~~ THEN BEGIN lt8_father
SAY @430
IF ~~ THEN REPLY @431 GOTO lt8_wish
IF ~~ THEN REPLY @432 GOTO lt8_future
IF ~~ THEN REPLY @433 GOTO lt8_upbringing
END

IF ~~ THEN BEGIN lt8_left
SAY @434
IF ~~ THEN REPLY @435 GOTO lt8_sympathy
IF ~~ THEN REPLY @436 GOTO lt8_abandon
IF ~~ THEN REPLY @433 GOTO lt8_upbringing
END

IF ~~ THEN BEGIN lt8_impulse
SAY @437 = @438
IF ~~ THEN REPLY @439 GOTO lt8_uncomfortable
IF ~~ THEN REPLY @440 GOTO lt8_why
IF ~~ THEN REPLY @441 GOTO lt8_scared
IF ~~ THEN REPLY @442 GOTO lt8_demon
END

IF ~~ THEN BEGIN lt8_slaughter
SAY @443
IF ~~ THEN REPLY @444 GOTO lt8_upbringing
IF ~~ THEN REPLY @445 GOTO lt8_upbringing
IF ~~ THEN REPLY @446 GOTO lt8_leave
END

IF ~~ THEN BEGIN lt8_god
SAY @447 = @448
IF ~~ THEN REPLY @449 GOTO lt8_father
IF ~~ THEN REPLY @450 GOTO lt8_father
IF ~~ THEN REPLY @451 GOTO lt8_left
END

IF ~~ THEN BEGIN lt8_future
SAY @452
IF ~~ THEN REPLY @453 GOTO lt8_upbringing
IF ~~ THEN REPLY @454 GOTO lt8_courage
END

IF ~~ THEN BEGIN lt8_couldve
SAY @455 = @438
IF ~~ THEN REPLY @439 GOTO lt8_uncomfortable
IF ~~ THEN REPLY @440 GOTO lt8_why
IF ~~ THEN REPLY @441 GOTO lt8_scared
IF ~~ THEN REPLY @442 GOTO lt8_demon
END

IF ~~ THEN BEGIN lt8_bothered
SAY @456 = @457
IF ~~ THEN REPLY @392 GOTO lt8_perception
IF ~~ THEN REPLY @393 GOTO lt8_issue
IF ~~ THEN REPLY @394 GOTO lt8_heritage
IF ~~ THEN REPLY @395 GOTO lt8_pester
END

IF ~~ THEN BEGIN lt8_nothing
SAY @458
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt8_me
SAY @459 
IF ~~ THEN REPLY @460 GOTO lt8_perception
IF ~~ THEN REPLY @461 GOTO lt8_heritage
IF ~~ THEN REPLY @462 GOTO lt8_pester
END

IF ~~ THEN BEGIN lt8_gladly
SAY @463
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt8_wish
SAY @464
IF ~~ THEN REPLY @465 GOTO lt8_sympathy
IF ~~ THEN REPLY @466 GOTO lt8_upbringing
END

IF ~~ THEN BEGIN lt8_upbringing
SAY @467 = @468 = @469
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt8_leave
SAY @470
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt8_sympathy
SAY @471
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt8_abandon
SAY @472 = @473
IF ~~ THEN REPLY @474 GOTO lt8_do
IF ~~ THEN REPLY @475 GOTO lt8_upbringing
IF ~~ THEN REPLY @476 GOTO lt8_mind
END

IF ~~ THEN BEGIN lt8_uncomfortable
SAY @477
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt8_why
SAY @478
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt8_scared
SAY @479 = @480
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt8_demon
SAY @481 = @482
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt8_mind
SAY @483
IF ~~ THEN REPLY @484 GOTO lt8_upbringing
IF ~~ THEN REPLY @485 GOTO lt8_upbringing
IF ~~ THEN REPLY @446 GOTO lt8_leave
END

IF ~~ THEN BEGIN lt8_got
SAY @486
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt8_courage
SAY @487
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt8_do
SAY @488
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",10)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt10_start
SAY @489 = @490
IF ~~ THEN REPLY @491 GOTO lt10_waned
IF ~~ THEN REPLY @492 GOTO lt10_childhood
END

IF ~~ THEN BEGIN lt10_waned
SAY @493 = @494
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt10_childhood
SAY @495
IF ~~ THEN REPLY @496 GOTO lt10_horrible
IF ~~ THEN REPLY @497 GOTO lt10_siblings
IF ~~ THEN REPLY @498 GOTO lt10_comparison
END

IF ~~ THEN BEGIN lt10_horrible
SAY @499
IF ~~ THEN REPLY @500 GOTO lt10_siblings
IF ~~ THEN REPLY @501 GOTO lt10_comparison
IF ~~ THEN REPLY @502 GOTO lt10_sorry
END

IF ~~ THEN BEGIN lt10_siblings
SAY @503 = @504
IF ~~ THEN REPLY @505 GOTO lt10_killed
IF ~~ THEN REPLY @506 GOTO lt10_brother
IF ~~ THEN REPLY @507 GOTO lt10_prolific
END

IF ~~ THEN BEGIN lt10_comparison
SAY @508 = @509
IF ~~ THEN REPLY @510 GOTO lt10_siblings
IF ~~ THEN REPLY @511 GOTO lt10_insane
END

IF ~~ THEN BEGIN lt10_sorry
SAY @512
IF ~~ THEN REPLY @510 GOTO lt10_siblings
IF ~~ THEN REPLY @511 GOTO lt10_insane
END

IF ~~ THEN BEGIN lt10_killed
SAY @513 
IF ~~ THEN REPLY @514 GOTO lt10_wrench
IF ~~ THEN REPLY @515 GOTO lt10_threat
IF ~~ THEN REPLY @516 GOTO lt10_brother
IF ~~ THEN REPLY @517 GOTO lt10_murder
END

IF ~~ THEN BEGIN lt10_brother
SAY @518 = @519
IF ~~ THEN REPLY @520 GOTO lt10_insane
IF ~~ THEN REPLY @521 GOTO lt10_threat
END

IF ~~ THEN BEGIN lt10_prolific
SAY @522
IF ~~ THEN REPLY @523 GOTO lt10_threat
IF ~~ THEN REPLY @524 GOTO lt10_murder
END

IF ~~ THEN BEGIN lt10_insane
SAY @525 = @526
IF ~~ THEN REPLY @527 GOTO lt10_riddles
IF ~~ THEN REPLY @528 GOTO lt10_no
END

IF ~~ THEN BEGIN lt10_wrench
SAY @529
IF ~~ THEN REPLY @530 GOTO lt10_murder
IF ~~ THEN REPLY @531 GOTO lt10_threat
END

IF ~~ THEN BEGIN lt10_threat
SAY @532 = @526
IF ~~ THEN REPLY @527 GOTO lt10_riddles
IF ~~ THEN REPLY @533 GOTO lt10_breed
END

IF ~~ THEN BEGIN lt10_murder
SAY @534 = @526
IF ~~ THEN REPLY @527 GOTO lt10_riddles
IF ~~ THEN REPLY @535 GOTO lt10_monster
END

IF ~~ THEN BEGIN lt10_riddles 
SAY @536
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt10_no
SAY @537
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt10_breed
SAY @538 = @539
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt10_monster
SAY @540
IF ~~ THEN REPLY @541 GOTO lt10_upset
IF ~~ THEN REPLY @542 GOTO lt10_regret
END

IF ~~ THEN BEGIN lt10_upset
SAY @543
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt10_regret
SAY @544 = @545
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",12)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt12_start
SAY @679
IF ~~ THEN REPLY @680 GOTO lt12_what
IF ~~ THEN REPLY @681 GOTO lt12_tiresome
IF ~~ THEN REPLY @682 GOTO lt12_amusing
END

IF ~~ THEN BEGIN lt12_what
SAY @683 = @684
IF ~~ THEN REPLY @685 GOTO lt12_trick
IF ~~ THEN REPLY @686 GOTO lt12_appreciate
END

IF ~~ THEN BEGIN lt12_tiresome
SAY @687
IF ~~ THEN REPLY @688 GOTO lt12_good
IF ~~ THEN REPLY @689 GOTO lt12_trick
END

IF ~~ THEN BEGIN lt12_amusing
SAY @690 = @684
IF ~~ THEN REPLY @685 GOTO lt12_trick
IF ~~ THEN REPLY @686 GOTO lt12_appreciate
END

IF ~~ THEN BEGIN lt12_trick
SAY @691 = @692
IF ~~ THEN REPLY @693 GOTO lt12_how
IF ~~ THEN REPLY @694 GOTO lt12_applaud
IF ~~ THEN REPLY @695 GOTO lt12_disappoint
END

IF ~~ THEN BEGIN lt12_appreciate
SAY @696
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_how
SAY @697
IF ~~ THEN REPLY @698 GOTO lt12_yes
IF ~~ THEN REPLY @699 GOTO lt12_flower
END

IF ~~ THEN BEGIN lt12_applaud
SAY @700
IF ~~ THEN REPLY @698 GOTO lt12_yes
IF ~~ THEN REPLY @699 GOTO lt12_flower
END

IF ~~ THEN BEGIN lt12_disappoint
SAY @701
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_yes
SAY @702 = @703 = @704 = @705 = @706
IF ~~ THEN REPLY @707 GOTO lt12_choose
IF ~~ THEN REPLY @708 GOTO lt12_coin
END

IF ~~ THEN BEGIN lt12_flower
SAY @709 = @710
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_choose
SAY @711 = @710
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_coin
SAY @712 = @713
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt12_good
SAY @714
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",14)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt14_start
SAY @1367
IF ~~ THEN REPLY @1368 GOTO lt14_recently
IF ~~ THEN REPLY @1369 GOTO lt14_surprise
IF ~~ THEN REPLY @1370 GOTO lt14_sarcasm
IF ~~ THEN REPLY @1371 GOTO lt14_alone
END

IF ~~ THEN BEGIN lt14_recently
SAY @1372
IF ~~ THEN REPLY @1373 GOTO lt14_say
IF ~~ THEN REPLY @1374 GOTO lt14_elsewhere
IF ~~ THEN REPLY @1375 GOTO lt14_sleep
END

IF ~~ THEN BEGIN lt14_surprise
SAY @1376
IF ~~ THEN REPLY @1373 GOTO lt14_say
IF ~~ THEN REPLY @1374 GOTO lt14_elsewhere
IF ~~ THEN REPLY @1375 GOTO lt14_sleep
END

IF ~~ THEN BEGIN lt14_sarcasm
SAY @1377
IF ~~ THEN REPLY @1378 GOTO lt14_stupid
IF ~~ THEN REPLY @1379 GOTO lt14_recently
IF ~~ THEN REPLY @1371 GOTO lt14_alone
END

IF ~~ THEN BEGIN lt14_alone
SAY @1380
IF ~~ THEN REPLY @1381 GOTO lt14_find
IF ~~ THEN REPLY @1382 GOTO lt14_stupid
IF ~~ THEN REPLY @1383 GOTO lt14_headaches
END

IF ~~ THEN BEGIN lt14_find
SAY @1384
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt14_say
SAY @1385
IF ~~ THEN REPLY @1386 GOTO lt14_sleep
IF ~~ THEN REPLY @1387 GOTO lt14_about
IF ~~ THEN REPLY @1388 GOTO lt14_headaches
END

IF ~~ THEN BEGIN lt14_elsewhere
SAY @1389
IF ~~ THEN REPLY @1390 GOTO lt14_headaches
IF ~~ THEN REPLY @1371 GOTO lt14_alone
IF ~~ THEN REPLY @1391 GOTO lt14_stupid
END

IF ~~ THEN BEGIN lt14_sleep
SAY @1392
IF ~~ THEN REPLY @1390 GOTO lt14_headaches
IF ~~ THEN REPLY @1371 GOTO lt14_alone
IF ~~ THEN REPLY @1391 GOTO lt14_stupid
END

IF ~~ THEN BEGIN lt14_stupid
SAY @1393
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt14_headaches
SAY @1394
IF ~~ THEN REPLY @1395 GOTO lt14_really
IF ~~ THEN REPLY @1396 GOTO lt14_alright
END

IF ~~ THEN BEGIN lt14_about
SAY @1397
IF ~~ THEN REPLY @1398 GOTO lt14_stupid
IF ~~ THEN REPLY @1399 GOTO lt14_worry
IF ~~ THEN REPLY @1400 GOTO lt14_headaches
END

IF ~~ THEN BEGIN lt14_really
SAY @1401 = @1402
IF ~~ THEN REPLY @1403 GOTO lt14_learn
IF ~~ THEN REPLY @1404 GOTO lt14_thanks
END

IF ~~ THEN BEGIN lt14_alright
SAY @1405
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt14_worry
SAY @1406
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt14_learn
SAY @1407 = @1408
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt14_thanks
SAY @1409
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",16)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt16_start
SAY @546
IF ~~ THEN REPLY @547 GOTO lt16_1a
IF ~~ THEN REPLY @548 GOTO lt16_2a
END

IF ~~ THEN BEGIN lt16_1a
SAY @549
IF ~~ THEN REPLY @550 GOTO lt16_1b
IF ~~ THEN REPLY @551 GOTO lt16_1c
END

IF ~~ THEN BEGIN lt16_1b
SAY @552
IF ~~ THEN REPLY @553 GOTO lt16_1d
IF ~~ THEN REPLY @554 GOTO lt16_1e
IF ~~ THEN REPLY @555 GOTO lt16_1f
END

IF ~~ THEN BEGIN lt16_1c
SAY @556
IF ~~ THEN REPLY @557 GOTO lt16_2b
IF ~~ THEN REPLY @558 GOTO lt16_2c
IF ~~ THEN REPLY @559 GOTO lt16_2d
END

IF ~~ THEN BEGIN lt16_1d
SAY @560
IF ~~ THEN REPLY @561 GOTO lt16_2f
IF ~~ THEN REPLY @562 GOTO lt16_1g
IF ~~ THEN REPLY @563 GOTO lt16_1h
END

IF ~~ THEN BEGIN lt16_1e
SAY @564
IF ~~ THEN REPLY @565 GOTO lt16_2o
IF ~~ THEN REPLY @566 GOTO lt16_2g
IF ~~ THEN REPLY @567 GOTO lt16_1i
IF ~~ THEN REPLY @568 GOTO lt16_2p
END

IF ~~ THEN BEGIN lt16_1f
SAY @569
IF ~~ THEN REPLY @571 GOTO lt16_2e
IF ~~ THEN REPLY @572 GOTO lt16_2f
IF ~~ THEN REPLY @573 GOTO lt16_2g
IF ~~ THEN REPLY @574 GOTO lt16_2h
END

IF ~~ THEN BEGIN lt16_1g
SAY @575
IF ~~ THEN REPLY @576 GOTO lt16_2e
IF ~~ THEN REPLY @572 GOTO lt16_2f
IF ~~ THEN REPLY @577 GOTO lt16_2g
IF ~~ THEN REPLY @578 GOTO lt16_2h
END

IF ~~ THEN BEGIN lt16_1h
SAY @579
IF ~~ THEN REPLY @576 GOTO lt16_2e
IF ~~ THEN REPLY @577 GOTO lt16_2g
IF ~~ THEN REPLY @580 GOTO lt16_2h
END

IF ~~ THEN BEGIN lt16_1i
SAY @581 = @582
IF ~~ THEN REPLY @583 GOTO lt16_2m
IF ~~ THEN REPLY @584 GOTO lt16_2n
IF ~~ THEN REPLY @585 GOTO lt16_4a
END

IF ~~ THEN BEGIN lt16_2a
SAY @586
IF ~~ THEN REPLY @557 GOTO lt16_2b
IF ~~ THEN REPLY @558 GOTO lt16_2c
IF ~~ THEN REPLY @559 GOTO lt16_2d
END

IF ~~ THEN BEGIN lt16_2b
SAY @587
IF ~~ THEN REPLY @576 GOTO lt16_2e
IF ~~ THEN REPLY @572 GOTO lt16_2f
IF ~~ THEN REPLY @577 GOTO lt16_2g
IF ~~ THEN REPLY @574 GOTO lt16_2h
END

IF ~~ THEN BEGIN lt16_2c
SAY @588
IF ~~ THEN REPLY @589 GOTO lt16_2i
IF ~~ THEN REPLY @590 GOTO lt16_2j
IF ~~ THEN REPLY @591 GOTO lt16_2k
IF ~~ THEN REPLY @592 GOTO lt16_2l
END

IF ~~ THEN BEGIN lt16_2d
SAY @593
IF ~~ THEN REPLY @576 GOTO lt16_2e
IF ~~ THEN REPLY @572 GOTO lt16_2f
IF ~~ THEN REPLY @577 GOTO lt16_2g
IF ~~ THEN REPLY @578 GOTO lt16_2h
END

IF ~~ THEN BEGIN lt16_2e
SAY @594 = @582
IF ~~ THEN REPLY @583 GOTO lt16_2m
IF ~~ THEN REPLY @584 GOTO lt16_2n
IF ~~ THEN REPLY @585 GOTO lt16_4a
END

IF ~~ THEN BEGIN lt16_2f
SAY @595
IF ~~ THEN REPLY @596 GOTO lt16_2o
IF ~~ THEN REPLY @597 GOTO lt16_2g
IF ~~ THEN REPLY @598 GOTO lt16_2e
IF ~~ THEN REPLY @568 GOTO lt16_2p
END

IF ~~ THEN BEGIN lt16_2g
SAY @599 = @600
IF ~~ THEN REPLY @601 GOTO lt16_2q
IF ~~ THEN REPLY @602 GOTO lt16_2r
IF ~~ THEN REPLY @603 GOTO lt16_2s
IF ~~ THEN REPLY @604 GOTO lt16_2t
END

IF ~~ THEN BEGIN lt16_2h
SAY @605 = @606
IF ~~ THEN REPLY @607 GOTO lt16_2u
IF ~~ THEN REPLY @608 GOTO lt16_2g
IF ~~ THEN REPLY @609 GOTO lt16_3a
END

IF ~~ THEN BEGIN lt16_2i
SAY @610 = @600
IF ~~ THEN REPLY @601 GOTO lt16_2q
IF ~~ THEN REPLY @602 GOTO lt16_2r
IF ~~ THEN REPLY @603 GOTO lt16_2s
IF ~~ THEN REPLY @604 GOTO lt16_2t
END

IF ~~ THEN BEGIN lt16_2j
SAY @611
IF ~~ THEN REPLY @596 GOTO lt16_2o
IF ~~ THEN REPLY @597 GOTO lt16_2g
IF ~~ THEN REPLY @598 GOTO lt16_2e
IF ~~ THEN REPLY @568 GOTO lt16_2p
END

IF ~~ THEN BEGIN lt16_2k
SAY @612 = @600
IF ~~ THEN REPLY @601 GOTO lt16_2q
IF ~~ THEN REPLY @602 GOTO lt16_2r
IF ~~ THEN REPLY @603 GOTO lt16_2s
IF ~~ THEN REPLY @604 GOTO lt16_2t
END

IF ~~ THEN BEGIN lt16_2l
SAY @613 = @600
IF ~~ THEN REPLY @601 GOTO lt16_2q
IF ~~ THEN REPLY @602 GOTO lt16_2r
IF ~~ THEN REPLY @603 GOTO lt16_2s
IF ~~ THEN REPLY @604 GOTO lt16_2t
END

IF ~~ THEN BEGIN lt16_2m
SAY @614
IF ~~ THEN REPLY @615 GOTO lt16_2g
IF ~~ THEN REPLY @616 GOTO lt16_2p
IF ~~ THEN REPLY @617 GOTO lt16_2h
END

IF ~~ THEN BEGIN lt16_2n
SAY @618
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt16_2o
SAY @619 = @606
IF ~~ THEN REPLY @607 GOTO lt16_2u
IF ~~ THEN REPLY @608 GOTO lt16_2g
IF ~~ THEN REPLY @609 GOTO lt16_3a
END

IF ~~ THEN BEGIN lt16_2p
SAY @620 = @621
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt16_2q
SAY @622
IF ~~ THEN REPLY @623 GOTO lt16_2p
IF ~~ THEN REPLY @624 GOTO lt16_3b
IF ~~ THEN REPLY @625 GOTO lt16_3c
IF ~~ THEN REPLY @626 GOTO lt16_2v
END

IF ~~ THEN BEGIN lt16_2r
SAY @627
IF ~~ THEN REPLY @623 GOTO lt16_2p
IF ~~ THEN REPLY @624 GOTO lt16_3b
IF ~~ THEN REPLY @625 GOTO lt16_3c
IF ~~ THEN REPLY @628 GOTO lt16_2v
END

IF ~~ THEN BEGIN lt16_2s
SAY @629
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt16_2t
SAY @630 = @631
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt16_2u
SAY @632
IF ~~ THEN REPLY @625 GOTO lt16_3c
IF ~~ THEN REPLY @633 GOTO lt16_3a
IF ~~ THEN REPLY @634 GOTO lt16_4b
END

IF ~~ THEN BEGIN lt16_2v
SAY @635 = @636
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt16_3a
SAY @637 = @638
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",0)
SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
LeaveParty()
EscapeArea()
RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt16_3b
SAY @639
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt16_3c
SAY @640 = @641
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt16_4a
SAY @642
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt16_4b
SAY @643
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",18)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt18_start
SAY @727
IF ~~ THEN REPLY @728 GOTO lt18_no
IF ~~ THEN REPLY @729 GOTO lt18_thief
IF ~~ THEN REPLY @730 GOTO lt18_possessed
END

IF ~~ THEN BEGIN lt18_no
SAY @731
IF ~~ THEN REPLY @732 GOTO lt18_serious
IF ~~ THEN REPLY @733 GOTO lt18_thief
IF ~~ THEN REPLY @734 GOTO lt18_possessed
END

IF ~~ THEN BEGIN lt18_thief
SAY @735
IF ~~ THEN REPLY @736 GOTO lt18_secret
IF ~~ THEN REPLY @737 GOTO lt18_possessed
END

IF ~~ THEN BEGIN lt18_possessed
SAY @738
IF ~~ THEN REPLY @739 GOTO lt18_club
IF ~~ THEN REPLY @740 GOTO lt18_refuse
IF ~~ THEN REPLY @741 GOTO lt18_offered
END

IF ~~ THEN BEGIN lt18_serious
SAY @742
IF ~~ THEN REPLY @733 GOTO lt18_thief
IF ~~ THEN REPLY @734 GOTO lt18_possessed
END

IF ~~ THEN BEGIN lt18_secret
SAY @743
IF ~~ THEN REPLY @744 GOTO lt18_exist
IF ~~ THEN REPLY @745 GOTO lt18_aran
IF ~~ THEN REPLY @746 GOTO lt18_proud
END

IF ~~ THEN BEGIN lt18_club
SAY @747 = @748 = @749
IF ~~ THEN REPLY @750 GOTO lt18_convinced
IF ~~ THEN REPLY @751 GOTO lt18_ultimatum
END

IF ~~ THEN BEGIN lt18_refuse
SAY @752 = @748 = @749
IF ~~ THEN REPLY @750 GOTO lt18_convinced
IF ~~ THEN REPLY @751 GOTO lt18_ultimatum
END

IF ~~ THEN BEGIN lt18_offered
SAY @753 = @748 = @749
IF ~~ THEN REPLY @750 GOTO lt18_convinced
IF ~~ THEN REPLY @751 GOTO lt18_ultimatum
END

IF ~~ THEN BEGIN lt18_exist
SAY @754
IF ~~ THEN REPLY @755 GOTO lt18_refuse
END

IF ~~ THEN BEGIN lt18_aran
SAY @756
IF ~~ THEN REPLY @757 GOTO lt18_authority
IF ~~ THEN REPLY @758 GOTO lt18_refuse
END

IF ~~ THEN BEGIN lt18_proud
SAY @759
IF ~~ THEN REPLY @760 GOTO lt18_crimerate
IF ~~ THEN REPLY @761 GOTO lt18_offered
END

IF ~~ THEN BEGIN lt18_convinced
SAY @762
IF ~~ THEN REPLY @763 GOTO lt18_rot
IF ~~ THEN REPLY @764 GOTO lt18_ultimatum
END

IF ~~ THEN BEGIN lt18_ultimatum
SAY @765
IF ~~ THEN REPLY @766 GOTO lt18_rot
END

IF ~~ THEN BEGIN lt18_authority
SAY @767
IF ~~ THEN REPLY @768 GOTO lt18_smut
IF ~~ THEN REPLY @769 GOTO lt18_refuse
END

IF ~~ THEN BEGIN lt18_crimerate
SAY @770
IF ~~ THEN REPLY @771 GOTO lt18_aran
IF ~~ THEN REPLY @772 GOTO lt18_slave
END

IF ~~ THEN BEGIN lt18_rot
SAY @773 = @774
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt18_smut
SAY @775
IF ~~ THEN REPLY @776 GOTO lt18_rot
IF ~~ THEN REPLY @777 GOTO lt18_slave
END

IF ~~ THEN BEGIN lt18_slave
SAY @778 = @774
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",20)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt20_start
SAY @779
IF ~~ THEN REPLY @780 GOTO lt20_reasons
IF ~~ THEN REPLY @781 GOTO lt20_enough
IF ~~ THEN REPLY @782 GOTO lt20_angry
END

IF ~~ THEN BEGIN lt20_reasons
SAY @783
IF ~~ THEN REPLY @784 GOTO lt20_angry
END

IF ~~ THEN BEGIN lt20_enough
SAY @785 
IF ~~ THEN REPLY @786 GOTO lt20_angry
IF ~~ THEN REPLY @787 GOTO lt20_explain
IF ~~ THEN REPLY @788 GOTO lt20_bug
END

IF ~~ THEN BEGIN lt20_bug
SAY @789 
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt20_angry
SAY @790
IF ~~ THEN REPLY @791 GOTO lt20_conscience
IF ~~ THEN REPLY @792 GOTO lt20_thief
END

IF ~~ THEN BEGIN lt20_explain
SAY @793
IF ~~ THEN REPLY @791 GOTO lt20_conscience
IF ~~ THEN REPLY @792 GOTO lt20_thief
IF ~~ THEN REPLY @794 GOTO lt20_bug
END

IF ~~ THEN BEGIN lt20_conscience
SAY @795
IF ~~ THEN REPLY @796 GOTO lt20_trouble
IF ~~ THEN REPLY @797 GOTO lt20_stop
IF ~~ THEN REPLY @798 GOTO lt20_blindeye
END

IF ~~ THEN BEGIN lt20_thief
SAY @799
IF ~~ THEN REPLY @796 GOTO lt20_trouble
IF ~~ THEN REPLY @797 GOTO lt20_stop
IF ~~ THEN REPLY @798 GOTO lt20_blindeye
END

IF ~~ THEN BEGIN lt20_trouble
SAY @800
IF ~~ THEN REPLY @801 GOTO lt20_leave
IF ~~ THEN REPLY @802 GOTO lt20_leave
IF ~~ THEN REPLY @803 GOTO lt20_joined
END

IF ~~ THEN BEGIN lt20_stop
SAY @804
IF ~~ THEN REPLY @805 GOTO lt20_simple
IF ~~ THEN REPLY @806 GOTO lt20_leave
IF ~~ THEN REPLY @803 GOTO lt20_joined
END

IF ~~ THEN BEGIN lt20_blindeye
SAY @807
IF ~~ THEN REPLY @808 GOTO lt20_leave
IF ~~ THEN REPLY @809 GOTO lt20_joined
END

IF ~~ THEN BEGIN lt20_leave
SAY @810
IF ~~ THEN REPLY @811 GOTO lt20_security
IF ~~ THEN REPLY @812 GOTO lt20_weak
IF ~~ THEN REPLY @813 GOTO lt20_simple
END

IF ~~ THEN BEGIN lt20_joined
SAY @814 = @815
IF ~~ THEN REPLY @811 GOTO lt20_security
IF ~~ THEN REPLY @812 GOTO lt20_weak
IF ~~ THEN REPLY @813 GOTO lt20_simple
END

IF ~~ THEN BEGIN lt20_simple
SAY @816
IF ~~ THEN REPLY @817 GOTO lt20_standby
IF ~~ THEN REPLY @818 GOTO lt20_commodity
IF ~~ THEN REPLY @819 GOTO lt20_happen
END

IF ~~ THEN BEGIN lt20_security
SAY @820 = @821
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt20_weak
SAY @822 = @823 = @824
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt20_standby
SAY @825 = @826 = @821
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt20_commodity
SAY @827
IF ~~ THEN REPLY @828 GOTO lt20_weak
IF ~~ THEN REPLY @829 GOTO lt20_standby
END

IF ~~ THEN BEGIN lt20_happen
SAY @830 = @824
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",22)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt22_start
SAY @831
IF ~~ THEN REPLY @832 EXIT
IF ~~ THEN REPLY @833 GOTO lt22_thoughts
IF ~~ THEN REPLY @834 GOTO lt22_attention
END

IF ~~ THEN BEGIN lt22_thoughts
SAY @835
IF ~~ THEN REPLY @836 GOTO lt22_travel
IF ~~ THEN REPLY @837 GOTO lt22_explore
IF ~~ THEN REPLY @838 GOTO lt22_home
END

IF ~~ THEN BEGIN lt22_attention
SAY @839
IF ~~ THEN REPLY @836 GOTO lt22_travel
IF ~~ THEN REPLY @837 GOTO lt22_explore
IF ~~ THEN REPLY @838 GOTO lt22_home
IF ~~ THEN REPLY @840 GOTO lt22_concentrate
END

IF ~~ THEN BEGIN lt22_travel
SAY @841
IF ~~ THEN REPLY @842 GOTO lt22_where
IF ~~ THEN REPLY @843 GOTO lt22_selfish
IF ~~ THEN REPLY @844 GOTO lt22_visit
END

IF ~~ THEN BEGIN lt22_explore
SAY @845
IF ~~ THEN REPLY @846 GOTO lt22_where
IF ~~ THEN REPLY @847 GOTO lt22_snow
IF ~~ THEN REPLY @848 GOTO lt22_silverymoon
IF ~~ THEN REPLY @849 GOTO lt22_chult
IF ~~ THEN REPLY @850 GOTO lt22_calimshan
END

IF ~~ THEN BEGIN lt22_home
SAY @851
IF ~~ THEN REPLY @852 GOTO lt22_stay
IF ~~ THEN REPLY @853 GOTO lt22_alone
END

IF ~~ THEN BEGIN lt22_concentrate
SAY @854
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_where
SAY @855 = @856
IF ~~ THEN REPLY @857 GOTO lt22_company
IF ~~ THEN REPLY @858 GOTO lt22_door
IF ~~ THEN REPLY @859 GOTO lt22_sea
END

IF ~~ THEN BEGIN lt22_selfish
SAY @860
IF ~~ THEN REPLY @861 GOTO lt22_where
END

IF ~~ THEN BEGIN lt22_snow
SAY @862 = @856
IF ~~ THEN REPLY @857 GOTO lt22_company
IF ~~ THEN REPLY @858 GOTO lt22_door
IF ~~ THEN REPLY @859 GOTO lt22_sea
END

IF ~~ THEN BEGIN lt22_silverymoon
SAY @863 = @856
IF ~~ THEN REPLY @857 GOTO lt22_company
IF ~~ THEN REPLY @858 GOTO lt22_door
IF ~~ THEN REPLY @859 GOTO lt22_sea
END

IF ~~ THEN BEGIN lt22_chult
SAY @864 = @856
IF ~~ THEN REPLY @857 GOTO lt22_company
IF ~~ THEN REPLY @858 GOTO lt22_door
IF ~~ THEN REPLY @859 GOTO lt22_sea
END

IF ~~ THEN BEGIN lt22_calimshan
SAY @865
IF ~~ THEN REPLY @866 GOTO lt22_revenge
IF ~~ THEN REPLY @867 GOTO lt22_sent
IF ~~ THEN REPLY @868 GOTO lt22_without
END

IF ~~ THEN BEGIN lt22_stay
SAY @869 = @856
IF ~~ THEN REPLY @857 GOTO lt22_company
IF ~~ THEN REPLY @858 GOTO lt22_door
IF ~~ THEN REPLY @859 GOTO lt22_sea
END

IF ~~ THEN BEGIN lt22_alone
SAY @870
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_company
SAY @871
IF ~~ THEN REPLY @872 GOTO lt22_me
END

IF ~~ THEN BEGIN lt22_door
SAY @873 = @874
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_sea
SAY @875
IF ~~ THEN REPLY @876 GOTO lt22_elsewhere
IF ~~ THEN REPLY @877 GOTO lt22_stomach
END

IF ~~ THEN BEGIN lt22_elsewhere
SAY @878
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_revenge
SAY @879
IF ~~ THEN REPLY @880 GOTO lt22_friend
IF ~~ THEN REPLY @881 GOTO lt22_honour
END

IF ~~ THEN BEGIN lt22_sent
SAY @882
IF ~~ THEN REPLY @883 GOTO lt22_mind
IF ~~ THEN REPLY @884 GOTO lt22_fears
END

IF ~~ THEN BEGIN lt22_without
SAY @885
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_me
SAY @886
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_stomach
SAY @887
IF ~~ THEN REPLY @888 GOTO lt22_more
IF ~~ THEN REPLY @889 GOTO lt22_time
IF ~~ THEN REPLY @890 GOTO lt22_happen
END

IF ~~ THEN BEGIN lt22_friend
SAY @891
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_honour
SAY @892
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_mind
SAY @893 = @894
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_fears
SAY @895
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_more
SAY @896
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_time
SAY @897 = @898
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_happen
SAY @899 = @900
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt22_visit
SAY @901
IF ~~ THEN REPLY @857 GOTO lt22_company
IF ~~ THEN REPLY @858 GOTO lt22_door
IF ~~ THEN REPLY @859 GOTO lt22_sea
END

IF ~Global("E3LOVETALK","GLOBAL",26)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt26_start
SAY @902
IF ~~ THEN REPLY @903 GOTO lt26_awake
IF ~~ THEN REPLY @904 GOTO lt26_stick
IF ~~ THEN REPLY @905 GOTO lt26_wait
END

IF ~~ THEN BEGIN lt26_awake
SAY @906
IF ~~ THEN REPLY @907 GOTO lt26_knife
IF ~~ THEN REPLY @908 GOTO lt26_recognition
IF ~~ THEN REPLY @909 GOTO lt26_angry
END

IF ~~ THEN BEGIN lt26_stick
SAY @910
IF ~~ THEN REPLY @911 GOTO lt26_knife
IF ~~ THEN REPLY @912 GOTO lt26_leave
IF ~~ THEN REPLY @913 GOTO lt26_angry
END

IF ~~ THEN BEGIN lt26_wait
SAY @914
IF ~~ THEN REPLY @915 GOTO lt26_comfort
IF ~~ THEN REPLY @916 GOTO lt26_callous
IF ~~ THEN REPLY @917 GOTO lt26_okay
END

IF ~~ THEN BEGIN lt26_knife
SAY @918 = @919
IF ~~ THEN REPLY @920 GOTO lt26_apology
IF ~~ THEN REPLY @921 GOTO lt26_soothe
IF ~~ THEN REPLY @922 GOTO lt26_angry
END

IF ~~ THEN BEGIN lt26_recognition
SAY @923 = @924 = @925 = @926
IF ~~ THEN REPLY @927 GOTO lt26_soothe
IF ~~ THEN REPLY @928 GOTO lt26_angry
IF ~~ THEN REPLY @929 GOTO lt26_apology
END

IF ~~ THEN BEGIN lt26_angry
SAY @930
IF ~~ THEN REPLY @931 GOTO lt26_explain
IF ~~ THEN REPLY @932 GOTO lt26_soothe
IF ~~ THEN REPLY @933 GOTO lt26_leave
END

IF ~~ THEN BEGIN lt26_comfort
SAY @934 = @935
IF ~~ THEN REPLY @936 GOTO lt26_explain
IF ~~ THEN REPLY @937 GOTO lt26_hurt
IF ~~ THEN REPLY @938 GOTO lt26_callous
END

IF ~~ THEN BEGIN lt26_callous
SAY @939 = @940
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt26_okay
SAY @941
IF ~~ THEN REPLY @942 GOTO lt26_hurt
IF ~~ THEN REPLY @943 GOTO lt26_explain
IF ~~ THEN REPLY @944 GOTO lt26_leave
END

IF ~~ THEN BEGIN lt26_apology
SAY @945
IF ~~ THEN REPLY @936 GOTO lt26_explain
IF ~~ THEN REPLY @933 GOTO lt26_leave
IF ~~ THEN REPLY @946 GOTO lt26_hurt
END

IF ~~ THEN BEGIN lt26_soothe
SAY @934 = @947
IF ~~ THEN REPLY @936 GOTO lt26_explain
IF ~~ THEN REPLY @937 GOTO lt26_hurt
IF ~~ THEN REPLY @938 GOTO lt26_callous
END

IF ~~ THEN BEGIN lt26_explain
SAY @948 = @949 = @950 = @951
IF ~~ THEN REPLY @952 GOTO lt26_sleep
IF ~~ THEN REPLY @953 GOTO lt26_callous
IF ~~ THEN REPLY @954 GOTO lt26_deny
END

IF ~~ THEN BEGIN lt26_leave
SAY @955
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt26_hurt
SAY @956 = @949 = @950 = @951
IF ~~ THEN REPLY @952 GOTO lt26_sleep
IF ~~ THEN REPLY @953 GOTO lt26_callous
IF ~~ THEN REPLY @954 GOTO lt26_deny
END

IF ~~ THEN BEGIN lt26_sleep
SAY @957 = @958
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt26_deny
SAY @959
IF ~~ THEN REPLY @960 GOTO lt26_sleep
IF ~~ THEN REPLY @961 GOTO lt26_callous
END

IF ~Global("E3LOVETALK","GLOBAL",28)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt28_start
SAY @1025
IF ~~ THEN REPLY @1026 GOTO lt28_curious
IF ~~ THEN REPLY @1027 GOTO lt28_nasty
IF ~~ THEN REPLY @1028 GOTO lt28_discouraged
END

IF ~~ THEN BEGIN lt28_curious
SAY @1029 = @1030 = @1031
IF ~~ THEN REPLY @1032 GOTO lt28_continueone
IF ~~ THEN REPLY @1033 GOTO lt28_continuetwo
IF ~~ THEN REPLY @1034 GOTO lt28_melodrama
END

IF ~~ THEN BEGIN lt28_nasty
SAY @1035 = @1036
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt28_discouraged
SAY @1037
IF ~~ THEN REPLY @1038 GOTO lt28_curious
IF ~~ THEN REPLY @1039 GOTO lt28_breakup
END

IF ~~ THEN BEGIN lt28_continueone
SAY @1040 = @1041 = @1042 = @1043
IF ~~ THEN REPLY @1044 GOTO lt28_fault
IF ~~ THEN REPLY @1045 GOTO lt28_blame
END

IF ~~ THEN BEGIN lt28_continuetwo
SAY @1041 = @1042 = @1043
IF ~~ THEN REPLY @1044 GOTO lt28_fault
IF ~~ THEN REPLY @1045 GOTO lt28_blame
IF ~~ THEN REPLY @1046 GOTO lt28_continuethree
END

IF ~~ THEN BEGIN lt28_melodrama
SAY @1047
IF ~~ THEN REPLY @1048 GOTO lt28_apology
IF ~~ THEN REPLY @1049 GOTO lt28_punishment
IF ~~ THEN REPLY @1050 GOTO lt28_moveon
END

IF ~~ THEN BEGIN lt28_breakup
SAY @1051
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt28_fault
SAY @1052 = @1053 = @1054
IF ~~ THEN REPLY @1055 GOTO lt28_solace
IF ~~ THEN REPLY @1056 GOTO lt28_close
IF ~~ THEN REPLY @1057 GOTO lt28_priority
END

IF ~~ THEN BEGIN lt28_blame
SAY @1058 = @1059 = @1053 = @1054
IF ~~ THEN REPLY @1055 GOTO lt28_solace
IF ~~ THEN REPLY @1056 GOTO lt28_close
IF ~~ THEN REPLY @1057 GOTO lt28_priority
END

IF ~~ THEN BEGIN lt28_apology
SAY @1060
IF ~~ THEN REPLY @1061 GOTO lt28_future
IF ~~ THEN REPLY @1062 GOTO lt28_discovery
IF ~~ THEN REPLY @1063 GOTO lt28_dead
END

IF ~~ THEN BEGIN lt28_punishment
SAY @1064 = @1065
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt28_moveon
SAY @1066
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt28_solace
SAY @1067
IF ~~ THEN REPLY @1068 GOTO lt28_discovery
IF ~~ THEN REPLY @1069 GOTO lt28_dead
IF ~~ THEN REPLY @1070 GOTO lt28_foolish
END

IF ~~ THEN BEGIN lt28_close
SAY @1071
IF ~~ THEN REPLY @1068 GOTO lt28_discovery
IF ~~ THEN REPLY @1069 GOTO lt28_dead
IF ~~ THEN REPLY @1070 GOTO lt28_foolish
END

IF ~~ THEN BEGIN lt28_priority
SAY @1072
IF ~~ THEN REPLY @1073 GOTO lt28_discovery
IF ~~ THEN REPLY @1074 GOTO lt28_dead
IF ~~ THEN REPLY @1075 GOTO lt28_moveon
END

IF ~~ THEN BEGIN lt28_future
SAY @1076
IF ~~ THEN REPLY @1077 GOTO lt28_dead
IF ~~ THEN REPLY @1078 GOTO lt28_moveon
END

IF ~~ THEN BEGIN lt28_discovery
SAY @1079 = @1080 = @1081
IF ~~ THEN REPLY @1082 GOTO lt28_escape
END

IF ~~ THEN BEGIN lt28_dead
SAY @1083 = @1084 = @1085 = @1086 = @1087 = @1088 = @1089 = @1090 = @1091
IF ~~ THEN REPLY @1092 GOTO lt28_thanks
IF ~~ THEN REPLY @1093 GOTO lt28_thanks
END

IF ~~ THEN BEGIN lt28_foolish
SAY @1094
IF ~~ THEN REPLY @1073 GOTO lt28_discovery
IF ~~ THEN REPLY @1074 GOTO lt28_dead
IF ~~ THEN REPLY @1075 GOTO lt28_moveon
END

IF ~~ THEN BEGIN lt28_escape
SAY @1095 = @1086 = @1087 = @1088 = @1089 = @1090 = @1091
IF ~~ THEN REPLY @1092 GOTO lt28_thanks
IF ~~ THEN REPLY @1093 GOTO lt28_thanks
END

IF ~~ THEN BEGIN lt28_thanks
SAY @1096
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt28_continuethree
SAY @1097 = @1053 = @1054
IF ~~ THEN REPLY @1055 GOTO lt28_solace
IF ~~ THEN REPLY @1056 GOTO lt28_close
IF ~~ THEN REPLY @1057 GOTO lt28_priority
END

IF ~Global("E3LOVETALK","GLOBAL",30)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt30_start
SAY @1098
IF ~~ THEN REPLY @1099 GOTO lt30_better
IF ~~ THEN REPLY @1100 GOTO lt30_grateful
IF ~~ THEN REPLY @1101 GOTO lt30_her
END

IF ~~ THEN BEGIN lt30_better
SAY @1102
IF ~~ THEN REPLY @1103 GOTO lt30_grateful
IF ~~ THEN REPLY @1104 GOTO lt30_punish
END

IF ~~ THEN BEGIN lt30_grateful
SAY @1105
IF ~~ THEN REPLY @1106 GOTO lt30_strong
IF ~~ THEN REPLY @1107 GOTO lt30_selfpity
END

IF ~~ THEN BEGIN lt30_her
SAY @1108
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt30_punish
SAY @1109
IF ~~ THEN REPLY @1106 GOTO lt30_strong
IF ~~ THEN REPLY @1107 GOTO lt30_selfpity
END

IF ~~ THEN BEGIN lt30_strong
SAY @1110 = @1111
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt30_selfpity
SAY @1112
IF ~~ THEN REPLY @1106 GOTO lt30_strong
IF ~~ THEN REPLY @1113 GOTO lt30_maudlin
END

IF ~~ THEN BEGIN lt30_maudlin
SAY @1114 = @1115
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",32)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt32_start
SAY @1410
IF ~~ THEN REPLY @1411 GOTO lt32_okay
IF ~~ THEN REPLY @1412 GOTO lt32_sorry
IF ~~ THEN REPLY @1413 GOTO lt32_maybe
END

IF ~~ THEN BEGIN lt32_okay
SAY @1414
IF ~~ THEN REPLY @1415 GOTO lt32_sit
IF ~~ THEN REPLY @1416 GOTO lt32_leave
END

IF ~~ THEN BEGIN lt32_leave
SAY @1417
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_sorry
SAY @1418
IF ~~ THEN REPLY @1419 GOTO lt32_whine
IF ~~ THEN REPLY @1420 GOTO lt32_rest
IF ~~ THEN REPLY @1421 GOTO lt32_continue
END

IF ~~ THEN BEGIN lt32_maybe
SAY @1422 = @1423 = @1424
IF ~~ THEN REPLY @1419 GOTO lt32_whine
IF ~~ THEN REPLY @1420 GOTO lt32_rest
IF ~~ THEN REPLY @1421 GOTO lt32_continue
END

IF ~~ THEN BEGIN lt32_sit
SAY @1425
IF ~~ THEN REPLY @1426 GOTO lt32_bizarre
IF ~~ THEN REPLY @1427 GOTO lt32_weird
END

IF ~~ THEN BEGIN lt32_whine
SAY @1428
IF ~~ THEN REPLY @1429 GOTO lt32_rest
IF ~~ THEN REPLY @1430 GOTO lt32_okay
IF ~~ THEN REPLY @1431 GOTO lt32_serious
END

IF ~~ THEN BEGIN lt32_rest
SAY @1432
IF ~~ THEN REPLY @1433 GOTO lt32_okay
IF ~~ THEN REPLY @1431 GOTO lt32_serious
END

IF ~~ THEN BEGIN lt32_continue
SAY @1434
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_bizarre
SAY @1435
IF ~~ THEN REPLY @1436 GOTO lt32_too
IF ~~ THEN REPLY @1437 GOTO lt32_feet
IF ~~ THEN REPLY @1438 GOTO lt32_feet
END

IF ~~ THEN BEGIN lt32_too
SAY @1439
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_feet
SAY @1440
IF ~~ THEN REPLY @1441 GOTO lt32_disgusting
IF ~~ THEN REPLY @1442 GOTO lt32_everyday
END

IF ~~ THEN BEGIN lt32_weird
SAY @1443
IF ~~ THEN REPLY @1436 GOTO lt32_too
IF ~~ THEN REPLY @1437 GOTO lt32_feet
IF ~~ THEN REPLY @1438 GOTO lt32_feet
END

IF ~~ THEN BEGIN lt32_serious
SAY @1444
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_disgusting
SAY @1445 = @1446
IF ~~ THEN REPLY @1447 GOTO lt32_elf
IF ~~ THEN REPLY @1448 GOTO lt32_findout
IF ~~ THEN REPLY @1449 GOTO lt32_shudder
END

IF ~~ THEN BEGIN lt32_everyday
SAY @1450
IF ~~ THEN REPLY @1451 GOTO lt32_scars
IF ~~ THEN REPLY @1452 GOTO lt32_unusual
END

IF ~~ THEN BEGIN lt32_unusual
SAY @1453
IF ~~ THEN REPLY @1454 GOTO lt32_odd
IF ~~ THEN REPLY @1455 GOTO lt32_tunic
END

IF ~~ THEN BEGIN lt32_elf
SAY @1456
IF ~~ THEN REPLY @1451 GOTO lt32_scars
IF ~~ THEN REPLY @1452 GOTO lt32_unusual
END

IF ~~ THEN BEGIN lt32_findout
SAY @1457
IF ~~ THEN REPLY @1458 GOTO lt32_scars
IF ~~ THEN REPLY @1459 GOTO lt32_unusual
END

IF ~~ THEN BEGIN lt32_shudder
SAY @1460
IF ~~ THEN REPLY @1461 GOTO lt32_scars
IF ~~ THEN REPLY @1462 GOTO lt32_forget
IF ~~ THEN REPLY @1463 GOTO lt32_unusual
END

IF ~~ THEN BEGIN lt32_forget
SAY @1464
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt32_scars
SAY @1465 = @1466
IF ~~ THEN REPLY @1454 GOTO lt32_odd
IF ~~ THEN REPLY @1455 GOTO lt32_tunic
END

IF ~~ THEN BEGIN lt32_odd
SAY @1467
IF ~~ THEN REPLY @1468 GOTO lt32_basilisk
IF ~~ THEN REPLY @1469 GOTO lt32_whoa
IF ~~ THEN REPLY @1470 GOTO lt32_finger
END

IF ~~ THEN BEGIN lt32_tunic
SAY @1471
IF ~~ THEN REPLY @1472 GOTO lt32_bellybutton
IF ~~ THEN REPLY @1473 GOTO lt32_embarassed
END

IF ~~ THEN BEGIN lt32_basilisk
SAY @1474 = @1475
IF ~~ THEN REPLY @1476 GOTO lt32_aches
IF ~~ THEN REPLY @1477 GOTO lt32_escape
END

IF ~~ THEN BEGIN lt32_whoa
SAY @1478
IF ~~ THEN REPLY @1479 GOTO lt32_impressive
IF ~~ THEN REPLY @1480 GOTO lt32_hip
IF ~~ THEN REPLY @1481 GOTO lt32_it
END

IF ~~ THEN BEGIN lt32_finger
SAY @1482
IF ~~ THEN REPLY @1483 GOTO lt32_proud
IF ~~ THEN REPLY @1484 GOTO lt32_dog
IF ~~ THEN REPLY @1485 GOTO lt32_derringdo
END

IF ~~ THEN BEGIN lt32_bellybutton
SAY @1486
IF ~~ THEN REPLY @1487 GOTO lt32_stickie
IF ~~ THEN REPLY @1488 GOTO lt32_best
END

IF ~~ THEN BEGIN lt32_embarassed
SAY @1489
IF ~~ THEN REPLY @1490 GOTO lt32_perfect
IF ~~ THEN REPLY @1491 GOTO lt32_stop
END

IF ~~ THEN BEGIN lt32_aches
SAY @1492
IF ~~ THEN REPLY @1493 GOTO lt32_piss
IF ~~ THEN REPLY @1494 GOTO lt32_help
END

IF ~~ THEN BEGIN lt32_escape
SAY @1495
IF ~~ THEN REPLY @1496 GOTO lt32_one
IF ~~ THEN REPLY @1497 GOTO lt32_suppose
IF ~~ THEN REPLY @1498 GOTO lt32_girls
END

IF ~~ THEN BEGIN lt32_one
SAY @1499
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_suppose
SAY @1500
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_impressive
SAY @1501 = @1502
IF ~~ THEN REPLY @1503 GOTO lt32_trees
IF ~~ THEN REPLY @1504 GOTO lt32_show
END

IF ~~ THEN BEGIN lt32_hip
SAY @1505 = @1506
IF ~~ THEN REPLY @1503 GOTO lt32_trees
IF ~~ THEN REPLY @1504 GOTO lt32_show
END

IF ~~ THEN BEGIN lt32_it
SAY @1507
IF ~~ THEN REPLY @1508 GOTO lt32_lower
IF ~~ THEN REPLY @1509 GOTO lt32_lewd
IF ~~ THEN REPLY @1510 GOTO lt32_that
END

IF ~~ THEN BEGIN lt32_lower
SAY @1511
IF ~~ THEN REPLY @1503 GOTO lt32_trees
IF ~~ THEN REPLY @1504 GOTO lt32_show
END

IF ~~ THEN BEGIN lt32_proud
SAY @1512
IF ~~ THEN REPLY @1496 GOTO lt32_one
IF ~~ THEN REPLY @1497 GOTO lt32_suppose
IF ~~ THEN REPLY @1498 GOTO lt32_girls
END

IF ~~ THEN BEGIN lt32_dog
SAY @1513
IF ~~ THEN REPLY @1493 GOTO lt32_piss
IF ~~ THEN REPLY @1494 GOTO lt32_help
END

IF ~~ THEN BEGIN lt32_derringdo
SAY @1514
IF ~~ THEN REPLY @1515 GOTO lt32_proud
IF ~~ THEN REPLY @1516 GOTO lt32_dog
END

IF ~~ THEN BEGIN lt32_stickie
SAY @1517 = @1518 = @1519
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_best
SAY @1520
IF ~~ THEN REPLY @1490 GOTO lt32_perfect
IF ~~ THEN REPLY @1491 GOTO lt32_stop
END

IF ~~ THEN BEGIN lt32_perfect
SAY @1521 = @1522
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_stop
SAY @1523 = @1524
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_piss
SAY @1525 = @1526
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_help
SAY @1527
IF ~~ THEN REPLY @1528 GOTO lt32_better
IF ~~ THEN REPLY @1529 GOTO lt32_quite
END

IF ~~ THEN BEGIN lt32_girls
SAY @1530 = @1526
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_trees
SAY @1531
IF ~~ THEN REPLY @1532 GOTO lt32_laugh
IF ~~ THEN REPLY @1533 GOTO lt32_quite
END

IF ~~ THEN BEGIN lt32_show
SAY @1534 = @1522
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_lewd
SAY @1535
IF ~~ THEN REPLY @1510 GOTO lt32_that
IF ~~ THEN REPLY @1508 GOTO lt32_lower
END

IF ~~ THEN BEGIN lt32_that
SAY @1536
IF ~~ THEN REPLY @1537 GOTO lt32_quite
IF ~~ THEN REPLY @1538 GOTO lt32_joking
END

IF ~~ THEN BEGIN lt32_better
SAY @1539 = @1540
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_quite
SAY @1541 = @1540
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_joking
SAY @1542 = @1540
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt32_laugh
SAY @1543
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",34)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt34_start
SAY @1116
IF ~~ THEN REPLY @1117 GOTO lt34_sing
IF ~~ THEN REPLY @1118 GOTO lt34_what
IF ~~ THEN REPLY @1119 GOTO lt34_shutup
END

IF ~~ THEN BEGIN lt34_sing
SAY @1120
IF ~~ THEN REPLY @1121 GOTO lt34_distracting
IF ~~ THEN REPLY @1122 GOTO lt34_voice
IF ~~ THEN REPLY @1123 GOTO lt34_shutup
END

IF ~~ THEN BEGIN lt34_what
SAY @1124
IF ~~ THEN REPLY @1117 GOTO lt34_sing
IF ~~ THEN REPLY @1125 GOTO lt34_know
IF ~~ THEN REPLY @1126 GOTO lt34_nothing
END

IF ~~ THEN BEGIN lt34_shutup
SAY @1127
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt34_distracting
SAY @1128
IF ~~ THEN REPLY @1129 GOTO lt34_know
IF ~~ THEN REPLY @1130 GOTO lt34_habit
IF ~~ THEN REPLY @1131 GOTO lt34_sarcasm
END

IF ~~ THEN BEGIN lt34_voice
SAY @1132
IF ~~ THEN REPLY @1133 GOTO lt34_habit
IF ~~ THEN REPLY @1134 GOTO lt34_happy
IF ~~ THEN REPLY @1135 GOTO lt34_know
END

IF ~~ THEN BEGIN lt34_know
SAY @1136
IF ~~ THEN REPLY @1137 GOTO lt34_psong
IF ~~ THEN REPLY @1143 GOTO lt34_thing
END

IF ~~ THEN BEGIN lt34_nothing
SAY @1144
IF ~~ THEN REPLY @1145 GOTO lt34_know
IF ~~ THEN REPLY @1146 GOTO lt34_habit
IF ~~ THEN REPLY @1147 GOTO lt34_voice
END

IF ~~ THEN BEGIN lt34_habit
SAY @1148
IF ~~ THEN REPLY @1149 GOTO lt34_particular
IF ~~ THEN REPLY @1150 GOTO lt34_tease
END

IF ~~ THEN BEGIN lt34_sarcasm
SAY @1151 = @1152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt34_happy
SAY @1153 = @1154
IF ~~ THEN REPLY @1137 GOTO lt34_psong
IF ~~ THEN REPLY @1143 GOTO lt34_thing
IF ~~ THEN REPLY @1155 GOTO lt34_nothappy
END

IF ~~ THEN BEGIN lt34_song
SAY @1156
IF ~~ THEN REPLY @1157 GOTO lt34_red
IF ~~ THEN REPLY @1158 GOTO lt34_remember
END

IF ~~ THEN BEGIN lt34_thing
SAY @1159
IF ~~ THEN REPLY @1137 GOTO lt34_psong
IF ~~ THEN REPLY @1160 GOTO lt34_sorry
END

IF ~~ THEN BEGIN lt34_particular
SAY @1161
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt34_tease
SAY @1162
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt34_nothappy
SAY @1163
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt34_red
SAY @1164
IF ~~ THEN REPLY @1165 GOTO lt34_serious
IF ~~ THEN REPLY @1166 GOTO lt34_this
END

IF ~~ THEN BEGIN lt34_remember
SAY @1167 = @1168
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt34_sorry
SAY @1169
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt34_serious
SAY @1170 = @1171
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt34_this
SAY @1172
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt34_psong
SAY @1173 = @1138 = @1139 = @1140 = @1141 = @1142
IF ~~ THEN GOTO lt34_song
END

IF ~Global("E3LOVETALK","GLOBAL",36)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt36_start
SAY @1174 = @1175
IF ~~ THEN REPLY @1176 GOTO lt36_journal
IF ~~ THEN REPLY @1177 GOTO lt36_read
IF ~~ THEN REPLY @1178 GOTO lt36_reason
END

IF ~~ THEN BEGIN lt36_journal
SAY @1179
IF ~~ THEN REPLY @1180 GOTO lt36_read
IF ~~ THEN REPLY @1181 GOTO lt36_thoughts
IF ~~ THEN REPLY @1182 GOTO lt36_trade
IF ~~ THEN REPLY @1183 GOTO lt36_annoy
END

IF ~~ THEN BEGIN lt36_read
SAY @1184
IF ~~ THEN REPLY @1185 GOTO lt36_grab
IF ~~ THEN REPLY @1186 GOTO lt36_hand
IF ~~ THEN REPLY @1187 GOTO lt36_thoughts
END

IF ~~ THEN BEGIN lt36_reason
SAY @1188
IF ~~ THEN REPLY @1189 GOTO lt36_feelings
IF ~~ THEN REPLY @1190 GOTO lt36_hand
IF ~~ THEN REPLY @1181 GOTO lt36_thoughts
END

IF ~~ THEN BEGIN lt36_thoughts
SAY @1191
IF ~~ THEN REPLY @1192 GOTO lt36_hand
IF ~~ THEN REPLY @1193 GOTO lt36_grab
IF ~~ THEN REPLY @1194 GOTO lt36_feelings
END

IF ~~ THEN BEGIN lt36_trade
SAY @1195
IF ~~ THEN REPLY @1196 GOTO lt36_grab
IF ~~ THEN REPLY @1197 GOTO lt36_hand
IF ~~ THEN REPLY @1187 GOTO lt36_thoughts
END

IF ~~ THEN BEGIN lt36_annoy
SAY @1198 = @1199
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt36_feelings
SAY @1200
IF ~~ THEN REPLY @1201 GOTO lt36_grab
IF ~~ THEN REPLY @1202 GOTO lt36_hand
END

IF ~~ THEN BEGIN lt36_grab
SAY @1203
IF ~~ THEN REPLY @1204 GOTO lt36_kiss
IF ~~ THEN REPLY @1205 GOTO lt36_toofar
END

IF ~~ THEN BEGIN lt36_toofar
SAY @1206 = @1207
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt36_hand
SAY @1208
IF ~~ THEN REPLY @1204 GOTO lt36_kiss
IF ~~ THEN REPLY @1205 GOTO lt36_toofar
END

IF ~~ THEN BEGIN lt36_kiss
SAY @1209 = @1210
IF ~~ THEN REPLY @1211 GOTO lt36_mexplanation
IF ~~ THEN REPLY @1212 GOTO lt36_mplayful
IF ~~ THEN REPLY @1213 GOTO lt36_mplayful
END

IF ~~ THEN BEGIN lt36_mexplanation
SAY @1214 = @1215
IF ~~ THEN REPLY @1216 GOTO lt36_mplayful
IF ~~ THEN REPLY @1217 GOTO lt36_mquestion
IF ~~ THEN REPLY @1213 GOTO lt36_mplayful
END

IF ~~ THEN BEGIN lt36_mplayful
SAY @1218 = @1219
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt36_mquestion
SAY @1220
IF ~~ THEN REPLY @1221 GOTO lt36_mplayful
IF ~~ THEN REPLY @1222 GOTO lt36_mplayful
END

IF ~Global("E3LOVETALK","GLOBAL",38)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt38_start
SAY @1223
IF ~~ THEN REPLY @1224 GOTO lt38_water
IF ~~ THEN REPLY @1225 GOTO lt38_smile
IF ~~ THEN REPLY @1226 GOTO lt38_ashamed
END

IF ~~ THEN BEGIN lt38_water
SAY @1227
IF ~~ THEN REPLY @1228 GOTO lt38_problem
IF ~~ THEN REPLY @1225 GOTO lt38_smile
END

IF ~~ THEN BEGIN lt38_smile
SAY @1229 = @1230
IF ~~ THEN REPLY @1231 GOTO lt38_much
IF ~~ THEN REPLY @1232 GOTO lt38_busy
IF ~~ THEN REPLY @1233 GOTO lt38_way
END

IF ~~ THEN BEGIN lt38_ashamed
SAY @1234
IF ~~ THEN REPLY @1235 GOTO lt38_just
IF ~~ THEN REPLY @1236 GOTO lt38_carryon
END

IF ~~ THEN BEGIN lt38_problem
SAY @1237 = @1238
IF ~~ THEN REPLY @1231 GOTO lt38_much
IF ~~ THEN REPLY @1232 GOTO lt38_busy
IF ~~ THEN REPLY @1233 GOTO lt38_way
END

IF ~~ THEN BEGIN lt38_much
SAY @1239
IF ~~ THEN REPLY @1240 GOTO lt38_kiss
IF ~~ THEN REPLY @1241 GOTO lt38_drop
END

IF ~~ THEN BEGIN lt38_busy
SAY @1242
IF ~~ THEN REPLY @1235 GOTO lt38_just
IF ~~ THEN REPLY @1241 GOTO lt38_drop
END

IF ~~ THEN BEGIN lt38_way
SAY @1243
IF ~~ THEN REPLY @1244 GOTO lt38_carryon
IF ~~ THEN REPLY @1245 GOTO lt38_mistake
END

IF ~~ THEN BEGIN lt38_just
SAY @1246
IF ~~ THEN REPLY @1247 GOTO lt38_regret
IF ~~ THEN REPLY @1248 GOTO lt38_experience
IF ~~ THEN REPLY @1249 GOTO lt38_mistake
END

IF ~~ THEN BEGIN lt38_carryon
SAY @1250
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt38_kiss
SAY @1251
IF ~~ THEN REPLY @1247 GOTO lt38_regret
IF ~~ THEN REPLY @1248 GOTO lt38_experience
IF ~~ THEN REPLY @1249 GOTO lt38_mistake
END

IF ~~ THEN BEGIN lt38_drop
SAY @1252
IF ~~ THEN REPLY @1253 GOTO lt38_experience
IF ~~ THEN REPLY @1254 GOTO lt38_deal
IF ~~ THEN REPLY @1255 GOTO lt38_mistake
END

IF ~~ THEN BEGIN lt38_regret
SAY @1256
IF ~~ THEN REPLY @1257 GOTO lt38_fool
IF ~~ THEN REPLY @1258 GOTO lt38_same
END

IF ~~ THEN BEGIN lt38_experience
SAY @1259
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt38_mistake
SAY @1260
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt38_deal
SAY @1261 = @1262
IF ~~ THEN REPLY @1263 GOTO lt38_emotion
IF ~~ THEN REPLY @1258 GOTO lt38_same
END

IF ~~ THEN BEGIN lt38_fool
SAY @1264 = @1265
IF ~~ THEN REPLY @1266 GOTO lt38_kissagain
IF ~~ THEN REPLY @1267 GOTO lt38_compliment
IF ~~ THEN REPLY @1268 GOTO lt38_dally
END

IF ~~ THEN BEGIN lt38_dally
SAY @1269
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt38_same
SAY @1270
IF ~~ THEN REPLY @1271 GOTO lt38_fool
IF ~~ THEN REPLY @1272 GOTO lt38_glad
END

IF ~~ THEN BEGIN lt38_glad
SAY @1273
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt38_emotion
SAY @1274
IF ~~ THEN REPLY @1271 GOTO lt38_fool
IF ~~ THEN REPLY @1275 GOTO lt38_sure
END

IF ~~ THEN BEGIN lt38_sure
SAY @1276 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt38_kissagain
SAY @1277 = @1278
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt38_compliment
SAY @1279
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",42)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt42_start
SAY @1544
IF ~~ THEN REPLY @1545 GOTO lt42_depends
IF ~~ THEN REPLY @1546 GOTO lt42_yes
IF ~~ THEN REPLY @1547 GOTO lt42_no
END

IF ~~ THEN BEGIN lt42_depends
SAY @1548
IF ~~ THEN REPLY @1549 GOTO lt42_ask
IF ~~ THEN REPLY @1550 GOTO lt42_know
IF ~~ THEN REPLY @1551 GOTO lt42_real
IF ~~ THEN REPLY @1552 GOTO lt42_answer
IF ~~ THEN REPLY @1553 GOTO lt42_time
END

IF ~~ THEN BEGIN lt42_yes
SAY @1554
IF ~~ THEN REPLY @1549 GOTO lt42_ask
IF ~~ THEN REPLY @1550 GOTO lt42_know
IF ~~ THEN REPLY @1551 GOTO lt42_real
IF ~~ THEN REPLY @1552 GOTO lt42_answer
IF ~~ THEN REPLY @1553 GOTO lt42_time
END

IF ~~ THEN BEGIN lt42_no
SAY @1555
IF ~~ THEN REPLY @1556 GOTO lt42_yes
IF ~~ THEN REPLY @1557 GOTO lt42_say
IF ~~ THEN REPLY @1558 GOTO lt42_depends
END

IF ~~ THEN BEGIN lt42_ask
SAY @1559
IF ~~ THEN REPLY @1560 GOTO lt42_calia
IF ~~ THEN REPLY @1561 GOTO lt42_jak
IF ~~ THEN REPLY @1562 GOTO lt42_kirsten
IF ~~ THEN REPLY @1563 GOTO lt42_furry
END

IF ~~ THEN BEGIN lt42_know
SAY @1564
IF ~~ THEN REPLY @1565 GOTO lt42_girls
IF ~~ THEN REPLY @1566 GOTO lt42_lust
IF ~~ THEN REPLY @1567 GOTO lt42_happen
END

IF ~~ THEN BEGIN lt42_real
SAY @1568
IF ~~ THEN REPLY @1569 GOTO lt42_before
IF ~~ THEN REPLY @1570 GOTO lt42_reciprocate
IF ~~ THEN REPLY @1571 GOTO lt42_kid
END

IF ~~ THEN BEGIN lt42_answer
SAY @1572
IF ~~ THEN REPLY @1573 GOTO lt42_personal
IF ~~ THEN REPLY @1574 GOTO lt42_say
END

IF ~~ THEN BEGIN lt42_time
SAY @1575
IF ~~ THEN REPLY @1576 GOTO lt42_all
IF ~~ THEN REPLY @1577 GOTO lt42_joke
IF ~~ THEN REPLY @1578 GOTO lt42_know
END

IF ~~ THEN BEGIN lt42_say
SAY @1579
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt42_calia
SAY @1580
IF ~~ THEN REPLY @1581 GOTO lt42_devastated
IF ~~ THEN REPLY @1582 GOTO lt42_young
IF ~~ THEN REPLY @1583 GOTO lt42_end
END

IF ~~ THEN BEGIN lt42_jak
SAY @1584
IF ~~ THEN REPLY @1585 GOTO lt42_exist
IF ~~ THEN REPLY @1586 GOTO lt42_confusion
IF ~~ THEN REPLY @1587 GOTO lt42_interest
END

IF ~~ THEN BEGIN lt42_kirsten
SAY @1588
IF ~~ THEN REPLY @1589 GOTO lt42_seven
IF ~~ THEN REPLY @1590 GOTO lt42_missing
IF ~~ THEN REPLY @1591 GOTO lt42_tutor
END

IF ~~ THEN BEGIN lt42_furry
SAY @1592
IF ~~ THEN REPLY @1593 GOTO lt42_specify
IF ~~ THEN REPLY @1594 GOTO lt42_specify
END

IF ~~ THEN BEGIN lt42_girls
SAY @1595
IF ~~ THEN REPLY @1596 GOTO lt42_scared
IF ~~ THEN REPLY @1597 GOTO lt42_nobody
IF ~~ THEN REPLY @1598 GOTO lt42_terrify
END

IF ~~ THEN BEGIN lt42_lust
SAY @1599
IF ~~ THEN REPLY @1600 GOTO lt42_mean
IF ~~ THEN REPLY @1601 GOTO lt42_symptoms
IF ~~ THEN REPLY @1602 GOTO lt42_instinct
IF ~~ THEN REPLY @1603 GOTO lt42_feel
END

IF ~~ THEN BEGIN lt42_happen
SAY @1604
IF ~~ THEN REPLY @1600 GOTO lt42_mean
IF ~~ THEN REPLY @1601 GOTO lt42_symptoms
IF ~~ THEN REPLY @1602 GOTO lt42_instinct
IF ~~ THEN REPLY @1603 GOTO lt42_feel
END

IF ~~ THEN BEGIN lt42_before
SAY @1605
IF ~~ THEN REPLY @1606 GOTO lt42_symptoms
IF ~~ THEN REPLY @1603 GOTO lt42_feel
END

IF ~~ THEN BEGIN lt42_reciprocate
SAY @1607
IF ~~ THEN REPLY @1608 GOTO lt42_unrequited
IF ~~ THEN REPLY @1609 GOTO lt42_again
END

IF ~~ THEN BEGIN lt42_kid
SAY @1610
IF ~~ THEN REPLY @1611 GOTO lt42_relief
IF ~~ THEN REPLY @1612 GOTO lt42_busy
IF ~~ THEN REPLY @1613 GOTO lt42_before
END

IF ~~ THEN BEGIN lt42_personal
SAY @1614
IF ~~ THEN REPLY @1615 GOTO lt42_say
IF ~~ THEN REPLY @1616 GOTO lt42_symptoms
IF ~~ THEN REPLY @1602 GOTO lt42_instinct
IF ~~ THEN REPLY @1603 GOTO lt42_feel
END

IF ~~ THEN BEGIN lt42_all
SAY @1617
IF ~~ THEN REPLY @1618 GOTO lt42_joke
IF ~~ THEN REPLY @1619 GOTO lt42_know
END

IF ~~ THEN BEGIN lt42_joke
SAY @1620
IF ~~ THEN REPLY @1560 GOTO lt42_calia
IF ~~ THEN REPLY @1561 GOTO lt42_jak
IF ~~ THEN REPLY @1562 GOTO lt42_kirsten
END

IF ~~ THEN BEGIN lt42_devastated
SAY @1621
IF ~~ THEN REPLY @1622 GOTO lt42_questions
IF ~~ THEN REPLY @1623 GOTO lt42_what
IF ~~ THEN REPLY @1624 GOTO lt42_help
END

IF ~~ THEN BEGIN lt42_young
SAY @1625
IF ~~ THEN REPLY @1626 GOTO lt42_forever
IF ~~ THEN REPLY @1627 GOTO lt42_full
IF ~~ THEN REPLY @1628 GOTO lt42_negative
END

IF ~~ THEN BEGIN lt42_end
SAY @1629
IF ~~ THEN REPLY @1622 GOTO lt42_questions
IF ~~ THEN REPLY @1630 GOTO lt42_inevitable
IF ~~ THEN REPLY @1631 GOTO lt42_cheating
END

IF ~~ THEN BEGIN lt42_exist
SAY @1632
IF ~~ THEN REPLY @1633 GOTO lt42_same
IF ~~ THEN REPLY @1634 GOTO lt42_why
IF ~~ THEN REPLY @1635 GOTO lt42_special
END

IF ~~ THEN BEGIN lt42_confusion
SAY @1636
IF ~~ THEN REPLY @1633 GOTO lt42_same
IF ~~ THEN REPLY @1634 GOTO lt42_why
IF ~~ THEN REPLY @1635 GOTO lt42_special
END

IF ~~ THEN BEGIN lt42_interest
SAY @1637
IF ~~ THEN REPLY @1633 GOTO lt42_same
IF ~~ THEN REPLY @1634 GOTO lt42_why
IF ~~ THEN REPLY @1635 GOTO lt42_special
END

IF ~~ THEN BEGIN lt42_seven
SAY @1638
IF ~~ THEN REPLY @1639 GOTO lt42_adult
IF ~~ THEN REPLY @1640 GOTO lt42_calia
IF ~~ THEN REPLY @1641 GOTO lt42_jak
IF ~~ THEN REPLY @1619 GOTO lt42_know
END

IF ~~ THEN BEGIN lt42_missing
SAY @1642
IF ~~ THEN REPLY @1643 GOTO lt42_awkward
IF ~~ THEN REPLY @1644 GOTO lt42_spot
END

IF ~~ THEN BEGIN lt42_tutor
SAY @1645
IF ~~ THEN REPLY @1639 GOTO lt42_adult
IF ~~ THEN REPLY @1640 GOTO lt42_calia
IF ~~ THEN REPLY @1641 GOTO lt42_jak
IF ~~ THEN REPLY @1619 GOTO lt42_know
END

IF ~~ THEN BEGIN lt42_specify
SAY @1646
IF ~~ THEN REPLY @1639 GOTO lt42_adult
IF ~~ THEN REPLY @1640 GOTO lt42_calia
IF ~~ THEN REPLY @1641 GOTO lt42_jak
IF ~~ THEN REPLY @1619 GOTO lt42_know
END

IF ~~ THEN BEGIN lt42_scared
SAY @1647
IF ~~ THEN REPLY @1648 GOTO lt42_cheeks
IF ~~ THEN REPLY @1649 GOTO lt42_nobody
END

IF ~~ THEN BEGIN lt42_nobody
SAY @1650
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_terrify
SAY @1651
IF ~~ THEN REPLY @1652 GOTO lt42_realise
IF ~~ THEN REPLY @1653 GOTO lt42_makes
IF ~~ THEN REPLY @1654 GOTO lt42_stop
END

IF ~~ THEN BEGIN lt42_mean
SAY @1655
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_symptoms
SAY @1656
IF ~~ THEN REPLY @1657 GOTO lt42_idea
IF ~~ THEN REPLY @1658 GOTO lt42_feel
IF ~~ THEN REPLY @1659 GOTO lt42_teasing
END

IF ~~ THEN BEGIN lt42_instinct
SAY @1660
IF ~~ THEN REPLY @1661 GOTO lt42_here
IF ~~ THEN REPLY @1662 GOTO lt42_feel
END

IF ~~ THEN BEGIN lt42_feel
SAY @1663
IF ~~ THEN REPLY @1664 GOTO lt42_symptoms
IF ~~ THEN REPLY @1665 GOTO lt42_individual
END

IF ~~ THEN BEGIN lt42_unrequited
SAY @1666 = @1667
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_again
SAY @1668
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_relief
SAY @1669
IF ~~ THEN REPLY @1670 GOTO lt42_unrequited
IF ~~ THEN REPLY @1671 GOTO lt42_again
END

IF ~~ THEN BEGIN lt42_questions
SAY @1672
IF ~~ THEN REPLY @1673 GOTO lt42_help
IF ~~ THEN REPLY @1674 GOTO lt42_analyse
END

IF ~~ THEN BEGIN lt42_what
SAY @1675
IF ~~ THEN REPLY @1676 GOTO lt42_help
IF ~~ THEN REPLY @1677 GOTO lt42_analyse
IF ~~ THEN REPLY @1678 GOTO lt42_shy
END

IF ~~ THEN BEGIN lt42_forever
SAY @1679
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_full
SAY @1680
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_negative
SAY @1681
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_inevitable
SAY @1625
IF ~~ THEN REPLY @1626 GOTO lt42_forever
IF ~~ THEN REPLY @1627 GOTO lt42_full
IF ~~ THEN REPLY @1628 GOTO lt42_negative
END

IF ~~ THEN BEGIN lt42_cheating
SAY @1682
IF ~~ THEN REPLY @1683 GOTO lt42_proud
IF ~~ THEN REPLY @1684 GOTO lt42_fact
END

IF ~~ THEN BEGIN lt42_same
SAY @1685 = @1686
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_why
SAY @1687
IF ~~ THEN REPLY @1688 GOTO lt42_same
IF ~~ THEN REPLY @1689 GOTO lt42_regret
IF ~~ THEN REPLY @1690 GOTO lt42_gay
END

IF ~~ THEN BEGIN lt42_special
SAY @1691 = @1692
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_adult
SAY @1693
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_awkward
SAY @1694
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_spot
SAY @1716
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_cheeks
SAY @1695 = @1696
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_realise
SAY @1697
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_makes
SAY @1698
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_hope
SAY @1699
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_stop
SAY @1700
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_idea
SAY @1701 = @1702
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_teasing
SAY @1703 = @1702
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_here
SAY @1704 = @1705
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_individual
SAY @1706
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_help
SAY @1707 = @1708
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_analyse
SAY @1709
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_shy
SAY @1710 = @1711
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_proud
SAY @1712
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_fact
SAY @1713
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_regret
SAY @1715 = @1705
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_gay
SAY @1714
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt42_busy
SAY @1717
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",44)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt44_start
SAY @1280
IF ~~ THEN REPLY @1281 GOTO lt44_follow
IF ~~ THEN REPLY @1282 GOTO lt44_talk
END

IF ~~ THEN BEGIN lt44_follow
SAY @1283 = @1284 = @1285
IF ~~ THEN REPLY @1286 GOTO lt44_drag
IF ~~ THEN REPLY @1287 GOTO lt44_okay
IF ~~ THEN REPLY @1288 GOTO lt44_stupid
IF ~~ THEN REPLY @1289 GOTO lt44_honey
END

IF ~~ THEN BEGIN lt44_talk
SAY @1290
IF ~~ THEN REPLY @1291 GOTO lt44_follow
IF ~~ THEN REPLY @1292 GOTO lt44_busy
END

IF ~~ THEN BEGIN lt44_drag
SAY @1293
IF ~~ THEN REPLY @1294 GOTO lt44_jest
IF ~~ THEN REPLY @1295 GOTO lt44_weird
IF ~~ THEN REPLY @1296 GOTO lt44_notinterested
END

IF ~~ THEN BEGIN lt44_okay
SAY @1297 = @1298
IF ~~ THEN REPLY @1299 GOTO lt44_listen
IF ~~ THEN REPLY @1300 GOTO lt44_honey
IF ~~ THEN REPLY @1301 GOTO lt44_madness
END

IF ~~ THEN BEGIN lt44_stupid
SAY @1302
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt44_honey
SAY @1303
IF ~~ THEN REPLY @1304 GOTO lt44_nickname
IF ~~ THEN REPLY @1305 GOTO lt44_silly
IF ~~ THEN REPLY @1306 GOTO lt44_say
END

IF ~~ THEN BEGIN lt44_busy
SAY @1307
IF ~~ THEN REPLY @1308 GOTO lt44_means
IF ~~ THEN REPLY @1309 GOTO lt44_secrecy
END

IF ~~ THEN BEGIN lt44_jest
SAY @1310
IF ~~ THEN REPLY @1311 GOTO lt44_understand
IF ~~ THEN REPLY @1312 GOTO lt44_sorry
END

IF ~~ THEN BEGIN lt44_weird
SAY @1313
IF ~~ THEN REPLY @1314 GOTO lt44_wrong
IF ~~ THEN REPLY @1315 GOTO lt44_sarcasm
END

IF ~~ THEN BEGIN lt44_notinterested
SAY @1316
IF ~~ THEN REPLY @1317 GOTO lt44_opposite
IF ~~ THEN REPLY @1318 GOTO lt44_bonfire
END

IF ~~ THEN BEGIN lt44_listen
SAY @1319 = @1320 = @1321
IF ~~ THEN REPLY @1322 GOTO lt44_feel
IF ~~ THEN REPLY @1323 GOTO lt44_sorry
IF ~~ THEN REPLY @1324 GOTO lt44_misinterpreted
END

IF ~~ THEN BEGIN lt44_madness
SAY @1325
IF ~~ THEN REPLY @1326 GOTO lt44_context
IF ~~ THEN REPLY @1327 GOTO lt44_sorry
IF ~~ THEN REPLY @1328 GOTO lt44_love
END

IF ~~ THEN BEGIN lt44_nickname
SAY @1329
IF ~~ THEN REPLY @1330 GOTO lt44_understand
IF ~~ THEN REPLY @1331 GOTO lt44_mock
END

IF ~~ THEN BEGIN lt44_silly
SAY @1332 = @1298
IF ~~ THEN REPLY @1299 GOTO lt44_listen
IF ~~ THEN REPLY @1301 GOTO lt44_madness
END

IF ~~ THEN BEGIN lt44_say
SAY @1333
IF ~~ THEN REPLY @1334 GOTO lt44_understand
IF ~~ THEN REPLY @1335 GOTO lt44_point
END

IF ~~ THEN BEGIN lt44_means
SAY @1336 = @1283 = @1284 = @1285
IF ~~ THEN REPLY @1286 GOTO lt44_drag
IF ~~ THEN REPLY @1287 GOTO lt44_okay
IF ~~ THEN REPLY @1288 GOTO lt44_stupid
IF ~~ THEN REPLY @1289 GOTO lt44_honey
END

IF ~~ THEN BEGIN lt44_secrecy
SAY @1337
IF ~~ THEN REPLY @1338 GOTO lt44_means
IF ~~ THEN REPLY @1312 GOTO lt44_sorry
END

IF ~~ THEN BEGIN lt44_understand
SAY @1339 = @1298
IF ~~ THEN REPLY @1299 GOTO lt44_listen
IF ~~ THEN REPLY @1301 GOTO lt44_madness
END

IF ~~ THEN BEGIN lt44_wrong
SAY @1340
IF ~~ THEN REPLY @1311 GOTO lt44_understand
IF ~~ THEN REPLY @1312 GOTO lt44_sorry
END

IF ~~ THEN BEGIN lt44_sarcasm
SAY @1341
IF ~~ THEN REPLY @1342 GOTO lt44_fine
IF ~~ THEN REPLY @1343 GOTO lt44_notinterested
END

IF ~~ THEN BEGIN lt44_fine
SAY @1344
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt44_opposite
SAY @1345
IF ~~ THEN REPLY @1346 GOTO lt44_apologyhug
END

IF ~~ THEN BEGIN lt44_bonfire
SAY @1347
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt44_feel
SAY @1348 = @1349
IF ~~ THEN REPLY @1350 GOTO lt44_drastic
IF ~~ THEN REPLY @1351 GOTO lt44_dont
END

IF ~~ THEN BEGIN lt44_sorry
SAY @1352
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt44_misinterpreted
SAY @1353
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0307",4836,2136,6)~ EXIT
END

IF ~~ THEN BEGIN lt44_context
SAY @1354 = @1320 = @1321
IF ~~ THEN REPLY @1322 GOTO lt44_feel
IF ~~ THEN REPLY @1323 GOTO lt44_sorry
IF ~~ THEN REPLY @1324 GOTO lt44_misinterpreted
END

IF ~~ THEN BEGIN lt44_love
SAY @1355 = @1356 = @1357 = @1358
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN lt44_mock
SAY @1359 = @1298
IF ~~ THEN REPLY @1299 GOTO lt44_listen
IF ~~ THEN REPLY @1301 GOTO lt44_madness
END

IF ~~ THEN BEGIN lt44_point
SAY @1360
IF ~~ THEN REPLY @1361 GOTO lt44_notinterested
IF ~~ THEN REPLY @1294 GOTO lt44_jest
END

IF ~~ THEN BEGIN lt44_apologyhug
SAY @1362 = @1363 = @1356 = @1357 = @1358
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN lt44_drastic
SAY @1364 = @1365 = @1358
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN lt44_dont
SAY @1366 = @1357 = @1358
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",2)~ EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",46)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt46_start
SAY @1718
IF ~~ THEN REPLY @1719 GOTO lt46_run
IF ~~ THEN REPLY @1720 GOTO lt46_ear
IF ~~ THEN REPLY @1721 GOTO lt46_mood
END

IF ~~ THEN BEGIN lt46_run
SAY @1722
IF ~~ THEN REPLY @1723 GOTO lt46_bet
IF ~~ THEN REPLY @1724 GOTO lt46_stop
IF ~~ THEN REPLY @1725 GOTO lt46_ear
IF ~~ THEN REPLY @1721 GOTO lt46_mood
END

IF ~~ THEN BEGIN lt46_ear
SAY @1726
IF ~~ THEN REPLY @1727 GOTO lt46_mood
IF ~~ THEN REPLY @1728 GOTO lt46_gesture
END

IF ~~ THEN BEGIN lt46_mood
SAY @1729
IF ~~ THEN REPLY @1730 GOTO lt46_tweak
IF ~~ THEN REPLY @1731 GOTO lt46_more
IF ~~ THEN REPLY @1732 GOTO lt46_embarrass
END

IF ~~ THEN BEGIN lt46_bet
SAY @1733
IF ~~ THEN REPLY @1734 GOTO lt46_caught
IF ~~ THEN REPLY @1735 GOTO lt46_pin
IF ~~ THEN REPLY @1736 GOTO lt46_careful
END

IF ~~ THEN BEGIN lt46_stop
SAY @1737
IF ~~ THEN REPLY @1738 GOTO lt46_caught
IF ~~ THEN REPLY @1739 GOTO lt46_pin
IF ~~ THEN REPLY @1736 GOTO lt46_careful
END

IF ~~ THEN BEGIN lt46_gesture
SAY @1740
IF ~~ THEN REPLY @1741 GOTO lt46_stop
IF ~~ THEN REPLY @1742 GOTO lt46_bet
IF ~~ THEN REPLY @1743 GOTO lt46_embarrass
END

IF ~~ THEN BEGIN lt46_tweak
SAY @1744
IF ~~ THEN REPLY @1745 GOTO lt46_else
IF ~~ THEN REPLY @1746 GOTO lt46_mean
END

IF ~~ THEN BEGIN lt46_more
SAY @1747
IF ~~ THEN REPLY @1748 GOTO lt46_promise
IF ~~ THEN REPLY @1749 GOTO lt46_threat
IF ~~ THEN REPLY @1750 GOTO lt46_depends
END

IF ~~ THEN BEGIN lt46_embarrass
SAY @1751
IF ~~ THEN REPLY @1752 GOTO lt46_later
IF ~~ THEN REPLY @1753 GOTO lt46_around
IF ~~ THEN REPLY @1754 GOTO lt46_once
END

IF ~~ THEN BEGIN lt46_caught 
SAY @1755
IF ~~ THEN REPLY @1756 GOTO lt46_suggestions
IF ~~ THEN REPLY @1757 GOTO lt46_mistress
IF ~~ THEN REPLY @1732 GOTO lt46_embarrass
END

IF ~~ THEN BEGIN lt46_pin
SAY @1758
IF ~~ THEN REPLY @1759 GOTO lt46_suggestions
IF ~~ THEN REPLY @1760 GOTO lt46_lips
IF ~~ THEN REPLY @1761 GOTO lt46_kiss
END

IF ~~ THEN BEGIN lt46_careful
SAY @1762
IF ~~ THEN REPLY @1763 GOTO lt46_pin
IF ~~ THEN REPLY @1764 GOTO lt46_around
IF ~~ THEN REPLY @1765 GOTO lt46_embarrass
END

IF ~~ THEN BEGIN lt46_else
SAY @1766
IF ~~ THEN REPLY @1767 GOTO lt46_meaning
IF ~~ THEN REPLY @1760 GOTO lt46_lips
IF ~~ THEN REPLY @1768 GOTO lt46_cleavage
END

IF ~~ THEN BEGIN lt46_mean
SAY @1769
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_promise
SAY @1770
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_threat
SAY @1771
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_depends
SAY @1772
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_later
SAY @1773
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_around
SAY @1774
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_once
SAY @1775
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_suggestions
SAY @1776
IF ~~ THEN REPLY @1777 GOTO lt46_naughty
IF ~~ THEN REPLY @1778 GOTO lt46_minx
IF ~~ THEN REPLY @1760 GOTO lt46_lips
END

IF ~~ THEN BEGIN lt46_mistress
SAY @1779 = @1780
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_lips
SAY @1781
IF ~~ THEN REPLY @1782 GOTO lt46_like
IF ~~ THEN REPLY @1783 GOTO lt46_innuendo
END

IF ~~ THEN BEGIN lt46_kiss
SAY @1784
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_meaning
SAY @1785
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_cleavage
SAY @1786
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_naughty
SAY @1787
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_minx
SAY @1788
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_like
SAY @1789
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt46_innuendo
SAY @1790
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",48)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt48_start
SAY @1791
IF ~~ THEN REPLY @1792 GOTO lt48_yes
IF ~~ THEN REPLY @1793 GOTO lt48_laugh
IF ~~ THEN REPLY @1794 GOTO lt48_analyse
END

IF ~~ THEN BEGIN lt48_yes
SAY @1795
IF ~~ THEN REPLY @1796 GOTO lt48_getting
IF ~~ THEN REPLY @1794 GOTO lt48_analyse
IF ~~ THEN REPLY @1797 GOTO lt48_guideline
IF ~~ THEN REPLY @1798 GOTO lt48_amateurs
END

IF ~~ THEN BEGIN lt48_laugh
SAY @1799 = @1800
IF ~~ THEN REPLY @1796 GOTO lt48_getting
IF ~~ THEN REPLY @1794 GOTO lt48_analyse
IF ~~ THEN REPLY @1797 GOTO lt48_guideline
IF ~~ THEN REPLY @1798 GOTO lt48_amateurs
END

IF ~~ THEN BEGIN lt48_analyse
SAY @1801
IF ~~ THEN REPLY @1802 GOTO lt48_getting
IF ~~ THEN REPLY @1803 GOTO lt48_daunting
IF ~~ THEN REPLY @1804 GOTO lt48_dream
IF ~~ THEN REPLY @1805 GOTO lt48_experience
END

IF ~~ THEN BEGIN lt48_getting
SAY @1806 = @1807
IF ~~ THEN REPLY @1808 GOTO lt48_natural
IF ~~ THEN REPLY @1809 GOTO lt48_want
IF ~~ THEN REPLY @1803 GOTO lt48_daunting
END

IF ~~ THEN BEGIN lt48_guideline
SAY @1810
IF ~~ THEN REPLY @1811 GOTO lt48_analyse
IF ~~ THEN REPLY @1812 GOTO lt48_getting
IF ~~ THEN REPLY @1813 GOTO lt48_kiss
IF ~~ THEN REPLY @1814 GOTO lt48_conflict
END

IF ~~ THEN BEGIN lt48_amateurs
SAY @1815
IF ~~ THEN REPLY @1805 GOTO lt48_experience
IF ~~ THEN REPLY @1808 GOTO lt48_natural
IF ~~ THEN REPLY @1803 GOTO lt48_daunting
END

IF ~~ THEN BEGIN lt48_daunting
SAY @1816
IF ~~ THEN REPLY @1817 GOTO lt48_kiss
IF ~~ THEN REPLY @1818 GOTO lt48_times
IF ~~ THEN REPLY @1814 GOTO lt48_conflict
END

IF ~~ THEN BEGIN lt48_dream
SAY @1819
IF ~~ THEN REPLY @1820 GOTO lt48_want
IF ~~ THEN REPLY @1821 GOTO lt48_kiss
IF ~~ THEN REPLY @1822 GOTO lt48_communicate
END

IF ~~ THEN BEGIN lt48_experience
SAY @1823
IF ~~ THEN REPLY @1824 GOTO lt48_want
IF ~~ THEN REPLY @1825 GOTO lt48_kiss
IF ~~ THEN REPLY @1826 GOTO lt48_communicate
END

IF ~~ THEN BEGIN lt48_natural
SAY @1827
IF ~~ THEN REPLY @1828 GOTO lt48_want
IF ~~ THEN REPLY @1821 GOTO lt48_kiss
END

IF ~~ THEN BEGIN lt48_want
SAY @1829
IF ~~ THEN REPLY @1830 GOTO lt48_belly
IF ~~ THEN REPLY @1831 GOTO lt48_belly
IF ~~ THEN REPLY @1832 GOTO lt48_tightly
END

IF ~~ THEN BEGIN lt48_kiss
SAY @1833
IF ~~ THEN REPLY @1830 GOTO lt48_belly
IF ~~ THEN REPLY @1831 GOTO lt48_belly
IF ~~ THEN REPLY @1832 GOTO lt48_tightly
END

IF ~~ THEN BEGIN lt48_conflict
SAY @1834
IF ~~ THEN REPLY @1835 GOTO lt48_know
IF ~~ THEN REPLY @1821 GOTO lt48_kiss
END

IF ~~ THEN BEGIN lt48_times
SAY @1836
IF ~~ THEN REPLY @1828 GOTO lt48_want
IF ~~ THEN REPLY @1821 GOTO lt48_kiss
END

IF ~~ THEN BEGIN lt48_communicate
SAY @1837
IF ~~ THEN REPLY @1838 GOTO lt48_know
IF ~~ THEN REPLY @1839 GOTO lt48_kiss
END

IF ~~ THEN BEGIN lt48_belly
SAY @1840
IF ~~ THEN REPLY @1841 GOTO lt48_wrong
IF ~~ THEN REPLY @1842 GOTO lt48_confused
IF ~~ THEN REPLY @1843 GOTO lt48_sorry
END

IF ~~ THEN BEGIN lt48_tightly
SAY @1844
IF ~~ THEN REPLY @1845 GOTO lt48_wrong
IF ~~ THEN REPLY @1846 GOTO lt48_sorry
IF ~~ THEN REPLY @1847 GOTO lt48_confused
END

IF ~~ THEN BEGIN lt48_know
SAY @1848
IF ~~ THEN REPLY @1849 GOTO lt48_when
IF ~~ THEN REPLY @1850 GOTO lt48_confused
IF ~~ THEN REPLY @1851 GOTO lt48_push
END

IF ~~ THEN BEGIN lt48_wrong
SAY @1852 = @1853 = @1854
IF ~~ THEN REPLY @1855 GOTO lt48_ready
IF ~~ THEN REPLY @1856 GOTO lt48_sensitive
IF ~~ THEN REPLY @1857 GOTO lt48_block
END

IF ~~ THEN BEGIN lt48_confused
SAY @1858 = @1853 = @1859
IF ~~ THEN REPLY @1855 GOTO lt48_ready
IF ~~ THEN REPLY @1856 GOTO lt48_sensitive
IF ~~ THEN REPLY @1857 GOTO lt48_block
END

IF ~~ THEN BEGIN lt48_sorry
SAY @1860 = @1853 = @1859
IF ~~ THEN REPLY @1855 GOTO lt48_ready
IF ~~ THEN REPLY @1856 GOTO lt48_sensitive
IF ~~ THEN REPLY @1857 GOTO lt48_block
END

IF ~~ THEN BEGIN lt48_when
SAY @1861 = @1853 = @1859
IF ~~ THEN REPLY @1855 GOTO lt48_ready
IF ~~ THEN REPLY @1862 GOTO lt48_sensitive
IF ~~ THEN REPLY @1857 GOTO lt48_block
END

IF ~~ THEN BEGIN lt48_push
SAY @1863 = @1853 = @1859
IF ~~ THEN REPLY @1855 GOTO lt48_ready
IF ~~ THEN REPLY @1857 GOTO lt48_block
END

IF ~~ THEN BEGIN lt48_ready
SAY @1864
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt48_sensitive
SAY @1865
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt48_block
SAY @1866
IF ~~ THEN REPLY @1867 GOTO lt48_sensitive
IF ~~ THEN REPLY @1868 GOTO lt48_bothered
IF ~~ THEN REPLY @1869 GOTO lt48_teasing
END

IF ~~ THEN BEGIN lt48_bothered
SAY @1870
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt48_teasing
SAY @1871
IF ~~ THEN REPLY @1872 GOTO lt48_people
IF ~~ THEN REPLY @1873 GOTO lt48_sensitive
IF ~~ THEN REPLY @1874 GOTO lt48_goods
END

IF ~~ THEN BEGIN lt48_people
SAY @1875
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt48_goods
SAY @1876
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",50)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt50_start
SAY @1877
IF ~~ THEN REPLY @1878 GOTO lt50_why
IF ~~ THEN REPLY @1879 GOTO lt50_okay
IF ~~ THEN REPLY @1880 GOTO lt50_here
END

IF ~~ THEN BEGIN lt50_why
SAY @1881
IF ~~ THEN REPLY @1879 GOTO lt50_okay
IF ~~ THEN REPLY @1882 GOTO lt50_here
END

IF ~~ THEN BEGIN lt50_okay
SAY @1883
IF ~~ THEN REPLY @1884 GOTO lt50_kiss
IF ~~ THEN REPLY @1885 GOTO lt50_problem
IF ~~ THEN REPLY @1886 GOTO lt50_disinterest
END

IF ~~ THEN BEGIN lt50_here
SAY @1887 = @1883
IF ~~ THEN REPLY @1884 GOTO lt50_kiss
IF ~~ THEN REPLY @1885 GOTO lt50_problem
IF ~~ THEN REPLY @1886 GOTO lt50_disinterest
END

IF ~~ THEN BEGIN lt50_kiss
SAY @1888 = @1889 = @1890
IF ~~ THEN REPLY @1891 GOTO lt50_continue
IF ~~ THEN REPLY @1892 GOTO lt50_lesson
IF ~~ THEN REPLY @1893 GOTO lt50_disinterest
END

IF ~~ THEN BEGIN lt50_problem
SAY @1894 = @1895 = @1889 = @1890
IF ~~ THEN REPLY @1891 GOTO lt50_continue
IF ~~ THEN REPLY @1892 GOTO lt50_lesson
IF ~~ THEN REPLY @1893 GOTO lt50_disinterest
END

IF ~~ THEN BEGIN lt50_disinterest
SAY @1896
IF ~~ THEN REPLY @1897 GOTO lt50_yet
IF ~~ THEN REPLY @1898 GOTO lt50_unusual
END

IF ~~ THEN BEGIN lt50_continue
SAY @1900 = @1901 = @1902 = @1908
IF ~~ THEN DO ~SetGlobal("E3FADENOOKIE","GLOBAL",1)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt50_lesson
SAY @1903 = @1904 = @1902 = @1908
IF ~~ THEN DO ~SetGlobal("E3FADENOOKIE","GLOBAL",1)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt50_yet
SAY @1899
IF ~~ THEN DO ~SetGlobal("E3FADENOOKIE","GLOBAL",2)
RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt50_unusual
SAY @1905 = @1906 = @1907
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
RestParty()~ EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",52)
!StateCheck(Player1,STATE_SLEEPING)
Global("E3FADENOOKIE","GLOBAL",1)~ THEN BEGIN lt52_start
SAY @1909
IF ~~ THEN REPLY @1910 GOTO lt52_moment
IF ~~ THEN REPLY @1911 GOTO lt52_feel
IF ~~ THEN REPLY @1912 GOTO lt52_awake
END

IF ~~ THEN BEGIN lt52_moment
SAY @1913
IF ~~ THEN REPLY @1914 GOTO lt52_selfish
IF ~~ THEN REPLY @1915 GOTO lt52_expression
IF ~~ THEN REPLY @1916 GOTO lt52_gratify
END

IF ~~ THEN BEGIN lt52_feel
SAY @1917
IF ~~ THEN REPLY @1914 GOTO lt52_selfish
IF ~~ THEN REPLY @1915 GOTO lt52_expression
IF ~~ THEN REPLY @1916 GOTO lt52_gratify
END

IF ~~ THEN BEGIN lt52_awake
SAY @1918
IF ~~ THEN REPLY @1914 GOTO lt52_selfish
IF ~~ THEN REPLY @1915 GOTO lt52_expression
IF ~~ THEN REPLY @1916 GOTO lt52_gratify
END

IF ~~ THEN BEGIN lt52_selfish
SAY @1919
IF ~~ THEN REPLY @1920 GOTO lt52_gratify
IF ~~ THEN REPLY @1921 GOTO lt52_wake
END

IF ~~ THEN BEGIN lt52_expression
SAY @1922 = @1923
IF ~~ THEN REPLY @1920 GOTO lt52_gratify
IF ~~ THEN REPLY @1921 GOTO lt52_wake
END

IF ~~ THEN BEGIN lt52_gratify
SAY @1924
IF ~~ THEN REPLY @1925 GOTO lt52_wake
IF ~~ THEN REPLY @1926 GOTO lt52_get
END

IF ~~ THEN BEGIN lt52_wake
SAY @1927
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN lt52_get
SAY @1928
IF ~~ THEN REPLY @1929 GOTO lt52_go
IF ~~ THEN REPLY @1930 GOTO lt52_temptress
END

IF ~~ THEN BEGIN lt52_go
SAY @1931
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt52_temptress
SAY @1932
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",54)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt54_start
SAY @2215
IF ~~ THEN REPLY @2216 GOTO lt54_yes
IF ~~ THEN REPLY @2217 GOTO lt54_silly
IF ~~ THEN REPLY @2218 GOTO lt54_things
END

IF ~~ THEN BEGIN lt54_yes
SAY @2219
IF ~~ THEN REPLY @2220 GOTO lt54_suppose
IF ~~ THEN REPLY @2221 GOTO lt54_along
IF ~~ THEN REPLY @2222 GOTO lt54_matter
IF ~~ THEN REPLY @2223 GOTO lt54_leather
END

IF ~~ THEN BEGIN lt54_silly
SAY @2224
IF ~~ THEN REPLY @2220 GOTO lt54_suppose
IF ~~ THEN REPLY @2221 GOTO lt54_along
IF ~~ THEN REPLY @2222 GOTO lt54_matter
IF ~~ THEN REPLY @2223 GOTO lt54_leather
END

IF ~~ THEN BEGIN lt54_things
SAY @2225
IF ~~ THEN REPLY @2226 GOTO lt54_yes
IF ~~ THEN REPLY @2227 GOTO lt54_nonsense
IF ~~ THEN REPLY @2228 GOTO lt54_bug
END

IF ~~ THEN BEGIN lt54_suppose
SAY @2229
IF ~~ THEN REPLY @2230 GOTO lt54_changed
IF ~~ THEN REPLY @2231 GOTO lt54_leather
IF ~~ THEN REPLY @2232 GOTO lt54_spy
IF ~~ THEN REPLY @2233 GOTO lt54_reasons
END

IF ~~ THEN BEGIN lt54_along
SAY @2234
IF ~~ THEN REPLY @2235 GOTO lt54_changed
IF ~~ THEN REPLY @2236 GOTO lt54_leather
IF ~~ THEN REPLY @2237 GOTO lt54_reasons
END

IF ~~ THEN BEGIN lt54_matter
SAY @2238 = @2239
IF ~~ THEN REPLY @2240 GOTO lt54_something
IF ~~ THEN REPLY @2237 GOTO lt54_reasons
IF ~~ THEN REPLY @2241 GOTO lt54_important
END

IF ~~ THEN BEGIN lt54_leather
SAY @2242
IF ~~ THEN REPLY @2243 GOTO lt54_reasons
IF ~~ THEN REPLY @2244 GOTO lt54_impress
IF ~~ THEN REPLY @2222 GOTO lt54_matter
END

IF ~~ THEN BEGIN lt54_nonsense
SAY @2245 = @2246
IF ~~ THEN REPLY @2220 GOTO lt54_suppose
IF ~~ THEN REPLY @2221 GOTO lt54_along
IF ~~ THEN REPLY @2222 GOTO lt54_matter
IF ~~ THEN REPLY @2223 GOTO lt54_leather
END

IF ~~ THEN BEGIN lt54_bug
SAY @2247 = @2219
IF ~~ THEN REPLY @2220 GOTO lt54_suppose
IF ~~ THEN REPLY @2221 GOTO lt54_along
IF ~~ THEN REPLY @2222 GOTO lt54_matter
IF ~~ THEN REPLY @2223 GOTO lt54_leather
END

IF ~~ THEN BEGIN lt54_changed
SAY @2248 = @2249
IF ~~ THEN REPLY @2250 GOTO lt54_slaves
IF ~~ THEN REPLY @2251 GOTO lt54_dear
IF ~~ THEN REPLY @2252 GOTO lt54_me
END

IF ~~ THEN BEGIN lt54_spy
SAY @2253 = @2249
IF ~~ THEN REPLY @2250 GOTO lt54_slaves
IF ~~ THEN REPLY @2251 GOTO lt54_dear
IF ~~ THEN REPLY @2252 GOTO lt54_me
END

IF ~~ THEN BEGIN lt54_reasons
SAY @2254
IF ~~ THEN REPLY @2255 GOTO lt54_me
IF ~~ THEN REPLY @2256 GOTO lt54_beautiful
IF ~~ THEN REPLY @2257 GOTO lt54_impress
END

IF ~~ THEN BEGIN lt54_something
SAY @2258 = @2259 = @2249
IF ~~ THEN REPLY @2250 GOTO lt54_slaves
IF ~~ THEN REPLY @2251 GOTO lt54_dear
IF ~~ THEN REPLY @2252 GOTO lt54_me
END

IF ~~ THEN BEGIN lt54_important
SAY @2260 = @2249
IF ~~ THEN REPLY @2250 GOTO lt54_slaves
IF ~~ THEN REPLY @2251 GOTO lt54_dear
IF ~~ THEN REPLY @2252 GOTO lt54_me
END

IF ~~ THEN BEGIN lt54_impress
SAY @2261
IF ~~ THEN REPLY @2262 GOTO lt54_beautiful
IF ~~ THEN REPLY @2263 GOTO lt54_dear
IF ~~ THEN REPLY @2264 GOTO lt54_me
END

IF ~~ THEN BEGIN lt54_slaves
SAY @2265
IF ~~ THEN REPLY @2266 GOTO lt54_noble
IF ~~ THEN REPLY @2267 GOTO lt54_me
END

IF ~~ THEN BEGIN lt54_dear
SAY @2268
IF ~~ THEN REPLY @2269 GOTO lt54_bad
IF ~~ THEN REPLY @2270 GOTO lt54_disappointed
IF ~~ THEN REPLY @2271 GOTO lt54_supernatural
END

IF ~~ THEN BEGIN lt54_me
SAY @2272
IF ~~ THEN REPLY @2269 GOTO lt54_bad
IF ~~ THEN REPLY @2270 GOTO lt54_disappointed
IF ~~ THEN REPLY @2271 GOTO lt54_supernatural
END

IF ~~ THEN BEGIN lt54_beautiful
SAY @2273
IF ~~ THEN REPLY @2274 GOTO lt54_me
IF ~~ THEN REPLY @2275 GOTO lt54_me
END

IF ~~ THEN BEGIN lt54_noble
SAY @2276  
IF ~~ THEN REPLY @2277 GOTO lt54_change
IF ~~ THEN REPLY @2278 GOTO lt54_me
END

IF ~~ THEN BEGIN lt54_bad
SAY @2279
IF ~~ THEN REPLY @2280 GOTO lt54_how
IF ~~ THEN REPLY @2281 GOTO lt54_hit
END

IF ~~ THEN BEGIN lt54_disappointed
SAY @2282 = @2283
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt54_supernatural
SAY @2284 = @2283
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt54_change
SAY @2285 = @2283
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt54_how
SAY @2286 = @2283
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt54_hit
SAY @2287 = @2283
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",56)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt56_start
SAY @2288 = @2289
IF ~~ THEN REPLY @2290 GOTO lt56_troubled
IF ~~ THEN REPLY @2291 GOTO lt56_safe
IF ~~ THEN REPLY @2292 GOTO lt56_that
END

IF ~~ THEN BEGIN lt56_troubled
SAY @2293
IF ~~ THEN REPLY @2294 GOTO lt56_tell
IF ~~ THEN REPLY @2295 GOTO lt56_talk
IF ~~ THEN REPLY @2296 GOTO lt56_wait
END

IF ~~ THEN BEGIN lt56_safe
SAY @2297
IF ~~ THEN REPLY @2298 GOTO lt56_mean
IF ~~ THEN REPLY @2299 GOTO lt56_slavers
IF ~~ THEN REPLY @2300 GOTO lt56_mind
END

IF ~~ THEN BEGIN lt56_that
SAY @2301
IF ~~ THEN REPLY @2302 GOTO lt56_troubles
IF ~~ THEN REPLY @2303 GOTO lt56_things
IF ~~ THEN REPLY @2304 GOTO lt56_tell
END

IF ~~ THEN BEGIN lt56_tell
SAY @2305
IF ~Global("E3BOUGHTFADE","GLOBAL",1)~ THEN REPLY @2306 GOTO lt56_bought
IF ~!Global("E3BOUGHTFADE","GLOBAL",1)
Dead("E3Mallon")~ THEN REPLY @2307 GOTO lt56_rational
IF ~~ THEN REPLY @2308 GOTO lt56_mind
END

IF ~~ THEN BEGIN lt56_talk
SAY @2309
IF ~Global("E3BOUGHTFADE","GLOBAL",1)~ THEN REPLY @2306 GOTO lt56_bought
IF ~!Global("E3BOUGHTFADE","GLOBAL",1)
Dead("E3Mallon")~ THEN REPLY @2307 GOTO lt56_rational
IF ~~ THEN REPLY @2308 GOTO lt56_mind
END

IF ~~ THEN BEGIN lt56_wait
SAY @2310
IF ~~ THEN GOTO lt56_tell
END

IF ~~ THEN BEGIN lt56_mean
SAY @2311
IF ~!Global("E3BOUGHTFADE","GLOBAL",1)
Dead("E3Mallon")~ THEN REPLY @2312 GOTO lt56_rational
IF ~Global("E3BOUGHTFADE","GLOBAL",1)~ THEN REPLY @2313 GOTO lt56_bought
IF ~~ THEN REPLY @2308 GOTO lt56_mind
END

IF ~~ THEN BEGIN lt56_slavers
SAY @2314
IF ~!Global("E3BOUGHTFADE","GLOBAL",1)
Dead("E3Mallon")~ THEN REPLY @2312 GOTO lt56_rational
IF ~Global("E3BOUGHTFADE","GLOBAL",1)~ THEN REPLY @2313 GOTO lt56_bought
IF ~~ THEN REPLY @2315 GOTO lt56_mind
END

IF ~~ THEN BEGIN lt56_mind
SAY @2316
IF ~~ THEN REPLY @2317 GOTO lt56_take
IF ~~ THEN REPLY @2318 GOTO lt56_eat
IF ~~ THEN REPLY @2319 GOTO lt56_happy
END

IF ~~ THEN BEGIN lt56_troubles
SAY @2320
IF ~~ THEN REPLY @2298 GOTO lt56_mean
IF ~~ THEN REPLY @2321 GOTO lt56_slavers
IF ~~ THEN REPLY @2322 GOTO lt56_mind
END

IF ~~ THEN BEGIN lt56_things
SAY @2305
IF ~Global("E3BOUGHTFADE","GLOBAL",1)~ THEN REPLY @2306 GOTO lt56_bought
IF ~!Global("E3BOUGHTFADE","GLOBAL",1)
Dead("E3Mallon")~ THEN REPLY @2307 GOTO lt56_rational
IF ~~ THEN REPLY @2308 GOTO lt56_mind
END

IF ~~ THEN BEGIN lt56_bought
SAY @2323
IF ~~ THEN REPLY @2324 GOTO lt56_again
IF ~~ THEN REPLY @2325 GOTO lt56_promise
END

IF ~~ THEN BEGIN lt56_rational
SAY @2326
IF ~~ THEN REPLY @2324 GOTO lt56_again
IF ~~ THEN REPLY @2325 GOTO lt56_promise
END

IF ~~ THEN BEGIN lt56_take
SAY @2327
IF ~~ THEN REPLY @2324 GOTO lt56_again
IF ~~ THEN REPLY @2325 GOTO lt56_promise
END

IF ~~ THEN BEGIN lt56_eat
SAY @2328
IF ~~ THEN REPLY @2324 GOTO lt56_again
IF ~~ THEN REPLY @2325 GOTO lt56_promise
END

IF ~~ THEN BEGIN lt56_happy
SAY @2329
IF ~~ THEN REPLY @2330 GOTO lt56_kiss
IF ~~ THEN REPLY @2331 GOTO lt56_now
IF ~~ THEN REPLY @2332 GOTO lt56_command
END

IF ~~ THEN BEGIN lt56_again
SAY @2333
IF ~~ THEN REPLY @2334 GOTO lt56_continue
IF ~~ THEN REPLY @2335 GOTO lt56_kiss
END

IF ~~ THEN BEGIN lt56_promise
SAY @2336
IF ~~ THEN REPLY @2334 GOTO lt56_continue
IF ~~ THEN REPLY @2335 GOTO lt56_kiss
END

IF ~~ THEN BEGIN lt56_kiss
SAY @2337 = @2338 = @2339 = @2340
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt56_now
SAY @2341
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt56_command
SAY @2342
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt56_continue
SAY @2343 
IF ~~ THEN REPLY @2344 GOTO lt56_bhaal
IF ~~ THEN REPLY @2345 GOTO lt56_ones
END

IF ~~ THEN BEGIN lt56_bhaal
SAY @2346
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt56_ones
SAY @2347
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",58)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt58_start
SAY @2348
IF ~~ THEN REPLY @2349 GOTO lt58_miss
IF ~~ THEN REPLY @2350 GOTO lt58_torturing
IF ~~ THEN REPLY @2351 GOTO lt58_wondered
END

IF ~~ THEN BEGIN lt58_miss
SAY @2352
IF ~~ THEN REPLY @2353 GOTO lt58_torturing
IF ~~ THEN REPLY @2354 GOTO lt58_future
IF ~~ THEN REPLY @2355 GOTO lt58_alive
IF ~~ THEN REPLY @2356 GOTO lt58_over
END

IF ~~ THEN BEGIN lt58_torturing
SAY @2357
IF ~~ THEN REPLY @2351 GOTO lt58_wondered
IF ~~ THEN REPLY @2354 GOTO lt58_future
IF ~~ THEN REPLY @2355 GOTO lt58_alive
IF ~~ THEN REPLY @2356 GOTO lt58_over
END

IF ~~ THEN BEGIN lt58_wondered
SAY @2358
IF ~~ THEN REPLY @2354 GOTO lt58_future
IF ~~ THEN REPLY @2355 GOTO lt58_alive
IF ~~ THEN REPLY @2356 GOTO lt58_over
END

IF ~~ THEN BEGIN lt58_future
SAY @2359
IF ~~ THEN REPLY @2360 GOTO lt58_know
IF ~~ THEN REPLY @2361 GOTO lt58_defensive
IF ~~ THEN REPLY @2362 GOTO lt58_happiness
IF ~~ THEN REPLY @2355 GOTO lt58_alive
END

IF ~~ THEN BEGIN lt58_alive
SAY @2363
IF ~~ THEN REPLY @2364 GOTO lt58_ruin
IF ~~ THEN REPLY @2365 GOTO lt58_defensive
IF ~~ THEN REPLY @2366 GOTO lt58_happiness
END

IF ~~ THEN BEGIN lt58_over
SAY @2367
IF ~~ THEN REPLY @2360 GOTO lt58_know
IF ~~ THEN REPLY @2361 GOTO lt58_defensive
IF ~~ THEN REPLY @2362 GOTO lt58_happiness
END

IF ~~ THEN BEGIN lt58_know
SAY @2368
IF ~GlobalLT("AsylumPlot","GLOBAL",31)~ THEN REPLY @2369 GOTO lt58_imoen1
IF ~GlobalGT("AsylumPlot","GLOBAL",30)~ THEN REPLY @2369 GOTO lt58_imoen2
IF ~~ THEN REPLY @2361 GOTO lt58_defensive
IF ~~ THEN REPLY @2370 GOTO lt58_happiness
END

IF ~~ THEN BEGIN lt58_defensive
SAY @2371
IF ~~ THEN REPLY @2372 GOTO lt58_happiness
IF ~~ THEN REPLY @2373 GOTO lt58_ruin
IF ~~ THEN REPLY @2374 GOTO lt58_memory
END

IF ~~ THEN BEGIN lt58_happiness
SAY @2375
IF ~GlobalLT("AsylumPlot","GLOBAL",31)~ THEN REPLY @2369 GOTO lt58_imoen1
IF ~GlobalGT("AsylumPlot","GLOBAL",30)~ THEN REPLY @2369 GOTO lt58_imoen2
IF ~~ THEN REPLY @2374 GOTO lt58_memory
IF ~~ THEN REPLY @2376 GOTO lt58_ruin
END

IF ~~ THEN BEGIN lt58_ruin
SAY @2377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt58_imoen1
SAY @2378 = @2379
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt58_imoen2
SAY @2380 = @2379
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt58_memory
SAY @2381 
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",60)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt60_start
SAY @2382
IF ~~ THEN REPLY @2383 GOTO lt60_calm
IF ~~ THEN REPLY @2384 GOTO lt60_upset
IF ~~ THEN REPLY @2385 GOTO lt60_want
END

IF ~~ THEN BEGIN lt60_calm
SAY @2386
IF ~~ THEN REPLY @2387 GOTO lt60_thankful
IF ~~ THEN REPLY @2388 GOTO lt60_upset
IF ~~ THEN REPLY @2389 GOTO lt60_punish
END

IF ~~ THEN BEGIN lt60_upset
SAY @2390
IF ~~ THEN REPLY @2391 GOTO lt60_thankful
IF ~~ THEN REPLY @2389 GOTO lt60_punish
IF ~~ THEN REPLY @2392 GOTO lt60_blame
END

IF ~~ THEN BEGIN lt60_want
SAY @2393
IF ~~ THEN REPLY @2387 GOTO lt60_thankful
IF ~~ THEN REPLY @2388 GOTO lt60_upset
IF ~~ THEN REPLY @2389 GOTO lt60_punish
IF ~~ THEN REPLY @2392 GOTO lt60_blame
END

IF ~~ THEN BEGIN lt60_thankful
SAY @2394
IF ~~ THEN REPLY @2395 GOTO lt60_weapon
IF ~~ THEN REPLY @2396 GOTO lt60_happy
IF ~~ THEN REPLY @2397 GOTO lt60_pasha
END

IF ~~ THEN BEGIN lt60_punish
SAY @2398
IF ~~ THEN REPLY @2399 GOTO lt60_weapon
IF ~~ THEN REPLY @2397 GOTO lt60_pasha
IF ~~ THEN REPLY @2400 GOTO lt60_happy
END

IF ~~ THEN BEGIN lt60_blame
SAY @2401 = @2402
IF ~~ THEN REPLY @2403 GOTO lt60_bother
IF ~~ THEN REPLY @2395 GOTO lt60_weapon
IF ~~ THEN REPLY @2396 GOTO lt60_happy
IF ~~ THEN REPLY @2397 GOTO lt60_pasha
END

IF ~~ THEN BEGIN lt60_weapon
SAY @2404
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt60_happy
SAY @2405
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt60_pasha
SAY @2406
IF ~~ THEN REPLY @2407 GOTO lt60_happy
IF ~~ THEN REPLY @2408 GOTO lt60_bastard
END

IF ~~ THEN BEGIN lt60_bother
SAY @2409
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt60_bastard
SAY @2410
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",62)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt62_start
SAY @2411
IF ~~ THEN REPLY @2412 GOTO lt62_mean
IF ~~ THEN REPLY @2413 GOTO lt62_next
IF ~~ THEN REPLY @2414 GOTO lt62_thought
END

IF ~~ THEN BEGIN lt62_mean
SAY @2415
IF ~~ THEN REPLY @2416 GOTO lt62_thought
IF ~~ THEN REPLY @2417 GOTO lt62_settle
IF ~~ THEN REPLY @2418 GOTO lt62_adventure
END

IF ~~ THEN BEGIN lt62_next
SAY @2419
IF ~~ THEN REPLY @2420 GOTO lt62_farm
IF ~~ THEN REPLY @2421 GOTO lt62_adventure
END

IF ~~ THEN BEGIN lt62_thought
SAY @2422
IF ~~ THEN REPLY @2423 GOTO lt62_future
IF ~~ THEN REPLY @2424 GOTO lt62_settle
IF ~~ THEN REPLY @2425 GOTO lt62_adventure
END

IF ~~ THEN BEGIN lt62_settle
SAY @2426
IF ~~ THEN REPLY @2427 GOTO lt62_farm
IF ~~ THEN REPLY @2428 GOTO lt62_grandchildren
END

IF ~~ THEN BEGIN lt62_adventure
SAY @2429
IF ~~ THEN REPLY @2430 GOTO lt62_boring
IF ~~ THEN REPLY @2431 GOTO lt62_travel
END

IF ~~ THEN BEGIN lt62_farm
SAY @2432
IF ~~ THEN REPLY @2433 GOTO lt62_together
IF ~~ THEN REPLY @2434 GOTO lt62_us
IF ~~ THEN REPLY @2435 GOTO lt62_future
END

IF ~~ THEN BEGIN lt62_future
SAY @2436
IF ~~ THEN REPLY @2437 GOTO lt62_together
IF ~~ THEN REPLY @2438 GOTO lt62_happens
END

IF ~~ THEN BEGIN lt62_grandchildren
SAY @2439
IF ~~ THEN REPLY @2440 GOTO lt62_kids
IF ~~ THEN REPLY @2441 GOTO lt62_happens
END

IF ~~ THEN BEGIN lt62_boring
SAY @2442
IF ~~ THEN REPLY @2443 GOTO lt62_together
IF ~~ THEN REPLY @2438 GOTO lt62_happens
END

IF ~~ THEN BEGIN lt62_travel
SAY @2444
IF ~~ THEN REPLY @2445 GOTO lt62_together
IF ~~ THEN REPLY @2438 GOTO lt62_happens
END

IF ~~ THEN BEGIN lt62_together
SAY @2446 = @2447
IF ~~ THEN REPLY @2448 GOTO lt62_tickle
IF ~~ THEN REPLY @2449 GOTO lt62_kiss
END

IF ~~ THEN BEGIN lt62_us
SAY @2450
IF ~~ THEN REPLY @2451 GOTO lt62_grandchildren
IF ~~ THEN REPLY @2452 GOTO lt62_together
END

IF ~~ THEN BEGIN lt62_happens
SAY @2453
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt62_kids
SAY @2454 = @2455
IF ~~ THEN REPLY @2437 GOTO lt62_together
IF ~~ THEN REPLY @2438 GOTO lt62_happens
END

IF ~~ THEN BEGIN lt62_tickle
SAY @2456 = @2457
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt62_kiss
SAY @2458 = @2459
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",64)
Global("E3FADENOOKIE","GLOBAL",1)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt64_start
SAY @2593
IF ~~ THEN REPLY @2594 GOTO lt64_there
IF ~~ THEN REPLY @2595 GOTO lt64_minx
IF ~~ THEN REPLY @2596 GOTO lt64_doing
IF ~~ THEN REPLY @2597 GOTO lt64_stop
END

IF ~~ THEN BEGIN lt64_there
SAY @2598
IF ~~ THEN REPLY @2599 GOTO lt64_stop
IF ~~ THEN REPLY @2600 GOTO lt64_caught
IF ~~ THEN REPLY @2601 GOTO lt64_everyone
END

IF ~~ THEN BEGIN lt64_minx
SAY @2602
IF ~~ THEN REPLY @2603 GOTO lt64_later
IF ~~ THEN REPLY @2600 GOTO lt64_caught
IF ~~ THEN REPLY @2604 GOTO lt64_everyone
END

IF ~~ THEN BEGIN lt64_doing
SAY @2605
IF ~~ THEN REPLY @2606 GOTO lt64_minx
IF ~~ THEN REPLY @2603 GOTO lt64_later
IF ~~ THEN REPLY @2600 GOTO lt64_caught
IF ~~ THEN REPLY @2604 GOTO lt64_everyone
END

IF ~~ THEN BEGIN lt64_stop
SAY @2607
IF ~~ THEN REPLY @2608 GOTO lt64_embarrass
IF ~~ THEN REPLY @2603 GOTO lt64_later
IF ~~ THEN REPLY @2600 GOTO lt64_caught
IF ~~ THEN REPLY @2604 GOTO lt64_everyone
END

IF ~~ THEN BEGIN lt64_caught
SAY @2609
IF ~~ THEN REPLY @2610 GOTO lt64_later
IF ~~ THEN REPLY @2611 GOTO lt64_really
IF ~~ THEN REPLY @2612 GOTO lt64_influence
END

IF ~~ THEN BEGIN lt64_everyone
SAY @2613 
IF ~~ THEN REPLY @2614 GOTO lt64_caught
IF ~~ THEN REPLY @2603 GOTO lt64_later
END

IF ~~ THEN BEGIN lt64_later
SAY @2615
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt64_embarrass
SAY @2616
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt64_really
SAY @2617
IF ~~ THEN REPLY @2618 GOTO lt64_secluded
IF ~~ THEN REPLY @2619 GOTO lt64_later
END

IF ~~ THEN BEGIN lt64_influence
SAY @2620
IF ~~ THEN REPLY @2618 GOTO lt64_secluded
IF ~~ THEN REPLY @2619 GOTO lt64_later
END

IF ~~ THEN BEGIN lt64_secluded
SAY @2621
IF ~~ THEN EXIT
END

IF ~Global("E3LOVETALK","GLOBAL",66)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN lt66_start
SAY @2622
IF ~~ THEN REPLY @2623 DO ~SetGlobal("E3LOVETALK","GLOBAL",67)~ GOTO lt66_close
IF ~~ THEN REPLY @2624 DO ~SetGlobal("E3LOVETALK","GLOBAL",67)~ GOTO lt66_blush
IF ~~ THEN REPLY @2625 DO ~SetGlobal("E3LOVETALK","GLOBAL",67)~ GOTO lt66_glad
END

IF ~~ THEN BEGIN lt66_close
SAY @2626
IF ~~ THEN REPLY @2627 GOTO lt66_crying
IF ~~ THEN REPLY @2628 GOTO lt66_fine
IF ~~ THEN REPLY @2629 GOTO lt66_do
END

IF ~~ THEN BEGIN lt66_blush
SAY @2630 = @2631
IF ~~ THEN REPLY @2632 GOTO lt66_way
IF ~~ THEN REPLY @2623 GOTO lt66_close
IF ~~ THEN REPLY @2633 GOTO lt66_partnership
END

IF ~~ THEN BEGIN lt66_glad
SAY @2634 = @2631
IF ~~ THEN REPLY @2632 GOTO lt66_way
IF ~~ THEN REPLY @2623 GOTO lt66_close
IF ~~ THEN REPLY @2633 GOTO lt66_partnership
END

IF ~~ THEN BEGIN lt66_crying
SAY @2635
IF ~~ THEN REPLY @2633 GOTO lt66_partnership
IF ~~ THEN REPLY @2636 GOTO lt66_future
IF ~~ THEN REPLY @2637 GOTO lt66_crazy
END

IF ~~ THEN BEGIN lt66_fine
SAY @2638
IF ~~ THEN REPLY @2632 GOTO lt66_way
IF ~~ THEN REPLY @2633 GOTO lt66_partnership
IF ~~ THEN REPLY @2637 GOTO lt66_crazy
END

IF ~~ THEN BEGIN lt66_do
SAY @2639
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt66_way
SAY @2640
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt66_partnership
SAY @2641
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt66_future
SAY @2642
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt66_crazy
SAY @2643
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadebad
SAY @674
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fun
SAY @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadevsaerie_me
SAY @1944
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN fadevsaerie_like_2
SAY @1946
IF ~~ THEN REPLY @210 GOTO lt4_1a
IF ~~ THEN REPLY @284 GOTO lt4_2a
IF ~~ THEN REPLY @211 GOTO lt4_3c
END

IF ~~ THEN BEGIN fadevsviconia3_point
SAY @1964
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN fadevsviconia3_saying_2
SAY @1967
IF ~~ THEN REPLY @780 GOTO lt20_reasons
IF ~~ THEN REPLY @781 GOTO lt20_enough
IF ~~ THEN REPLY @782 GOTO lt20_angry
END

IF ~~ THEN BEGIN fadevsjaheira_apologise
SAY @1977
IF ~~ THEN REPLY @1978 GOTO fadevsjaheira_tolerate
IF ~~ THEN REPLY @1979 EXTERN BJAHEIR fadevsjaheira_ask
END

IF ~~ THEN BEGIN fadevsjaheira_tolerate
SAY @1985
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN fademinscrat3
SAY @30
IF ~Global("E3FADEMATCH","GLOBAL",1)~ THEN REPLY @32 EXTERN BMINSC fademinscrat5
IF ~Global("E3FADEMATCH","GLOBAL",1)~ THEN REPLY @33 EXTERN BMINSC fademinscrat9
IF ~~ THEN REPLY @34 EXTERN BMINSC fademinscrat14
END

IF ~~ THEN BEGIN fademinscrat4
SAY @31
IF ~~ THEN REPLY @35 EXTERN BMINSC fademinscrat19
IF ~~ THEN REPLY @36 EXTERN BMINSC fademinscrat19
END

IF ~~ THEN BEGIN fademinscrat6
SAY @40
IF ~~ THEN REPLY @66 GOTO fademinscrat7
END

IF ~~ THEN BEGIN fademinscrat7
SAY @48
IF ~~ THEN REPLY @52 GOTO fademinscrat8
END

IF ~~ THEN BEGIN fademinscrat8
SAY @56 = @57 = @60 = @61
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fademinscrat10
SAY @41 = @42
IF ~~ THEN REPLY @45 GOTO fademinscrat11
END

IF ~~ THEN BEGIN fademinscrat11
SAY @49
IF ~~ THEN REPLY @53 GOTO fademinscrat12
IF ~~ THEN REPLY @54 EXIT
END

IF ~~ THEN BEGIN fademinscrat12
SAY @58
IF ~~ THEN REPLY @62 GOTO fademinscrat13
END

IF ~~ THEN BEGIN fademinscrat13
SAY @63 = @64 = @65
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fademinscrat15
SAY @43
IF ~~ THEN REPLY @46 GOTO fademinscrat16
IF ~~ THEN REPLY @47 GOTO fademinscrat17
END

IF ~~ THEN BEGIN fademinscrat16
SAY @50
IF ~~ THEN REPLY @53 GOTO fademinscrat12
IF ~~ THEN REPLY @54 EXIT
END

IF ~~ THEN BEGIN fademinscrat17
SAY @51
IF ~~ THEN REPLY @55 GOTO fademinscrat18
END

IF ~~ THEN BEGIN fademinscrat18
SAY @59
IF ~~ THEN EXIT
END

CHAIN
IF ~InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("E3FADEVSVICONIA2","GLOBAL",1)
GlobalGT("E3LOVETALK","GLOBAL",10)
GlobalLT("E3LOVETALK","GLOBAL",20)~ THEN BVICONI fadevsviconia
@644 DO ~SetGlobal("E3FADEVSVICONIA2","GLOBAL",2)~
== BE3FADE @645 == BVICONI @646 == BE3FADE @647 == BVICONI @648 == BE3FADE @649 == BVICONI @650 == BE3FADE @651 == BVICONI @652 == BE3FADE @653 == BVICONI @654 == BE3FADE @655 = @656 == BVICONI @657 == BE3FADE @658 == BVICONI @659 == BE3FADE @660 = @661
END
IF ~~ THEN REPLY @662 EXTERN BE3FADE fadevsviconia2

CHAIN
IF ~~ THEN BE3FADE fadevsviconia2
@663 == BVICONI @664 = @665
END
IF ~~ THEN REPLY @666 GOTO catfight
IF ~~ THEN REPLY @667 GOTO fadebad
IF ~~ THEN REPLY @668 EXTERN BVICONI vicbad

CHAIN
IF ~~ THEN BE3FADE catfight
@669 == BVICONI @670
END
IF ~~ THEN REPLY @671 GOTO fadebad
IF ~~ THEN REPLY @672 EXTERN BVICONI vicbad
IF ~~ THEN REPLY @673 GOTO treat

CHAIN
IF ~~ THEN BE3FADE treat
@676 == BVICONI @677 == BE3FADE @678
EXIT

CHAIN
IF ~~ THEN BE3FADE fadevsviconia3_interest
@1965 DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~
== BVICONI @1966 DO ~SetGlobal("VICONIAROMANCEACTIVE","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN BJAHEIR fadevsjaheira_slack
@1980 == BE3FADE @1981 == BJAHEIR @1982
END
IF ~~ THEN REPLY @1983 GOTO fadevsjaheira_ask
IF ~~ THEN REPLY @1984 EXTERN BE3FADE fadevsjaheira_worried

CHAIN
IF ~~ THEN BE3FADE fadevsjaheira_worried
@1986 == BJAHEIR @1987 DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN BJAHEIR fadevsjaheira_ask
@1988 DO ~SetGlobal("JAHEIRAROMANCEACTIVE","GLOBAL",3)~ 
== BE3FADE @1989
END
IF ~~ THEN REPLY @1368 EXTERN BE3FADE lt14_recently
IF ~~ THEN REPLY @1369 EXTERN BE3FADE lt14_surprise
IF ~~ THEN REPLY @1370 EXTERN BE3FADE lt14_sarcasm
IF ~~ THEN REPLY @1371 EXTERN BE3FADE lt14_alone

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
AreaCheck("AR0903")
Global("E3FADEANOMENORDERTALK","LOCALS",0)
OR(2)
Alignment("Anomen",LAWFUL_GOOD)
Alignment("Anomen",LAWFUL_NEUTRAL)~ THEN BE3FADE fadeanomenorder
@122 DO ~SetGlobal("E3FADEANOMENORDERTALK","LOCALS",1)~
== BANOMEN @123 == BE3FADE @124 = @125 == BANOMEN @126 == BE3FADE @127 == BANOMEN @128 == BE3FADE @129 == BANOMEN @130 == BE3FADE @131 == BANOMEN @132 == BE3FADE @133 == BANOMEN @134
END
IF ~~ THEN REPLY @135 GOTO fun
IF ~~ THEN REPLY @136 EXTERN BANOMEN placate
IF ~~ THEN REPLY @137 EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("E3FADEAERIETALK","LOCALS",0)~ THEN BE3FADE fadeaerieid
@1 DO ~SetGlobal("E3FADEAERIETALK","LOCALS",1)~
== BAERIE @2 == BE3FADE @3 == BAERIE @4 == BE3FADE @5 == BAERIE @6 == BE3FADE @7 == BAERIE @8 == BE3FADE @9 = @10 == BAERIE @11 == BE3FADE @12 = @13 == BAERIE @14 = @15 == BE3FADE @16 = @17
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("E3FADEAERIETALK2","LOCALS",0)~ THEN BE3FADE fadeaerietalk
@2570 DO ~SetGlobal("E3FADEAERIETALK2","LOCALS",1)~
== BAERIE @2571 == BE3FADE @2572 == BAERIE @2573 == BE3FADE @2574
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEANOMENTALK1","LOCALS",0)~ THEN BANOMEN fadeanomen1
@2505 DO ~SetGlobal("E3FADEANOMENTALK1","LOCALS",1)~
== BE3FADE @2506 == BANOMEN @2507
== BE3FADE IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN @2508
== BE3FADE IF ~!Global("PlayerThiefGuild","GLOBAL",1)~ THEN @2509
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("E3FADEANOMENTALK2","LOCALS",0)~ THEN BE3FADE fadeanomen2
@2558 DO ~SetGlobal("E3FADEANOMENTALK2","LOCALS",1)~
== BANOMEN @2559 == BE3FADE @2560 == BANOMEN @2561 == BE3FADE @2562 == BANOMEN @2563
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("E3FADECERNDTALK1","LOCALS",0)~ THEN BE3FADE fadecernd1
@2160 DO ~SetGlobal("E3FADECERNDTALK1","LOCALS",1)~
== BCERND @2161 == BE3FADE @2162 == BCERND @2163
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADECERNDTALK2","LOCALS",0)~ THEN BCERND fadecernd2
@2164 DO ~SetGlobal("E3FADECERNDTALK2","LOCALS",1)~
== BE3FADE @2165 == BCERND @2166 == BE3FADE @2167 == BCERND @2168 == BE3FADE @2169 == BCERND @2170 == BE3FADE @2171 == BCERND @2172
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Global("E3FADEEDWINTALK","LOCALS",0)~ THEN BE3FADE fadeedwinhowmany
@715 DO ~SetGlobal("E3FADEEDWINTALK","LOCALS",1)~
== BEDWIN @716
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEEDWINTALK2","LOCALS",0)~ THEN BEDWIN fadeedwinfeet
@2540 DO ~SetGlobal("E3FADEEDWINTALK2","LOCALS",1)~
== BE3FADE @2541 == BEDWIN @2542 == BE3FADE @2543 == BEDWIN @2544
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",STATE_SLEEPING)
Global("E3FADEEDWINA","LOCALS",0)~ THEN BE3FADE fadeedwina
@2644 DO ~SetGlobal("E3FADEEDWINA","LOCALS",1)~
== BEDWIN @2645
EXIT

CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("E3FADEHAERTALK","LOCALS",0)~ THEN BE3FADE fadehaerwonder
@140 DO ~SetGlobal("E3FADEHAERTALK","LOCALS",1)~
== BHAERDA @141 = @142 == BE3FADE @143 == BHAERDA @144 == BE3FADE @145 = @146 == BHAERDA @147 == BE3FADE @148
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEHAERTALK2","LOCALS",0)~ THEN BHAERDA fadehaersigil
@2510 DO ~SetGlobal("E3FADEHAERTALK2","LOCALS",1)~
== BE3FADE @2511 == BHAERDA @2512 == BE3FADE @2513 == BHAERDA @2514 == BE3FADE @2515 == BHAERDA @2516
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("E3FADEIMOENTALK1","LOCALS",0)
GlobalGT("E3LOVETALK","GLOBAL",15)~ THEN BE3FADE fadeimoenmagic
@2545 DO ~SetGlobal("E3FADEIMOENTALK1","LOCALS",1)~
== IMOEN2J @2546 == BE3FADE @2547 == IMOEN2J @2548 == BE3FADE @2549 == IMOEN2J @2550 == BE3FADE @2551
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("E3FADEIMOENTALK2","LOCALS",0)~ THEN BE3FADE fadeimoencookies
@2552 DO ~SetGlobal("E3FADEIMOENTALK2","LOCALS",1)~
== IMOEN2J @2553 == BE3FADE @2554 == IMOEN2J @2555 == BE3FADE @2556 == IMOEN2J @2557
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("E3FADEJAHEIRATALK1","LOCALS",0)~ THEN BE3FADE fadejaheira1
@2173 DO ~SetGlobal("E3FADEJAHEIRATALK1","LOCALS",1)~
== BJAHEIR @2174 == BE3FADE @2175 == BJAHEIR @2176 == BE3FADE @2177
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("E3FADEJAHEIRATALK2","LOCALS",0)~ THEN BE3FADE fadejaheira2
@2178 DO ~SetGlobal("E3FADEJAHEIRATALK2","LOCALS",1)~
== BJAHEIR @2179 == BE3FADE @2180 == BJAHEIR @2181 == BE3FADE @2182 == BJAHEIR @2183
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("E3FADEJANTALK1","LOCALS",0)~ THEN BE3FADE fadejanstuff
@67 DO ~SetGlobal("E3FADEJANTALK1","LOCALS",1)
SetGlobal("E3FADEJANTALK1","GLOBAL",1)~
== BJAN @68 == BE3FADE @69 == BJAN @70 = @71 == BE3FADE @72 == BJAN @73 == BE3FADE @74 == BJAN @75 == BE3FADE @76 == BJAN @77 == BE3FADE @78 == BJAN @79 == BE3FADE @80
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEJANTALK1","GLOBAL",1)
Global("E3FADEJANTALK2","LOCALS",0)~ THEN BJAN fadejanturnips
@81 DO ~SetGlobal("E3FADEJANTALK2","LOCALS",1)~
== BE3FADE @82 == BJAN @83 == BE3FADE @84 == BJAN @85 == BE3FADE @86 == BJAN @87 = @88 = @89 = @90 == BE3FADE @91
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("E3FADEKELDORNTALK1","LOCALS",0)~ THEN BE3FADE fadekeldorn
@2517 DO ~SetGlobal("E3FADEKELDORNTALK1","LOCALS",1)~
== BKELDOR @2518 == BE3FADE @2519 == BKELDOR @2520 == BE3FADE @2521 == BKELDOR @2522 == BE3FADE @2523 == BKELDOR @2524 == BE3FADE @2525 == BKELDOR @2526 = @2527 == BE3FADE @2528
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEKORGANTALK1","LOCALS",0)~ THEN BKORGAN fadekorgantails
@112 DO ~SetGlobal("E3FADEKORGANTALK1","LOCALS",1)
SetGlobal("E3FADEKORGANTALK1","GLOBAL",1)~
== BE3FADE @113 == BKORGAN @114 == BE3FADE @115 == BKORGAN @116 == BE3FADE @117 == BKORGAN @118 == BE3FADE @119 == BKORGAN @120 == BE3FADE @121
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("E3FADEKORGANTALK1","GLOBAL",1)
Global("E3FADEKORGANTALK2","LOCALS",0)~ THEN BE3FADE fadekorganthreat
@717 DO ~SetGlobal("E3FADEKORGANTALK2","LOCALS",1)~
== BKORGAN @718 == BE3FADE @719 == BKORGAN @720 == BE3FADE @721 == BKORGAN @722 == BE3FADE @723 == BKORGAN @724 == BE3FADE @725 == BKORGAN @726
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEMAZZYTALK1","LOCALS",0)~ THEN BMAZZY fademazzyreligion
@92 = @93 DO ~SetGlobal("E3FADEMAZZYTALK1","LOCALS",0)~ 
== BE3FADE @94 == BMAZZY @95 == BE3FADE @96 == BMAZZY @97 == BE3FADE @98 == BMAZZY @99 == BE3FADE @100
== BMAZZY IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @101 
== BE3FADE IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @102
== BMAZZY IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @103
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("E3FADEMAZZYTALK2","LOCALS",0)~ THEN BE3FADE fademazzyfamily
@104 DO ~SetGlobal("E3FADEMAZZYTALK2","LOCALS",1)~
== BMAZZY @105 == BE3FADE @106 == BMAZZY @107 == BE3FADE @108 == BMAZZY @109 == BE3FADE @110 == BMAZZY @111
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("E3FADEMINSCTALK","LOCALS",0)
Global("E3FADEMATCH","GLOBAL",1)~ THEN BE3FADE fademinscrat
@18 DO ~SetGlobal("E3FADEMINSCTALK","LOCALS",1)~
== BMINSC @19 == BE3FADE @20 == BMINSC @21
END
IF ~~ THEN REPLY @22 GOTO fademinscrat2

CHAIN
IF ~~ THEN BE3FADE fademinscrat2
@23 == BMINSC @24 == BE3FADE @25 == BMINSC @26 == BE3FADE @27
END
IF ~~ THEN REPLY @28 GOTO fademinscrat3
IF ~~ THEN REPLY @29 GOTO fademinscrat4

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEMINSCTALK2","LOCALS",0)~ THEN BMINSC fademinsc2
@2184 DO ~SetGlobal("E3FADEMINSCTALK2","LOCALS",1)~
== BE3FADE @2185 == BMINSC @2186 == BE3FADE @2187 == BMINSC @2188
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("E3FADEMINSCTALK3","LOCALS",0)~ THEN BE3FADE fademinsc3
@2189 DO ~SetGlobal("E3FADEMINSCTALK3","LOCALS",1)~
== BMINSC @2190 == BE3FADE @2191 == BMINSC @2192 == BE3FADE @2193 == BMINSC @2194 == BE3FADE @2195 == BMINSC @2196
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("E3FADENALIATALK1","GLOBAL",0)~ THEN BE3FADE fadenalia1
@2529 DO ~SetGlobal("E3FADENALIATALK1","GLOBAL",1)~
== BNALIA @2530 == BE3FADE @2531 == BNALIA @2532 == BE3FADE @2533 == BNALIA @2534 == BE3FADE @2535 == BNALIA @2536 == BE3FADE @2537
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADENALIATALK1","GLOBAL",1)~ THEN BNALIA fadenalia2
@2538 DO ~SetGlobal("E3FADENALIATALK1","GLOBAL",2)~
== BE3FADE @2539
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
AreaType(FOREST)
Global("E3FADEVALYGARTALK","LOCALS",0)~ THEN BE3FADE fadevalygarbear
@149 DO ~SetGlobal("E3FADEVALYGARTALK","LOCALS",1)~
== BVALYGA @150 == BE3FADE @151 == BVALYGA @152 == BE3FADE @153 == BVALYGA @154 = @155
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("E3FADEVALYGARTALK2","LOCALS",0)~ THEN BE3FADE fadevalygarsmile
@2584 DO ~SetGlobal("E3FADEVALYGARTALK2","LOCALS",1)~
== BVALYGA @2585 == BE3FADE @2586 == BVALYGA @2587 == BE3FADE @2588 == BVALYGA @2589 == BE3FADE @2590 == BVALYGA @2591 == BE3FADE @2592
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("E3FADEVICONIATALK1","LOCALS",0)~ THEN BE3FADE fadeviconia1
@2575 DO ~SetGlobal("E3FADEVICONIATALK1","LOCALS",1)~
== BVICONI @2576 == BE3FADE @2577 == BVICONI @2578
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEVICONIATALK2","LOCALS",0)~ THEN BVICONI fadeviconia2
@2579 DO ~SetGlobal("E3FADEVICONIATALK2","LOCALS",1)~
== BE3FADE @2580 == BVICONI @2581 == BE3FADE @2582 == BVICONI @2583
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEYOSHIMOTALK","LOCALS",0)~ THEN BYOSHIM fadeyoshimo
@2564 DO ~SetGlobal("E3FADEYOSHIMOTALK","LOCALS",1)~
== BE3FADE @2565 == BYOSHIM @2566 == BE3FADE @2567 == BYOSHIM @2568 == BE3FADE @2569
EXIT

APPEND BAERIE
IF ~~ THEN BEGIN fadevsaerie_like
SAY @1945
IF ~~ THEN DO ~SetGlobal("AERIEROMANCEACTIVE","GLOBAL",3)~ EXTERN BE3FADE fadevsaerie_like_2
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN placate
SAY @139
IF ~~ THEN EXIT
END
END

APPEND BMINSC
IF ~~ THEN BEGIN fademinscrat5
SAY @37
IF ~~ THEN EXTERN BE3FADE fademinscrat6
END

IF ~~ THEN BEGIN fademinscrat9
SAY @37
IF ~~ THEN EXTERN BE3FADE fademinscrat10
END

IF ~~ THEN BEGIN fademinscrat14
SAY @37
IF ~~ THEN EXTERN BE3FADE fademinscrat15
END

IF ~~ THEN BEGIN fademinscrat19
SAY @38 = @39
IF ~~ THEN REPLY @44 EXIT
END
END

APPEND BVICONI
IF ~~ THEN BEGIN vicbad
SAY @675
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadevsviconia3_saying
SAY @1966
IF ~~ THEN DO ~SetGlobal("VICONIAROMANCEACTIVE","GLOBAL",3)~ EXTERN BE3FADE fadevsviconia3_saying_2
END
END

INTERJECT BE3FADE lt4_start e3fadevsaerie
== BAERIE IF ~InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AERIEROMANCEACTIVE","GLOBAL",1)~ THEN @1933
== BE3FADE IF ~InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AERIEROMANCEACTIVE","GLOBAL",1)~ THEN @1934
== BAERIE IF ~InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AERIEROMANCEACTIVE","GLOBAL",1)~ THEN @1935
== BE3FADE IF ~InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AERIEROMANCEACTIVE","GLOBAL",1)~ THEN @1936
== BAERIE IF ~InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AERIEROMANCEACTIVE","GLOBAL",1)~ THEN @1937
== BE3FADE IF ~InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AERIEROMANCEACTIVE","GLOBAL",1)~ THEN @1938
== BAERIE IF ~InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AERIEROMANCEACTIVE","GLOBAL",1)~ THEN @1939
== BE3FADE IF ~InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AERIEROMANCEACTIVE","GLOBAL",1)~ THEN @1940
== BAERIE IF ~InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AERIEROMANCEACTIVE","GLOBAL",1)~ THEN @1941
END
IF ~~ THEN REPLY @1942 GOTO fadevsaerie_me
IF ~~ THEN REPLY @1943 EXTERN BAERIE fadevsaerie_like

INTERJECT BE3FADE lt10_start e3fadevsviconia1
== BVICONI IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1947
== BE3FADE IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1948
== BVICONI IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1949
== BE3FADE IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1950
== BVICONI IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1951
END
IF ~~ THEN REPLY @1952 GOTO lt10_childhood
IF ~~ THEN REPLY @1953 GOTO lt10_waned

INTERJECT BE3FADE lt20_start e3fadevsviconia3
== BVICONI IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1954
== BE3FADE IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1955
== BVICONI IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1956
== BE3FADE IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1957
== BVICONI IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1958
== BE3FADE IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1959
== BVICONI IF ~InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VICONIAROMANCEACTIVE","GLOBAL",1)~ THEN @1960
END
IF ~~ THEN REPLY @1961 GOTO fadevsviconia3_point
IF ~~ THEN REPLY @1962 EXTERN BVICONI fadevsviconia3_saying
IF ~~ THEN REPLY @1963 GOTO fadevsviconia3_interest

INTERJECT BE3FADE lt14_start e3fadevsjaheira
== BJAHEIR IF ~InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JAHEIRAROMANCEACTIVE","GLOBAL",1)~ THEN @1968
== BE3FADE IF ~InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JAHEIRAROMANCEACTIVE","GLOBAL",1)~ THEN @1969
== BJAHEIR IF ~InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JAHEIRAROMANCEACTIVE","GLOBAL",1)~ THEN @1970
== BE3FADE IF ~InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JAHEIRAROMANCEACTIVE","GLOBAL",1)~ THEN @1971
== BJAHEIR IF ~InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JAHEIRAROMANCEACTIVE","GLOBAL",1)~ THEN @1972
== BE3FADE IF ~InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JAHEIRAROMANCEACTIVE","GLOBAL",1)~ THEN @1973
END
IF ~~ THEN REPLY @1974 GOTO fadevsjaheira_apologise
IF ~~ THEN REPLY @1975 EXTERN BJAHEIR fadevsjaheira_slack
IF ~~ THEN REPLY @1976 GOTO fadevsjaheira_tolerate





