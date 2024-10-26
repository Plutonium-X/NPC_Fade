BEGIN E3FADE

IF ~Global("E3ACCEPTFADE","GLOBAL",1)~ THEN BEGIN fadeaccept
SAY @96
IF ~~ THEN REPLY @97 DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @98 EXIT
IF ~~ THEN REPLY @99 GOTO fadeaccept2
END

IF ~~ THEN BEGIN fadeaccept2
SAY @100
IF ~~ THEN DO ~SetGlobal("E3ACCEPTFADE","GLOBAL",2)~ EXIT
END

IF ~Global("E3ACCEPTFADE","GLOBAL",2)~ THEN BEGIN fadechange
SAY @101
IF ~~ THEN REPLY @102 GOTO fadechange2
IF ~~ THEN REPLY @103 GOTO fadechange3
END

IF ~~ THEN BEGIN fadechange2
SAY @104
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN fadechange3
SAY @100
IF ~~ THEN EXIT
END

IF ~Global("E3REFUSEFADE","GLOBAL",1)~ THEN BEGIN faderefuse
SAY @101
IF ~~ THEN REPLY @102 GOTO faderefuse2
IF ~~ THEN REPLY @103 GOTO faderefuse4
END

IF ~~ THEN BEGIN faderefuse2
SAY @104
IF ~~ THEN REPLY @105 GOTO faderefuse3
IF ~~ THEN REPLY @106 GOTO faderefuse3
IF ~~ THEN REPLY @107 DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN faderefuse3
SAY @108
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN faderefuse4
SAY @100
IF ~~ THEN EXIT
END

BEGIN E3FADEP
IF ~Global("E3FADEVAMPIRE","GLOBAL",5)~ THEN BEGIN vampire_start
SAY @256
IF ~~ THEN DO ~SetGlobal("E3FADEVAMPIRE","GLOBAL",6)~ EXTERN OGHMONK1 vampire_start
END

IF ~~ THEN BEGIN vampire_fade
SAY @260
IF ~~ THEN REPLY @261 GOTO vampire_closer
IF ~~ THEN REPLY @262 GOTO vampire_need
IF ~~ THEN REPLY @263 GOTO vampire_fight
END

IF ~~ THEN BEGIN vampire_closer
SAY @265
IF ~~ THEN REPLY @266 GOTO vampire_need
IF ~~ THEN REPLY @263 GOTO vampire_fight
END

IF ~~ THEN BEGIN vampire_need
SAY @267 = @268
IF ~~ THEN REPLY @269 GOTO vampire_okay
IF ~~ THEN REPLY @270 GOTO vampire_alright
END

IF ~~ THEN BEGIN vampire_fight
SAY @271 = @268
IF ~~ THEN REPLY @269 GOTO vampire_okay
IF ~~ THEN REPLY @270 GOTO vampire_alright
END

IF ~~ THEN BEGIN vampire_okay
SAY @272 = @273
IF ~~ THEN REPLY @274 GOTO vampire_love
IF ~~ THEN REPLY @275 GOTO vampire_heart
IF ~~ THEN REPLY @276 GOTO vampire_kiss
END

IF ~~ THEN BEGIN vampire_alright
SAY @277 = @273
IF ~~ THEN REPLY @274 GOTO vampire_love
IF ~~ THEN REPLY @275 GOTO vampire_heart
IF ~~ THEN REPLY @276 GOTO vampire_kiss
END

IF ~~ THEN BEGIN vampire_love
SAY @278 = @279
IF ~~ THEN REPLY @280 GOTO vampire_matters
IF ~~ THEN REPLY @276 GOTO vampire_kiss
END

IF ~~ THEN BEGIN vampire_heart
SAY @281 = @282
IF ~~ THEN REPLY @283 GOTO vampire_matters
IF ~~ THEN REPLY @276 GOTO vampire_kiss
END

IF ~~ THEN BEGIN vampire_kiss
SAY @284
IF ~~ THEN SOLVED_JOURNAL @286 
DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN vampire_matters
SAY @285
IF ~~ THEN SOLVED_JOURNAL @286
DO ~JoinParty()~ EXIT
END

IF ~Global("E3FADEJOINED","LOCALS",0)
Global("E3FADEARANONOWN","GLOBAL",1)
Global("E3FINALQUEST","GLOBAL",1)~ THEN BEGIN fadeonown1
SAY @487
IF ~~ THEN EXIT
END

IF ~Global("E3FADEJOINED","LOCALS",0)
Global("E3FADEARANONOWN","GLOBAL",2)
Global("E3FINALQUEST","GLOBAL",2)~ THEN BEGIN fadeonown2
SAY @488
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
SetGlobal("E3FADEARANONOWN","GLOBAL",3)
JoinParty()~ EXIT
END

IF ~Global("E3SLAVERKIDNAP","GLOBAL",2)
!Global("E3BOUGHTFADE","GLOBAL",1)
Dead("E3Mallon")
OR(2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN BEGIN kidnap_1_start
SAY @156 = @157
IF ~~ THEN REPLY @158 
DO ~SetGlobal("E3SLAVERKIDNAP","GLOBAL",3)~ GOTO kidnap_1_rescue
END

IF ~~ THEN BEGIN kidnap_1_rescue
SAY @159 = @160
IF ~~ THEN REPLY @161 GOTO kidnap_1_untie
IF ~~ THEN REPLY @162 GOTO kidnap_1_happened
END

IF ~~ THEN BEGIN kidnap_1_untie
SAY @163
IF ~~ THEN REPLY @164 GOTO kidnap_1_look
IF ~~ THEN REPLY @165 GOTO kidnap_1_comfort
IF ~~ THEN REPLY @166 GOTO kidnap_1_equipment
END

IF ~~ THEN BEGIN kidnap_1_happened
SAY @167
IF ~~ THEN REPLY @168 GOTO kidnap_1_untie
END

IF ~~ THEN BEGIN kidnap_1_look
SAY @169
IF ~~ THEN REPLY @170 GOTO kidnap_1_equipment
IF ~~ THEN REPLY @171 GOTO kidnap_1_injuries
END

IF ~~ THEN BEGIN kidnap_1_comfort
SAY @172
IF ~~ THEN REPLY @170 GOTO kidnap_1_equipment
IF ~~ THEN REPLY @173 GOTO kidnap_1_injuries
IF ~~ THEN REPLY @174 GOTO kidnap_1_why
END

IF ~~ THEN BEGIN kidnap_1_equipment
SAY @175
IF ~~ THEN REPLY @176 GOTO kidnap_1_corpse
IF ~~ THEN REPLY @177 GOTO kidnap_1_rage
END

IF ~~ THEN BEGIN kidnap_1_injuries
SAY @178
IF ~~ THEN REPLY @176 GOTO kidnap_1_corpse
IF ~~ THEN REPLY @177 GOTO kidnap_1_rage
END

IF ~~ THEN BEGIN kidnap_1_why
SAY @179 = @175
IF ~~ THEN REPLY @176 GOTO kidnap_1_corpse
IF ~~ THEN REPLY @177 GOTO kidnap_1_rage
END

IF ~~ THEN BEGIN kidnap_1_corpse
SAY @180
IF ~~ THEN REPLY @181 GOTO kidnap_1_rage
IF ~~ THEN REPLY @182 GOTO kidnap_1_drag
END

IF ~~ THEN BEGIN kidnap_1_rage
SAY @183 = @184 = @185 = @186
IF ~~ THEN REPLY @187 GOTO kidnap_1_treatment
IF ~~ THEN REPLY @188 GOTO kidnap_1_insane
IF ~~ THEN REPLY @189 GOTO kidnap_1_later
END

IF ~~ THEN BEGIN kidnap_1_insane
SAY @190
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
END

IF ~~ THEN BEGIN kidnap_1_drag
SAY @191 = @186
IF ~~ THEN REPLY @187 GOTO kidnap_1_treatment
IF ~~ THEN REPLY @188 GOTO kidnap_1_insane
IF ~~ THEN REPLY @189 GOTO kidnap_1_later
END

IF ~~ THEN BEGIN kidnap_1_treatment
SAY @192 = @193
IF ~~ THEN DO ~SetGlobalTimer("E3TREATMENTTIMER","GLOBAL",ONE_DAY)
SetGlobal("E3TREATMENTNOFLIRT","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN kidnap_1_later
SAY @194
IF ~~ THEN REPLY @195 GOTO kidnap_1_treatment
IF ~~ THEN REPLY @196 GOTO kidnap_1_sorry
END

IF ~~ THEN BEGIN kidnap_1_sorry
SAY @197
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
END

IF ~Global("E3SLAVERKIDNAP","GLOBAL",2)
Global("E3BOUGHTFADE","GLOBAL",1)
OR(2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN BEGIN kidnap_2_start
SAY @156 = @157
IF ~~ THEN REPLY @158 
DO ~SetGlobal("E3SLAVERKIDNAP","GLOBAL",3)~ GOTO kidnap_2_rescue
END

IF ~~ THEN BEGIN kidnap_2_rescue
SAY @159 = @160
IF ~~ THEN REPLY @161 GOTO kidnap_2_untie
IF ~~ THEN REPLY @162 GOTO kidnap_2_happened
END

IF ~~ THEN BEGIN kidnap_2_untie
SAY @163
IF ~~ THEN REPLY @164 GOTO kidnap_2_look
IF ~~ THEN REPLY @165 GOTO kidnap_2_comfort
IF ~~ THEN REPLY @166 GOTO kidnap_2_equipment
END

IF ~~ THEN BEGIN kidnap_2_happened
SAY @167
IF ~~ THEN REPLY @168 GOTO kidnap_2_untie
END

IF ~~ THEN BEGIN kidnap_2_look
SAY @169
IF ~~ THEN REPLY @170 GOTO kidnap_2_equipment
IF ~~ THEN REPLY @171 GOTO kidnap_2_injuries
END

IF ~~ THEN BEGIN kidnap_2_comfort
SAY @172
IF ~~ THEN REPLY @170 GOTO kidnap_2_equipment
IF ~~ THEN REPLY @173 GOTO kidnap_2_injuries
IF ~~ THEN REPLY @174 GOTO kidnap_2_why
END

IF ~~ THEN BEGIN kidnap_2_equipment
SAY @198 = @199
IF ~~ THEN REPLY @200 GOTO kidnap_2_contract
IF ~PartyHasItem("E3Contra")~ THEN REPLY @201 GOTO kidnap_2_yourself
IF ~~ THEN REPLY @202 GOTO kidnap_2_bed
END

IF ~~ THEN BEGIN kidnap_2_injuries
SAY @203 = @199
IF ~~ THEN REPLY @200 GOTO kidnap_2_contract
IF ~PartyHasItem("E3Contra")~ THEN REPLY @201 GOTO kidnap_2_yourself
IF ~~ THEN REPLY @202 GOTO kidnap_2_bed
END

IF ~~ THEN BEGIN kidnap_2_why
SAY @179 = @198 = @199
IF ~~ THEN REPLY @200 GOTO kidnap_2_contract
IF ~PartyHasItem("E3Contra")~ THEN REPLY @201 GOTO kidnap_2_yourself
IF ~~ THEN REPLY @202 GOTO kidnap_2_bed
END

IF ~~ THEN BEGIN kidnap_2_contract
SAY @204 = @205
IF ~~ THEN REPLY @206 GOTO kidnap_2_hug
IF ~~ THEN REPLY @207 GOTO kidnap_2_welcome
END

IF ~~ THEN BEGIN kidnap_2_yourself
SAY @208 
IF ~~ THEN DO ~TakePartyItem("E3Contra")
DestroyItem("E3Contra")~ GOTO kidnap_2_yourself2
END

IF ~~ THEN BEGIN kidnap_2_yourself2
SAY @209
IF ~~ THEN REPLY @206 GOTO kidnap_2_hug
IF ~~ THEN REPLY @207 GOTO kidnap_2_welcome
END

IF ~~ THEN BEGIN kidnap_2_bed
SAY @210 = @211
IF ~~ THEN DO ~Enemy()
ChangeAIScript("WTASIGHT",DEFAULT)~ EXIT
END

IF ~~ THEN BEGIN kidnap_2_hug
SAY @212 = @213
IF ~~ THEN REPLY @187 GOTO kidnap_2_treatment
IF ~~ THEN REPLY @189 GOTO kidnap_2_later
END

IF ~~ THEN BEGIN kidnap_2_welcome
SAY @186
IF ~~ THEN REPLY @187 GOTO kidnap_2_treatment
IF ~~ THEN REPLY @189 GOTO kidnap_2_later
END

IF ~~ THEN BEGIN kidnap_2_treatment
SAY @192 = @193
IF ~~ THEN DO ~SetGlobalTimer("E3TREATMENTTIMER","GLOBAL",ONE_DAY)
SetGlobal("E3TREATMENTNOFLIRT","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN kidnap_2_later
SAY @194
IF ~~ THEN REPLY @195 GOTO kidnap_2_treatment
IF ~~ THEN REPLY @196 GOTO kidnap_2_sorry
END

IF ~~ THEN BEGIN kidnap_2_sorry
SAY @197
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
SetGlobal("E3FADEJOINED","LOCALS",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
END

IF ~!Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3FADEJOINED","LOCALS",1)~ THEN BEGIN fadeleave
SAY @109
IF ~~ THEN REPLY @110 GOTO fadeleave2
IF ~~ THEN REPLY @111 GOTO fadeleave3
END

IF ~~ THEN BEGIN fadeleave2
SAY @112
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @113 DO ~SetGlobal("E3FADEJOINED","LOCALS",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!InWatchersKeep()~ THEN REPLY @114 DO ~SetGlobal("E3FADEJOINED","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN fadeleave3
SAY @115
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3FADEJOINED","LOCALS",1)~ THEN BEGIN faderomleave
SAY @116
IF ~~ THEN REPLY @117 GOTO faderomleave2
IF ~~ THEN REPLY @118 GOTO faderomleave3
END

IF ~~ THEN BEGIN faderomleave2
SAY @119
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @113 DO ~SetGlobal("E3FADEJOINED","GLOBAL",0)
MoveGlobal("AR0307","E3Fade",[4836.2136])~ EXIT
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!InWatchersKeep()~ THEN REPLY @114 DO ~SetGlobal("E3FADEJOINED","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN faderomleave3
SAY @120
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("E3FADEJOINED","LOCALS",0)~ THEN BEGIN faderejoin
SAY @121
IF ~~ THEN REPLY @122 GOTO faderejoin2
IF ~~ THEN REPLY @123 GOTO faderejoin3
IF ~~ THEN REPLY @124 EXIT
IF ~~ THEN REPLY @125 EXIT
END

IF ~~ THEN BEGIN faderejoin2
SAY @126
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN faderejoin3
SAY @127
IF ~~ THEN DO ~SetGlobal("E3FADEJOINED","LOCALS",1)
JoinParty()~ EXIT
END

BEGIN E3FADEJ

IF ~InParty(Myself)
Global("AttackedThieves","GLOBAL",1)~ THEN BEGIN attackedthieves
SAY @666
IF ~~ THEN DO ~SetGlobal("E3FADEISREALLYDEAD","GLOBAL",1)
LeaveParty()
ChangeAIScript("WTASIGHT",DEFAULT)
Enemy()
EquipMostDamagingMelee()
Attack(NearestEnemyOf(Myself))~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0300")
Global("E3FADEDOCKSTALK","LOCALS",0)~ THEN BEGIN fadedocks
SAY @8
IF ~~ THEN DO ~SetGlobal("E3FADEDOCKSTALK","LOCALS",1)~ GOTO fadedocks14
END

IF ~~ THEN BEGIN fadedocks2
SAY @13
IF ~~ THEN REPLY @14 GOTO fadedocks3
IF ~~ THEN REPLY @15 GOTO fadedocks4
IF ~~ THEN REPLY @16 GOTO fadedocks13
IF ~~ THEN REPLY @17 GOTO fadedocks5
END

IF ~~ THEN BEGIN fadedocks3
SAY @28 = @29 = @30 = @31
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks4
SAY @18 = @19 = @20
IF ~~ THEN REPLY @21 GOTO fadedocks5
IF ~~ THEN REPLY @22 GOTO fadedocks11
IF ~~ THEN REPLY @23 GOTO fadedocks12
END

IF ~~ THEN BEGIN fadedocks5
SAY @24
IF ~~ THEN REPLY @25 GOTO fadedocks6
IF ~~ THEN REPLY @26 GOTO fadedocks7
IF ~~ THEN REPLY @27 GOTO fadedocks8
END

IF ~~ THEN BEGIN fadedocks6
SAY @38 = @39 = @40
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks7
SAY @41 = @42
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks8
SAY @43
IF ~~ THEN REPLY @44 GOTO fadedocks9
IF ~~ THEN REPLY @45 GOTO fadedocks10
END

IF ~~ THEN BEGIN fadedocks9
SAY @46
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks10
SAY @47
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks11
SAY @34 = @35
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks12
SAY @36 = @37
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks13
SAY @32 = @33 = @31
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadedocks14
SAY @9
IF ~~ THEN REPLY @10 GOTO fadedocks2
IF ~~ THEN REPLY @11 GOTO fadedocks4
IF ~~ THEN REPLY @12 GOTO fadedocks5
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR2013")
PartyHasItem("misc8l")
Global("E3FADETOMBTALK","LOCALS",0)~ THEN BEGIN fadetomb
SAY @48
IF ~~ THEN REPLY @49 DO ~SetGlobal("E3FADETOMBTALK","LOCALS",1)~ GOTO fadetomb2
IF ~~ THEN REPLY @50 DO ~SetGlobal("E3FADETOMBTALK","LOCALS",1)~ GOTO fadetomb16
IF ~~ THEN REPLY @51 DO ~SetGlobal("E3FADETOMBTALK","LOCALS",1)~ GOTO fadetomb17
END

IF ~~ THEN BEGIN fadetomb2
SAY @52
IF ~~ THEN REPLY @55 GOTO fadetomb3
IF ~~ THEN REPLY @56 GOTO fadetomb11
IF ~~ THEN REPLY @57 GOTO fadetomb15
END

IF ~~ THEN BEGIN fadetomb3
SAY @58 = @59
IF ~~ THEN REPLY @62 GOTO fadetomb4
IF ~~ THEN REPLY @63 GOTO fadetomb9
IF ~~ THEN REPLY @64 GOTO fadetomb10
IF ~~ THEN REPLY @65 EXIT
END

IF ~~ THEN BEGIN fadetomb4
SAY @69 = @70
IF ~~ THEN REPLY @76 GOTO fadetomb5
IF ~~ THEN REPLY @79 GOTO fadetomb6
IF ~~ THEN REPLY @80 GOTO fadetomb5
END

IF ~~ THEN BEGIN fadetomb5
SAY @83
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadetomb6
SAY @85
IF ~~ THEN REPLY @91 GOTO fadetomb5
IF ~~ THEN REPLY @92 GOTO fadetomb7
END

IF ~~ THEN BEGIN fadetomb7
SAY @93
IF ~~ THEN REPLY @81 EXIT
IF ~Global("E3FADEMATCH","GLOBAL",1)
OR (2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @82 GOTO fadetomb8
END

IF ~~ THEN BEGIN fadetomb8
SAY @86 = @87
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadetomb9
SAY @73 = @74
IF ~~ THEN REPLY @76 GOTO fadetomb5
IF ~~ THEN REPLY @77 GOTO fadetomb10
IF ~~ THEN REPLY @79 GOTO fadetomb6
IF ~~ THEN REPLY @80 GOTO fadetomb5
END

IF ~~ THEN BEGIN fadetomb10
SAY @72
IF ~~ THEN REPLY @81 EXIT
IF ~Global("E3FADEMATCH","GLOBAL",1)
OR (2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @82 GOTO fadetomb8
END

IF ~~ THEN BEGIN fadetomb11
SAY @60
IF ~~ THEN REPLY @66 GOTO fadetomb9
IF ~~ THEN REPLY @67 GOTO fadetomb12
IF ~~ THEN REPLY @68 EXIT
END

IF ~~ THEN BEGIN fadetomb12
SAY @71
IF ~~ THEN REPLY @75 GOTO fadetomb10
IF ~!Global("E3FADEMATCH","GLOBAL",1)~ THEN REPLY @78 GOTO fadetomb5
IF ~Global("E3FADEMATCH","GLOBAL",1)
OR (2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @78 GOTO fadetomb13
END

IF ~~ THEN BEGIN fadetomb13
SAY @84
IF ~~ THEN REPLY @88 GOTO fadetomb5
IF ~~ THEN REPLY @89 GOTO fadetomb7
IF ~~ THEN REPLY @90 GOTO fadetomb14
END

IF ~~ THEN BEGIN fadetomb14
SAY @94 = @95
IF ~~ THEN REPLY @81 EXIT
IF ~Global("E3FADEMATCH","GLOBAL",1)
OR (2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @82 GOTO fadetomb8
END

IF ~~ THEN BEGIN fadetomb15
SAY @61
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadetomb16
SAY @53
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadetomb17
SAY @54 
IF ~~ THEN DO ~IncrementGlobal("E3MEANTOFADE","GLOBAL",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0902")
Global("E3FADELATHTALK","LOCALS",0)~ THEN BEGIN fadelath
SAY @128
IF ~~ THEN REPLY @129 DO ~SetGlobal("E3FADELATHTALK","LOCALS",1)~ EXIT
IF ~~ THEN REPLY @130 DO ~SetGlobal("E3FADELATHTALK","LOCALS",1)~ GOTO fadelathwarning
END

IF ~~ THEN BEGIN fadelathwarning
SAY @131 = @132
IF ~~ THEN REPLY @133 GOTO fadelathno
IF ~~ THEN REPLY @134 GOTO fadelathaway
END

IF ~~ THEN BEGIN fadelathno
SAY @135
IF ~~ THEN REPLY @136 GOTO fadelathbehave
IF ~~ THEN REPLY @137 GOTO fadelathhand
END

IF ~~ THEN BEGIN fadelathaway
SAY @138
IF ~~ THEN REPLY @139 GOTO fadelathfuture
IF ~~ THEN REPLY @140 GOTO fadelathsulky
END

IF ~~ THEN BEGIN fadelathbehave
SAY @141
IF ~~ THEN REPLY @142 GOTO fadelathpleasant
IF ~~ THEN REPLY @143 GOTO fadelathoccupied
END

IF ~~ THEN BEGIN fadelathhand
SAY @144
IF ~~ THEN REPLY @142 GOTO fadelathpleasant
IF ~~ THEN REPLY @143 GOTO fadelathoccupied
END

IF ~~ THEN BEGIN fadelathfuture
SAY @145
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadelathsulky
SAY @146
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadelathpleasant
SAY @147 = @148
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadelathoccupied
SAY @149 = @150
IF ~~ THEN REPLY @151 GOTO fadelathshock
IF ~~ THEN REPLY @152 GOTO fadelathlater
END

IF ~~ THEN BEGIN fadelathshock
SAY @153 = @154
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadelathlater
SAY @155 = @154
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0202")
!InParty("Minsc")
Global("BeholderPlot","GLOBAL",1)
Global("E3FADESEWERS","LOCALS",0)~ THEN BEGIN fadesewers_start
SAY @638
IF ~~ THEN REPLY @639 DO ~SetGlobal("E3FADESEWERS","LOCALS",1)~ GOTO fadesewers_dark
IF ~~ THEN REPLY @640 DO ~SetGlobal("E3FADESEWERS","LOCALS",1)~ GOTO fadesewers_investigate
IF ~~ THEN REPLY @641 DO ~SetGlobal("E3FADESEWERS","LOCALS",1)~ GOTO fadesewers_complaining
END

IF ~~ THEN BEGIN fadesewers_dark
SAY @642
IF ~~ THEN REPLY @643 GOTO fadesewers_phobia
IF ~~ THEN REPLY @644 GOTO fadesewers_complaining
IF ~~ THEN REPLY @645 GOTO fadesewers_freak
END

IF ~~ THEN BEGIN fadesewers_investigate
SAY @646 = @647
IF ~~ THEN REPLY @648 GOTO fadesewers_dark
IF ~~ THEN REPLY @649 GOTO fadesewers_rats
END

IF ~~ THEN BEGIN fadesewers_complaining
SAY @650
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_phobia
SAY @651
IF ~~ THEN REPLY @652 GOTO fadesewers_nonsense
IF ~~ THEN REPLY @653 GOTO fadesewers_spiders
IF ~~ THEN REPLY @654 GOTO fadesewers_ignore
END

IF ~~ THEN BEGIN fadesewers_freak
SAY @655
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_rats
SAY @656
IF ~~ THEN REPLY @652 GOTO fadesewers_nonsense
IF ~~ THEN REPLY @653 GOTO fadesewers_spiders
IF ~~ THEN REPLY @654 GOTO fadesewers_ignore
END

IF ~~ THEN BEGIN fadesewers_nonsense
SAY @657
IF ~~ THEN REPLY @658 GOTO fadesewers_sewer
IF ~~ THEN REPLY @659 GOTO fadesewers_back
IF ~~ THEN REPLY @654 GOTO fadesewers_ignore
END

IF ~~ THEN BEGIN fadesewers_spiders
SAY @660
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_ignore
SAY @661 = @662
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_sewer
SAY @663 = @664
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesewers_back
SAY @665
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("E3FADERENAL","LOCALS",1)
OR(2)
AreaCheck("AR0305")
AreaCheck("AR0300")~ THEN BEGIN renal_start
SAY @287
IF ~~ THEN REPLY @288 DO ~SetGlobal("E3FADERENAL","LOCALS",2)~ GOTO renal_nice
IF ~~ THEN REPLY @289 DO ~SetGlobal("E3FADERENAL","LOCALS",2)~ GOTO renal_lackey
IF ~~ THEN REPLY @300 DO ~SetGlobal("E3FADERENAL","LOCALS",2)~ GOTO renal_like
END

IF ~~ THEN BEGIN renal_nice
SAY @301
IF ~~ THEN REPLY @302 GOTO renal_like
IF ~~ THEN REPLY @303 GOTO renal_lackey
END

IF ~~ THEN BEGIN renal_lackey
SAY @304
IF ~~ THEN REPLY @305 GOTO renal_like
IF ~~ THEN REPLY @306 GOTO renal_get
END

IF ~~ THEN BEGIN renal_like
SAY @307 = @308 = @309
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN renal_get
SAY @310
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0301")
Global("E3FADEMAEVAR","LOCALS",0)
Global("MaeVarWork","GLOBAL",0)~ THEN BEGIN maevar_start
SAY @450
IF ~~ THEN REPLY @451 DO ~SetGlobal("E3FADEMAEVAR","LOCALS",1)~ GOTO maevar_notice
IF ~~ THEN REPLY @452 DO ~SetGlobal("E3FADEMAEVAR","LOCALS",1)~ GOTO maevar_outside
END

IF ~~ THEN BEGIN maevar_notice
SAY @453
IF ~~ THEN REPLY @454 GOTO maevar_recognise
IF ~~ THEN REPLY @455 GOTO maevar_outside
IF ~~ THEN REPLY @456 GOTO maevar_talking
END

IF ~~ THEN BEGIN maevar_outside
SAY @457
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN maevar_recognise
SAY @458
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN maevar_talking
SAY @459
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR1002")
Global("E3FADECOUNCILBUILDING","LOCALS",0)~ THEN BEGIN council_start
SAY @446
IF ~InParty("Edwin")~ THEN DO ~SetGlobal("E3FADECOUNCILBUILDING","LOCALS",1)~ EXTERN EDWINJ fadecouncil
IF ~!InParty("Edwin")~ THEN DO ~SetGlobal("E3FADECOUNCILBUILDING","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0800")
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("AranJob","GLOBAL",3)
!Global("LassalVampires","GLOBAL",3)
Global("E3FADEGRAVEYARDGIFT","LOCALS",0)
PartyHasItem("E3AMUL01")~ THEN BEGIN gift_start
SAY @460 = @461
IF ~~ THEN REPLY @462 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift_need
IF ~~ THEN REPLY @463 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift_appreciate
IF ~~ THEN REPLY @464 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift_take
IF ~~ THEN REPLY @465 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift_vampires
END

IF ~~ THEN BEGIN gift_need
SAY @466
IF ~~ THEN REPLY @467 GOTO gift_appreciate
IF ~~ THEN REPLY @468 GOTO gift_take
IF ~~ THEN REPLY @469 GOTO gift_vampires
END

IF ~~ THEN BEGIN gift_appreciate
SAY @470
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN gift_take
SAY @471 = @472
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN gift_vampires
SAY @473 = @472
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0800")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("AranJob","GLOBAL",3)
!Global("LassalVampires","GLOBAL",3)
Global("E3FADEGRAVEYARDGIFT","LOCALS",0)
PartyHasItem("E3AMUL01")~ THEN BEGIN gift2_start
SAY @474 = @461
IF ~~ THEN REPLY @475 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift2_need
IF ~~ THEN REPLY @463 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift2_appreciate
IF ~~ THEN REPLY @464 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift2_take
IF ~~ THEN REPLY @465 DO ~SetGlobal("E3FADEGRAVEYARDGIFT","LOCALS",1)~ GOTO gift2_vampires
END

IF ~~ THEN BEGIN gift2_need
SAY @476
IF ~~ THEN REPLY @477 GOTO gift2_appreciate
IF ~~ THEN REPLY @478 GOTO gift2_take
IF ~~ THEN REPLY @469 GOTO gift2_vampires
END

IF ~~ THEN BEGIN gift2_appreciate
SAY @479
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN gift2_take
SAY @471 = @480
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN gift2_vampires
SAY @481 = @480
IF ~~ THEN DO ~DestroyItem("E3AMUL01")
GiveItemCreate("E3AMUL02",Player1,1,0,0)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!Global("E3FADEROMANCEACTIVE","GLOBAL",1)
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3FADEFIRSTBODHIPOST","LOCALS",0)
AreaCheck("AR0801")~ THEN BEGIN firstbodhipost_start
SAY @636
IF ~~ THEN DO ~SetGlobal("E3FADEFIRSTBODHIPOST","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
   Global("E3FADEROMANCEACTIVE","GLOBAL",1)
   Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3FADEFIRSTBODHIPOST","LOCALS",0)
AreaCheck("AR0801")~ THEN BEGIN firstbodhipost_start
SAY @637
IF ~~ THEN DO ~SetGlobal("E3FADEFIRSTBODHIPOST","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR1602")
Global("E3FADEBRYNNTALK","LOCALS",0)~ THEN BEGIN brynn_start
SAY @214
IF ~~ THEN REPLY @215 DO ~SetGlobal("E3FADEBRYNNTALK","LOCALS",1)~ GOTO brynn_feeling
IF ~~ THEN REPLY @216 DO ~SetGlobal("E3FADEBRYNNTALK","LOCALS",1)~ GOTO brynn_imoen
IF ~~ THEN REPLY @217 DO ~SetGlobal("E3FADEBRYNNTALK","LOCALS",1)~ GOTO brynn_sailing
IF ~~ THEN REPLY @218 DO ~SetGlobal("E3FADEBRYNNTALK","LOCALS",1)~ GOTO brynn_revenge
END

IF ~~ THEN BEGIN brynn_feeling
SAY @219
IF ~~ THEN REPLY @220 GOTO brynn_imoen
IF ~~ THEN REPLY @221 GOTO brynn_revenge
IF ~~ THEN REPLY @222 GOTO brynn_over
END

IF ~~ THEN BEGIN brynn_imoen
SAY @223
IF ~~ THEN REPLY @224 GOTO brynn_right
IF ~~ THEN REPLY @225 GOTO brynn_fine
IF ~~ THEN REPLY @226 GOTO brynn_revenge
END

IF ~~ THEN BEGIN brynn_sailing
SAY @227
IF ~~ THEN REPLY @220 GOTO brynn_imoen
IF ~~ THEN REPLY @221 GOTO brynn_revenge
IF ~~ THEN REPLY @222 GOTO brynn_over
END

IF ~~ THEN BEGIN brynn_revenge
SAY @228
IF ~~ THEN REPLY @229 GOTO brynn_pain
IF ~~ THEN REPLY @230 GOTO brynn_priority
IF ~~ THEN REPLY @231 GOTO brynn_clear
END

IF ~~ THEN BEGIN brynn_over
SAY @232 
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN GOTO brynn_smile
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN GOTO brynn_kiss
IF ~OR(2)
       !Global("E3FADEROMANCEACTIVE","GLOBAL",1)
       !Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_smile
SAY @233
IF ~~ THEN REPLY @234 GOTO brynn_prospect
IF ~~ THEN REPLY @235 GOTO brynn_agree
END

IF ~~ THEN BEGIN brynn_kiss
SAY @236
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_agree
SAY @237
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_right
SAY @238
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_fine
SAY @239
IF ~~ THEN REPLY @240 GOTO brynn_agree
IF ~~ THEN REPLY @241 GOTO brynn_dreams
IF ~~ THEN REPLY @242 GOTO brynn_exciting
END

IF ~~ THEN BEGIN brynn_pain
SAY @243
IF ~~ THEN REPLY @244 GOTO brynn_dare
IF ~~ THEN REPLY @245 GOTO brynn_priority
END

IF ~~ THEN BEGIN brynn_dare
SAY @246
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_priority
SAY @247
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_clear
SAY @248
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_prospect
SAY @249 = @250
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_dreams
SAY @251 = @252
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brynn_exciting
SAY @253
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)
Global("E3FADEMAD2","LOCALS",0)~ THEN BEGIN phaere1_start
SAY @311
IF ~~ THEN REPLY @312 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere1_talking
IF ~~ THEN REPLY @313 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere1_choice
IF ~~ THEN REPLY @314 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere1_male
IF ~~ THEN REPLY @315 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere1_what
END

IF ~~ THEN BEGIN phaere1_talking
SAY @316
IF ~~ THEN REPLY @317 GOTO phaere1_choice
IF ~~ THEN REPLY @318 GOTO phaere1_what
IF ~~ THEN REPLY @319 GOTO phaere1_male
END

IF ~~ THEN BEGIN phaere1_choice
SAY @320
IF ~~ THEN REPLY @321 GOTO phaere1_turn
IF ~~ THEN REPLY @322 GOTO phaere1_what
IF ~~ THEN REPLY @323 GOTO phaere1_male
END

IF ~~ THEN BEGIN phaere1_male
SAY @324
IF ~~ THEN REPLY @325 GOTO phaere1_what
IF ~~ THEN REPLY @326 GOTO phaere1_alive
IF ~~ THEN REPLY @327 GOTO phaere1_turn
IF ~~ THEN REPLY @328 GOTO phaere1_understand
END

IF ~~ THEN BEGIN phaere1_what
SAY @329
IF ~~ THEN REPLY @330 GOTO phaere1_understand
IF ~~ THEN REPLY @326 GOTO phaere1_alive
IF ~~ THEN REPLY @327 GOTO phaere1_turn
END

IF ~~ THEN BEGIN phaere1_turn
SAY @331
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere1_alive
SAY @332
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere1_understand
SAY @333
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)
Global("E3FADEMAD2","LOCALS",0)~ THEN BEGIN phaere2_start
SAY @311
IF ~~ THEN REPLY @312 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere2_talking
IF ~~ THEN REPLY @313 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere2_choice
IF ~~ THEN REPLY @314 DO ~SetGlobal("E3FADEMAD2","LOCALS",1)~ GOTO phaere2_male
END

IF ~~ THEN BEGIN phaere2_talking
SAY @334
IF ~~ THEN REPLY @335 GOTO phaere2_choice
IF ~~ THEN REPLY @336 GOTO phaere2_want
IF ~~ THEN REPLY @319 GOTO phaere2_male
END

IF ~~ THEN BEGIN phaere2_choice
SAY @337
IF ~~ THEN REPLY @321 GOTO phaere2_turn
IF ~~ THEN REPLY @338 GOTO phaere2_situation
IF ~~ THEN REPLY @323 GOTO phaere2_male
IF ~~ THEN REPLY @336 GOTO phaere2_want
END

IF ~~ THEN BEGIN phaere2_male
SAY @324
IF ~~ THEN REPLY @339 GOTO phaere2_alive
IF ~~ THEN REPLY @327 GOTO phaere2_turn
IF ~~ THEN REPLY @328 GOTO phaere2_understand
END

IF ~~ THEN BEGIN phaere2_want
SAY @340
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN phaere2_turn
SAY @341
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere2_situation
SAY @342
IF ~~ THEN REPLY @343 GOTO phaere2_sorry
IF ~~ THEN REPLY @344 GOTO phaere2_alive
IF ~~ THEN REPLY @345 GOTO phaere2_problem
IF ~~ THEN REPLY @346 GOTO phaere2_understand
END

IF ~~ THEN BEGIN phaere2_alive
SAY @347
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere2_understand
SAY @348
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere2_sorry
SAY @349
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere2_problem
SAY @350
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)
Global("E3FADEMAD3","LOCALS",0)~ THEN BEGIN phaere3_start
SAY @351
IF ~~ THEN REPLY @352 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere3_give
IF ~~ THEN REPLY @353 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere3_possible
IF ~~ THEN REPLY @354 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere3_when
END

IF ~~ THEN BEGIN phaere3_give
SAY @355
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere3_possible
SAY @356
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere3_when
SAY @357
IF ~~ THEN REPLY @358 GOTO phaere3_much
IF ~~ THEN REPLY @359 GOTO phaere3_another
END

IF ~~ THEN BEGIN phaere3_much
SAY @360
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere3_another
SAY @361
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)
Global("E3FADEMAD3","LOCALS",0)~ THEN BEGIN phaere4_start
SAY @362
IF ~~ THEN REPLY @363 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere4_couldnt
IF ~~ THEN REPLY @364 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere4_couldnt
IF ~~ THEN REPLY @365 DO ~SetGlobal("E3FADEMAD3","LOCALS",1)~ GOTO phaere4_little
END

IF ~~ THEN BEGIN phaere4_couldnt
SAY @366
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN phaere4_little
SAY @367 = @368
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0500")
Global("E3ARANSMUM","GLOBAL",2)
Global("E3FADEARANSMUM","LOCALS",0)~ THEN BEGIN aransmum_start
SAY @254
IF ~~ THEN DO ~SetGlobal("E3FADEARANSMUM","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0500")
Global("E3ARANSMUM","GLOBAL",4)
Global("E3FADEARANSMUM2","LOCALS",0)~ THEN BEGIN aransmum_quest
SAY @255
IF ~~ THEN DO ~SetGlobal("E3FADEARANSMUM2","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR1900")
Global("E3FADEGROVE","LOCALS",0)~ THEN BEGIN fadegrove
SAY @369
IF ~~ THEN REPLY @370 DO ~SetGlobal("E3FADEGROVE","LOCALS",1)~ GOTO fadegrove_okay
IF ~~ THEN REPLY @371 DO ~SetGlobal("E3FADEGROVE","LOCALS",1)~ GOTO fadegrove_annoyed
END

IF ~~ THEN BEGIN fadegrove_okay
SAY @372
IF ~OR(3)
!InParty("Cernd")
!See("Cernd")
StateCheck("Cernd",STATE_SLEEPING)~ THEN EXIT
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)~ THEN EXTERN CERNDJ fadegrove
END

IF ~~ THEN BEGIN fadegrove_annoyed
SAY @375
IF ~OR(3)
!InParty("Cernd")
!See("Cernd")
StateCheck("Cernd",STATE_SLEEPING)~ THEN EXIT
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)~ THEN EXTERN CERNDJ fadegrove
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR1515")
Global("E3FADESPELLHOLD","LOCALS",0)
Global("HasAsylumWardstone","GLOBAL",1)
OR(2)
Global("PPdeshSend","GLOBAL",0)
Global("PirateRefused","GLOBAL",1)~ THEN BEGIN fadespellhold
SAY @376
IF ~~ THEN DO ~SetGlobal("E3FADESPELLHOLD","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN fadelonk
SAY @377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeimoen
SAY @378
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul1
SAY @380
IF ~~ THEN REPLY @381 GOTO fadesoul1_took
IF ~~ THEN REPLY @382 GOTO fadesoul1_soul
IF ~~ THEN REPLY @383 GOTO fadesoul1_time
END

IF ~~ THEN BEGIN fadesoul1_took
SAY @384
IF ~~ THEN REPLY @385 GOTO fadesoul1_going
IF ~~ THEN REPLY @386 GOTO fadesoul1_reason
IF ~~ THEN REPLY @387 GOTO fadesoul1_time
END

IF ~~ THEN BEGIN fadesoul1_soul
SAY @388
IF ~~ THEN REPLY @389 GOTO fadesoul1_help
IF ~~ THEN REPLY @390 GOTO fadesoul1_imoen
IF ~~ THEN REPLY @391 GOTO fadesoul1_time
END

IF ~~ THEN BEGIN fadesoul1_time
SAY @392 = @393
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul1_going
SAY @394 = @393
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul1_reason
SAY @395
IF ~~ THEN REPLY @389 GOTO fadesoul1_help
IF ~~ THEN REPLY @390 GOTO fadesoul1_imoen
IF ~~ THEN REPLY @391 GOTO fadesoul1_time
END

IF ~~ THEN BEGIN fadesoul1_help
SAY @396
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul1_imoen
SAY @397
IF ~~ THEN REPLY @398 GOTO fadesoul1_time
IF ~~ THEN REPLY @399 GOTO fadesoul1_vision
END

IF ~~ THEN BEGIN fadesoul1_vision
SAY @400 = @393
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul2
SAY @401
IF ~~ THEN REPLY @402 GOTO fadesoul2_took
IF ~~ THEN REPLY @382 GOTO fadesoul2_soul
IF ~~ THEN REPLY @383 GOTO fadesoul2_time
END

IF ~~ THEN BEGIN fadesoul2_took
SAY @384
IF ~~ THEN REPLY @385 GOTO fadesoul2_going
IF ~~ THEN REPLY @386 GOTO fadesoul2_reason
IF ~~ THEN REPLY @387 GOTO fadesoul2_time
IF ~~ THEN REPLY @403 GOTO fadesoul2_worry
END

IF ~~ THEN BEGIN fadesoul2_soul
SAY @388
IF ~~ THEN REPLY @404 GOTO fadesoul2_help
IF ~~ THEN REPLY @390 GOTO fadesoul2_imoen
IF ~~ THEN REPLY @391 GOTO fadesoul2_time
END

IF ~~ THEN BEGIN fadesoul2_time
SAY @392 = @405
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul2_going
SAY @394 = @405
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul2_reason
SAY @395
IF ~~ THEN REPLY @404 GOTO fadesoul2_help
IF ~~ THEN REPLY @390 GOTO fadesoul2_imoen
IF ~~ THEN REPLY @391 GOTO fadesoul2_time
END

IF ~~ THEN BEGIN fadesoul2_worry
SAY @406
IF ~~ THEN REPLY @407 GOTO fadesoul2_going
IF ~~ THEN REPLY @408 GOTO fadesoul2_reason
END

IF ~~ THEN BEGIN fadesoul2_help
SAY @409
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesoul2_imoen
SAY @397
IF ~~ THEN REPLY @398 GOTO fadesoul2_time
IF ~~ THEN REPLY @399 GOTO fadesoul2_vision
END

IF ~~ THEN BEGIN fadesoul2_vision
SAY @400 = @405
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesouln
SAY @380
IF ~~ THEN REPLY @381 GOTO fadesouln_took
IF ~~ THEN REPLY @382 GOTO fadesouln_soul
IF ~~ THEN REPLY @383 GOTO fadesouln_time
END

IF ~~ THEN BEGIN fadesouln_took
SAY @384
IF ~~ THEN REPLY @385 GOTO fadesouln_going
IF ~~ THEN REPLY @386 GOTO fadesouln_reason
IF ~~ THEN REPLY @387 GOTO fadesouln_time
END

IF ~~ THEN BEGIN fadesouln_soul
SAY @388
IF ~~ THEN REPLY @389 GOTO fadesouln_help
IF ~~ THEN REPLY @390 GOTO fadesouln_imoen
IF ~~ THEN REPLY @391 GOTO fadesouln_time
END

IF ~~ THEN BEGIN fadesouln_time
SAY @410
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesouln_going
SAY @411
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesouln_reason
SAY @395
IF ~~ THEN REPLY @389 GOTO fadesouln_help
IF ~~ THEN REPLY @390 GOTO fadesouln_imoen
IF ~~ THEN REPLY @391 GOTO fadesouln_time
END

IF ~~ THEN BEGIN fadesouln_help
SAY @412
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesouln_imoen
SAY @397
IF ~~ THEN REPLY @398 GOTO fadesouln_time
IF ~~ THEN REPLY @399 GOTO fadesouln_vision
END

IF ~~ THEN BEGIN fadesouln_vision
SAY @413
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer
SAY @414
IF ~~ THEN REPLY @415 GOTO fadeslayer_slayer
IF ~~ THEN REPLY @416 GOTO fadeslayer_close
IF ~~ THEN REPLY @417 GOTO fadeslayer_how
IF ~~ THEN REPLY @418 GOTO fadeslayer_power
END

IF ~~ THEN BEGIN fadeslayer_slayer
SAY @419
IF ~~ THEN REPLY @420 GOTO fadeslayer_hurt
IF ~~ THEN REPLY @421 GOTO fadeslayer_swear
IF ~~ THEN REPLY @422 GOTO fadeslayer_need
END

IF ~~ THEN BEGIN fadeslayer_close
SAY @423
IF ~~ THEN REPLY @420 GOTO fadeslayer_hurt
IF ~~ THEN REPLY @421 GOTO fadeslayer_swear
IF ~~ THEN REPLY @422 GOTO fadeslayer_need
END

IF ~~ THEN BEGIN fadeslayer_how
SAY @424 = @425
IF ~~ THEN REPLY @420 GOTO fadeslayer_hurt
IF ~~ THEN REPLY @421 GOTO fadeslayer_swear
IF ~~ THEN REPLY @422 GOTO fadeslayer_need
END

IF ~~ THEN BEGIN fadeslayer_power
SAY @426
IF ~~ THEN REPLY @427 GOTO fadeslayer_again
IF ~~ THEN REPLY @428 GOTO fadeslayer_world
END

IF ~~ THEN BEGIN fadeslayer_hurt
SAY @429
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_swear
SAY @430 = @431
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_need
SAY @432 = @433 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_again
SAY @434 = @433
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_world
SAY @435
IF ~~ THEN REPLY @420 GOTO fadeslayer_backing
IF ~~ THEN REPLY @436 GOTO fadeslayer_defeat
END

IF ~~ THEN BEGIN fadeslayer_backing
SAY @437
IF ~~ THEN REPLY @438 GOTO fadeslayer_urge
IF ~~ THEN REPLY @436 GOTO fadeslayer_defeat
IF ~~ THEN REPLY @439 GOTO fadeslayer_over
END

IF ~~ THEN BEGIN fadeslayer_defeat
SAY @440
IF ~~ THEN REPLY @438 GOTO fadeslayer_urge
IF ~~ THEN REPLY @439 GOTO fadeslayer_over
END

IF ~~ THEN BEGIN fadeslayer_urge
SAY @441
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadeslayer_over
SAY @442
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END  

IF ~GlobalTimerExpired("E3FADEREMINDSARAN","GLOBAL")
Global("E3FADEREMINDER","GLOBAL",0)
Global("E3FINALQUEST","GLOBAL",1)
InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN fade_reminder1
SAY @485 
IF ~~ THEN DO ~SetGlobal("E3FADEREMINDER","GLOBAL",1)
SetGlobalTimer("E3FADEREMINDSARAN","GLOBAL",THREE_DAYS)~ EXIT
END

IF ~GlobalTimerExpired("E3FADEREMINDSARAN","GLOBAL")
Global("E3FADEREMINDER","GLOBAL",1)
Global("E3FINALQUEST","GLOBAL",1)
InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN fade_reminder2
SAY @486
IF ~~ THEN DO ~SetGlobal("E3FADEREMINDER","GLOBAL",2)
SetGlobal("E3FADEARANONOWN","GLOBAL",1)
SetGlobal("E3FADEJOINED","LOCALS",0)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0307",4668,2017,6)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0500")
Global("E3FINALQUEST","GLOBAL",3)
Global("E3POSTFLAGONS","LOCALS",0)~ THEN BEGIN postflagons_start
SAY @489
IF ~~ THEN REPLY @490 DO ~SetGlobal("E3POSTFLAGONS","LOCALS",1)~ GOTO postflagons_alright
IF ~~ THEN REPLY @491 DO ~SetGlobal("E3POSTFLAGONS","LOCALS",1)~ GOTO postflagons_this
END

IF ~~ THEN BEGIN postflagons_alright
SAY @492
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN postflagons_this
SAY @493
IF ~~ THEN EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0318")
Dead("E3Xekral")
Global("E3FINALQUEST","GLOBAL",4)
Global("E3KILLEDXEKRALTALK","LOCALS",0)~ THEN BEGIN killedxekral_start
SAY @494
IF ~~ THEN REPLY @495 DO ~SetGlobal("E3KILLEDXEKRALTALK","LOCALS",1)~ GOTO killedxekral_report
IF ~~ THEN REPLY @496 DO ~SetGlobal("E3KILLEDXEKRALTALK","LOCALS",1)~ GOTO killedxekral_scary
END

IF ~~ THEN BEGIN killedxekral_report
SAY @497
IF ~~ THEN REPLY @498 GOTO killedxekral_deal
IF ~~ THEN REPLY @499 GOTO killedxekral_past
IF ~~ THEN REPLY @500 GOTO killedxekral_punish
END

IF ~~ THEN BEGIN killedxekral_scary
SAY @501
IF ~~ THEN REPLY @498 GOTO killedxekral_deal
IF ~~ THEN REPLY @499 GOTO killedxekral_past
IF ~~ THEN REPLY @500 GOTO killedxekral_punish
END

IF ~~ THEN BEGIN killedxekral_deal
SAY @502
IF ~~ THEN REPLY @503 GOTO killedxekral_punish
IF ~~ THEN REPLY @504 GOTO killedxekral_leave
END

IF ~~ THEN BEGIN killedxekral_past
SAY @505
IF ~~ THEN REPLY @503 GOTO killedxekral_punish
IF ~~ THEN REPLY @504 GOTO killedxekral_leave
END

IF ~~ THEN BEGIN killedxekral_punish
SAY @506
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN killedxekral_leave
SAY @507
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR2600")
Global("ElvenCityTree","GLOBAL",2)
Global("E3DIDSULTALK1","LOCALS",0)~ THEN BEGIN sultalk1_start
SAY @516
IF ~~ THEN REPLY @517 DO ~SetGlobal("E3DIDSULTALK1","LOCALS",1)~ GOTO sultalk1_worry
IF ~~ THEN REPLY @518 DO ~SetGlobal("E3DIDSULTALK1","LOCALS",1)~ GOTO sultalk1_intimidate
IF ~~ THEN REPLY @519 DO ~SetGlobal("E3DIDSULTALK1","LOCALS",1)~ GOTO sultalk1_help
END

IF ~~ THEN BEGIN sultalk1_worry
SAY @520
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sultalk1_intimidate
SAY @521
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sultalk1_help
SAY @522
IF ~~ THEN EXIT
END

IF ~Global("E3DIDSULTALK2","LOCALS",2)~ THEN BEGIN sultalk2_start
SAY @523
IF ~~ THEN DO ~SetGlobal("E3DIDSULTALK2","LOCALS",3)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0202")
Dead("UnseeingEye")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)
Global("E3SEWERSTALK","LOCALS",0)~ THEN BEGIN finalquest4_sewers
SAY @508
IF ~~ THEN DO ~SetGlobal("E3SEWERSTALK","LOCALS",1)~ EXIT
END

IF ~InParty(Myself)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
AreaCheck("AR0204")
Dead("E3Cirion")
Dead("E3Savanya")
Dead("E3Jekhril")
Dead("E3Sume")
Dead("E3Taeghen")
Dead("E3Eriale")
Global("E3FINALQUEST","GLOBAL",7)
Global("E3KILLEDCIRIONTALK","LOCALS",0)~ THEN BEGIN killedcirion_start
SAY @509 
IF ~~ THEN REPLY @510 DO ~SetGlobal("E3KILLEDCIRIONTALK","LOCALS",1)
SetGlobal("E3FINALQUEST","GLOBAL",8)~ GOTO killedcirion_family
IF ~~ THEN REPLY @511 DO ~SetGlobal("E3KILLEDCIRIONTALK","LOCALS",1)
SetGlobal("E3FINALQUEST","GLOBAL",8)~ GOTO killedcirion_know
IF ~~ THEN REPLY @512 DO ~SetGlobal("E3KILLEDCIRIONTALK","LOCALS",1)
SetGlobal("E3FINALQUEST","GLOBAL",8)~ GOTO killedcirion_okay
END

IF ~~ THEN BEGIN killedcirion_family
SAY @513 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN killedcirion_know
SAY @514
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN killedcirion_okay
SAY @515
IF ~~ THEN EXIT
END

IF ~Global("E3FRIENDTALK","GLOBAL",2)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN ft2_start
SAY @524
IF ~~ THEN REPLY @525 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_info
IF ~~ THEN REPLY @526 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_later
IF ~~ THEN REPLY @527 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_insult
IF ~~ THEN REPLY @528 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_annoyance
END

IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",3)
GlobalLT("E3LOVETALK","GLOBAL",3)
GlobalLT("E3FRIENDTALK","GLOBAL",3)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN ft2_start
SAY @524
IF ~~ THEN REPLY @525 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_info
IF ~~ THEN REPLY @526 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_later
IF ~~ THEN REPLY @527 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_insult
IF ~~ THEN REPLY @528 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",3)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft2_annoyance
END

IF ~~ THEN BEGIN ft2_info
SAY @529
IF ~~ THEN REPLY @530 GOTO ft2_sister
IF ~~ THEN REPLY @531 GOTO ft2_honour
IF ~~ THEN REPLY @532 GOTO ft2_uninterest
END

IF ~~ THEN BEGIN ft2_sister
SAY @541
IF ~~ THEN REPLY @542 GOTO ft2_abandon
IF ~~ THEN REPLY @543 GOTO ft2_location
IF ~~ THEN REPLY @544 GOTO ft2_insufferable
IF ~~ THEN REPLY @545 GOTO ft2_owe
END

IF ~~ THEN BEGIN ft2_abandon
SAY @556
IF ~~ THEN REPLY @557 EXIT
IF ~~ THEN REPLY @558 GOTO ft2_incarceration
END

IF ~~ THEN BEGIN ft2_incarceration
SAY @571 = @572
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_location
SAY @559
IF ~~ THEN REPLY @560 GOTO ft2_suffer
IF ~~ THEN REPLY @561 GOTO ft2_wizards
END

IF ~~ THEN BEGIN ft2_suffer
SAY @573 = @574
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_wizards
SAY @575 = @576
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_insufferable
SAY @562
IF ~~ THEN REPLY @563 EXIT
IF ~~ THEN REPLY @564 GOTO ft2_owe
END

IF ~~ THEN BEGIN ft2_owe
SAY @565 = @566
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_honour
SAY @549
IF ~~ THEN REPLY @550 GOTO ft2_friend
IF ~~ THEN REPLY @551 GOTO ft2_rescue
END

IF ~~ THEN BEGIN ft2_friend
SAY @567 = @568
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_rescue
SAY @569 = @570
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft2_uninterest
SAY @546
IF ~~ THEN REPLY @547 GOTO ft2_stop
IF ~~ THEN REPLY @548 GOTO ft2_sister
END

IF ~~ THEN BEGIN ft2_stop
SAY @537
IF ~~ THEN DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ft2_later
SAY @533
IF ~~ THEN REPLY @534 GOTO ft2_info
IF ~~ THEN REPLY @535 GOTO ft2_uninterest
IF ~~ THEN REPLY @536 GOTO ft2_insult
END

IF ~~ THEN BEGIN ft2_insult
SAY @537
IF ~~ THEN REPLY @538 GOTO ft2_allofthis
IF ~~ THEN REPLY @539 DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ft2_allofthis
SAY @552
IF ~~ THEN REPLY @553 GOTO ft2_sister
IF ~~ THEN REPLY @554 GOTO ft2_uninterest
IF ~~ THEN REPLY @555 GOTO ft2_honour
END

IF ~~ THEN BEGIN ft2_annoyance
SAY @540
IF ~~ THEN REPLY @538 GOTO ft2_allofthis
IF ~~ THEN REPLY @539 DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~Global("E3FRIENDTALK","GLOBAL",4)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN ft4_start
SAY @577
IF ~~ THEN REPLY @578 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1b
IF ~~ THEN REPLY @579 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1c
IF ~~ THEN REPLY @580 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1d
IF ~~ THEN REPLY @581 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1e
END

IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",3)
GlobalLT("E3LOVETALK","GLOBAL",5)
GlobalLT("E3FRIENDTALK","GLOBAL",5)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN ft4_start
SAY @577
IF ~~ THEN REPLY @578 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1b
IF ~~ THEN REPLY @579 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1c
IF ~~ THEN REPLY @580 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1d
IF ~~ THEN REPLY @581 DO ~SetGlobal("E3FRIENDTALK","GLOBAL",5)
RealSetGlobalTimer("E3FADEFRIEND","GLOBAL",2600)~ GOTO ft4_1e
END

IF ~~ THEN BEGIN ft4_1b
SAY @582
IF ~~ THEN REPLY @583 GOTO ft4_1f
IF ~~ THEN REPLY @584 GOTO ft4_1g
IF ~~ THEN REPLY @585 GOTO ft4_1h
END

IF ~~ THEN BEGIN ft4_1c
SAY @586
IF ~~ THEN REPLY @587 GOTO ft4_1i
IF ~~ THEN REPLY @588 GOTO ft4_1j
IF ~~ THEN REPLY @589 GOTO ft4_1k
END

IF ~~ THEN BEGIN ft4_1d
SAY @590
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_1e
SAY @591
IF ~~ THEN REPLY @592 GOTO ft4_1l
IF ~~ THEN REPLY @593 GOTO ft4_4a
IF ~~ THEN REPLY @594 GOTO ft4_1m
END

IF ~~ THEN BEGIN ft4_1f
SAY @595
IF ~~ THEN REPLY @596 GOTO ft4_1n
IF ~~ THEN REPLY @597 GOTO ft4_1n
IF ~~ THEN REPLY @598 GOTO ft4_1p
END

IF ~~ THEN BEGIN ft4_1g
SAY @599
IF ~~ THEN REPLY @600 GOTO ft4_4a
IF ~~ THEN REPLY @601 GOTO ft4_1q
END

IF ~~ THEN BEGIN ft4_1h
SAY @602
IF ~~ THEN REPLY @596 GOTO ft4_1n
IF ~~ THEN REPLY @597 GOTO ft4_1n
IF ~~ THEN REPLY @603 GOTO ft4_1p
END

IF ~~ THEN BEGIN ft4_1i
SAY @604
IF ~~ THEN REPLY @605 GOTO ft4_1n
IF ~~ THEN REPLY @606 GOTO ft4_1p
IF ~~ THEN REPLY @607 GOTO ft4_1r
IF ~~ THEN REPLY @608 GOTO ft4_1n
END

IF ~~ THEN BEGIN ft4_1j
SAY @609
IF ~~ THEN REPLY @610 GOTO ft4_1s
IF ~~ THEN REPLY @611 GOTO ft4_1n
END

IF ~~ THEN BEGIN ft4_1k
SAY @612 = @613
IF ~~ THEN REPLY @614 GOTO ft4_1t
IF ~~ THEN REPLY @615 GOTO ft4_4b
END

IF ~~ THEN BEGIN ft4_1l
SAY @616
IF ~~ THEN REPLY @605 GOTO ft4_1n
IF ~~ THEN REPLY @617 GOTO ft4_1u
IF ~~ THEN REPLY @618 GOTO ft4_1r
END

IF ~~ THEN BEGIN ft4_1m
SAY @616
IF ~~ THEN REPLY @605 GOTO ft4_1n
IF ~~ THEN REPLY @617 GOTO ft4_1u
IF ~~ THEN REPLY @618 GOTO ft4_1r
END

IF ~~ THEN BEGIN ft4_1n
SAY @619
IF ~~ THEN REPLY @620 GOTO ft4_1r
IF ~~ THEN REPLY @621 GOTO ft4_4a
IF ~~ THEN REPLY @622 GOTO ft4_1v
END

IF ~~ THEN BEGIN ft4_1p
SAY @623
IF ~~ THEN REPLY @624 GOTO ft4_1r
IF ~~ THEN REPLY @625 GOTO ft4_1v
END

IF ~~ THEN BEGIN ft4_1q
SAY @626
IF ~~ THEN REPLY @605 GOTO ft4_1n
IF ~~ THEN REPLY @611 GOTO ft4_1n
IF ~~ THEN REPLY @603 GOTO ft4_1p
END

IF ~~ THEN BEGIN ft4_1r
SAY @627
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_1s
SAY @628
IF ~~ THEN REPLY @629 GOTO ft4_1r
IF ~~ THEN REPLY @630 GOTO ft4_1v
END

IF ~~ THEN BEGIN ft4_1t
SAY @631
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_1u
SAY @632
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_1v
SAY @633
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ft4_4a
SAY @634
IF ~~ THEN DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ft4_4b
SAY @635
IF ~~ THEN DO ~SetGlobal("E3FADEFRIENDSHIP","GLOBAL",3)~ EXIT
END

CHAIN
IF ~~ THEN EDWINJ fadecouncil
@447 == E3FADEJ @448 == EDWINJ @449
EXIT

CHAIN
IF ~~ THEN CERNDJ fadegrove
@373 == E3FADEJ @374
EXIT

EXTEND_BOTTOM PPWORKER 15
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN EXTERN E3FADEJ fadelonk
END

EXTEND_BOTTOM PPIMOEN 4
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN EXTERN E3FADEJ fadeimoen
END

INTERJECT_COPY_TRANS YOSHJ 113 e3fadeyoshimobetrayal
== E3FADEJ IF ~InParty("E3Fade")~ THEN @379
END

ADD_TRANS_TRIGGER PLAYER1 3 ~!InParty("E3Fade")~

EXTEND_BOTTOM PLAYER1 3
IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN DO
~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN E3FADEJ fadesoul1
IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN DO
~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN E3FADEJ fadesoul2
IF ~InParty("E3Fade")
OR(2)
Global("E3FADEROMANCEACTIVE","GLOBAL",0)
Global("E3FADEROMANCEACTIVE","GLOBAL",3)~ THEN DO
~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN E3FADEJ fadesouln
END

ADD_TRANS_TRIGGER PLAYER1 5 ~OR(2)
!InParty("E3Fade")
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~

EXTEND_BOTTOM PLAYER1 5
IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN EXTERN E3FADEJ fadeslayer
END

APPEND OGHMONK1
IF ~~ THEN BEGIN vampire_start
SAY @257
IF ~~ THEN REPLY @258 EXTERN E3FADEP vampire_fade
IF ~~ THEN REPLY @259 GOTO vampire_dangerous
END

IF ~~ THEN BEGIN vampire_dangerous
SAY @264
IF ~~ THEN EXTERN E3FADEP vampire_fade
END
END

INTERJECT_COPY_TRANS OBSSOL01 10 e3fadespherehalflings
== E3FADEJ IF ~InParty("E3Fade")~ THEN @443
END

INTERJECT_COPY_TRANS UDSILVER 0 e3fadeadalon
== E3FADEJ IF ~InParty("E3Fade")~ THEN @444
== UDSILVER IF ~InParty("E3Fade")~ THEN @445
END

INTERJECT SHTHLT01 96 e3fadestronghold
== E3FADEJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN @482
END
IF ~~ THEN REPLY @483 GOTO 101
IF ~~ THEN REPLY @484 DO ~SetGlobal("E3FADETHIEFSLAVERY","GLOBAL",1)~ GOTO 100

INTERJECT SHTHLT01 97 e3fadestronghold
== E3FADEJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN @482
END
IF ~~ THEN REPLY @483 GOTO 100
IF ~~ THEN REPLY @484 DO ~SetGlobal("E3FADETHIEFSLAVERY","GLOBAL",1)~ GOTO 102

INTERJECT SHTHLT01 98 e3fadestronghold
== E3FADEJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN @482
END
IF ~~ THEN REPLY @483 GOTO 103
IF ~~ THEN REPLY @484 DO ~SetGlobal("E3FADETHIEFSLAVERY","GLOBAL",1)~ GOTO 101

INTERJECT SHTHLT01 99 e3fadestronghold
== E3FADEJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN @482
END
IF ~~ THEN REPLY @483 GOTO 101
IF ~~ THEN REPLY @484 DO ~SetGlobal("E3FADETHIEFSLAVERY","GLOBAL",1)~ GOTO 100


