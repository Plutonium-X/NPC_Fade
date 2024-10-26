//PC-initiated flirts, Global 1

APPEND E3FADEJ

IF ~Global("E3DISABLEFLIRTS","GLOBAL",0)
IsGabber(Player1)
CombatCounter(0)
GlobalGT("E3LOVETALK","GLOBAL",6)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
!Global("E3LOVETALK","GLOBAL",19)
Global("E3TREATMENTNOFLIRT","GLOBAL",0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN fadeflirtbase1
SAY @1
IF ~RandomNum(4,1)~ THEN REPLY @2 GOTO holdhand1
IF ~RandomNum(4,2)~ THEN REPLY @2 GOTO holdhand2
IF ~RandomNum(4,3)~ THEN REPLY @2 GOTO holdhand1
IF ~RandomNum(4,4)~ THEN REPLY @2 GOTO holdhand2
IF ~RandomNum(4,1)~ THEN REPLY @9 GOTO putarm1
IF ~RandomNum(4,2)~ THEN REPLY @9 GOTO putarm2
IF ~RandomNum(4,3)~ THEN REPLY @9 GOTO putarm1
IF ~RandomNum(4,4)~ THEN REPLY @9 GOTO putarm2
IF ~RandomNum(4,1)~ THEN REPLY @120 GOTO wink1
IF ~RandomNum(4,2)~ THEN REPLY @120 GOTO wink2
IF ~RandomNum(4,3)~ THEN REPLY @120 GOTO wink1
IF ~RandomNum(4,4)~ THEN REPLY @120 GOTO wink2
IF ~HPPercentLT("E3Fade",51)~ THEN REPLY @16 GOTO howareyou1
IF ~HPPercentGT("E3Fade",50)
RandomNum(4,1)~ THEN REPLY @16 GOTO howareyou2
IF ~HPPercentGT("E3Fade",50)
RandomNum(4,2)~ THEN REPLY @16 GOTO howareyou3
IF ~HPPercentGT("E3Fade",50)
RandomNum(4,3)~ THEN REPLY @16 GOTO howareyou2
IF ~HPPercentGT("E3Fade",50)
RandomNum(4,4)~ THEN REPLY @16 GOTO howareyou3
IF ~RandomNum(4,1)~ THEN REPLY @20 GOTO brushhair1
IF ~RandomNum(4,2)~ THEN REPLY @20 GOTO brushhair2
IF ~RandomNum(4,3)~ THEN REPLY @20 GOTO brushhair1
IF ~RandomNum(4,4)~ THEN REPLY @20 GOTO brushhair2
IF ~RandomNum(4,1)~ THEN REPLY @123 GOTO smile1
IF ~RandomNum(4,2)~ THEN REPLY @123 GOTO smile2
IF ~RandomNum(4,3)~ THEN REPLY @123 GOTO smile1
IF ~RandomNum(4,4)~ THEN REPLY @123 GOTO smile2
IF ~RandomNum(4,1)~ THEN REPLY @135 GOTO standcloser1
IF ~RandomNum(4,2)~ THEN REPLY @135 GOTO standcloser2
IF ~RandomNum(4,3)~ THEN REPLY @135 GOTO standcloser3
IF ~RandomNum(4,4)~ THEN REPLY @135 GOTO standcloser1
IF ~RandomNum(4,1)~ THEN REPLY @33 GOTO touchtail1
IF ~RandomNum(4,2)~ THEN REPLY @33 GOTO touchtail2
IF ~RandomNum(4,3)~ THEN REPLY @33 GOTO touchtail3
IF ~RandomNum(4,4)~ THEN REPLY @33 GOTO touchtail2
IF ~RandomNum(4,1)~ THEN REPLY @148 GOTO asktattoos1
IF ~RandomNum(4,2)~ THEN REPLY @148 GOTO asktattoos2
IF ~RandomNum(4,3)~ THEN REPLY @148 GOTO asktattoos1
IF ~RandomNum(4,4)~ THEN REPLY @148 GOTO asktattoos2
IF ~RandomNum(4,1)~ THEN REPLY @51 GOTO tickle1
IF ~RandomNum(4,2)~ THEN REPLY @51 GOTO tickle2
IF ~RandomNum(4,3)~ THEN REPLY @51 GOTO tickle1
IF ~RandomNum(4,4)~ THEN REPLY @51 GOTO tickle2
IF ~RandomNum(4,1)~ THEN REPLY @86 GOTO kisshand1
IF ~RandomNum(4,2)~ THEN REPLY @86 GOTO kisshand2
IF ~RandomNum(4,3)~ THEN REPLY @86 GOTO kisshand1
IF ~RandomNum(4,4)~ THEN REPLY @86 GOTO kisshand2
IF ~RandomNum(4,1)~ THEN REPLY @88 GOTO watchwalk1
IF ~RandomNum(4,2)~ THEN REPLY @88 GOTO watchwalk2
IF ~RandomNum(4,3)~ THEN REPLY @88 GOTO watchwalk1
IF ~RandomNum(4,4)~ THEN REPLY @88 GOTO watchwalk2
IF ~~ THEN REPLY @113 GOTO askname
IF ~~ THEN REPLY @170 GOTO breakup
END

IF ~~ THEN BEGIN holdhand1
SAY @3
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdhand2
SAY @4
IF ~~ THEN REPLY @5 GOTO holdhand2_copy
IF ~~ THEN REPLY @6 GOTO holdhand2_deserve
END

IF ~~ THEN BEGIN holdhand2_copy
SAY @7
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN holdhand2_deserve
SAY @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN putarm1
SAY @10
IF ~~ THEN REPLY @11 GOTO putarm1_cream
IF ~~ THEN REPLY @12 GOTO putarm1_tighter
END

IF ~~ THEN BEGIN putarm1_cream
SAY @13
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN putarm1_tighter
SAY @14
IF ~~ THEN REPLY @15 GOTO putarm1_cream
END

IF ~~ THEN BEGIN putarm2
SAY @119
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink1
SAY @121
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN wink2
SAY @122
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN howareyou1
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN howareyou2
SAY @18
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN howareyou3
SAY @19
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brushhair1
SAY @21
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN brushhair2
SAY @22
IF ~~ THEN REPLY @23 GOTO brushhair2_copper
IF ~~ THEN REPLY @24 GOTO brushhair2_point
END

IF ~~ THEN BEGIN brushhair2_copper
SAY @25
IF ~~ THEN REPLY @26 GOTO brushhair2_tweak
IF ~~ THEN REPLY @27 GOTO brushhair2_point
END

IF ~~ THEN BEGIN brushhair2_point
SAY @28
IF ~~ THEN REPLY @29 GOTO brushhair2_face
END

IF ~~ THEN BEGIN brushhair2_tweak
SAY @30
IF ~~ THEN REPLY @31 GOTO brushhair2_face
END

IF ~~ THEN BEGIN brushhair2_face
SAY @32
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile1
SAY @124
IF ~~ THEN REPLY @125 GOTO smile1_smile
IF ~~ THEN REPLY @126 GOTO smile1_day
END

IF ~~ THEN BEGIN smile1_smile
SAY @127
IF ~~ THEN REPLY @128 GOTO smile1_miserable
IF ~~ THEN REPLY @129 GOTO smile1_tease
END

IF ~~ THEN BEGIN smile1_day
SAY @130
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile1_miserable
SAY @131 = @132
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile1_tease
SAY @133 = @132
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN smile2
SAY @134
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN standcloser1
SAY @136
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN standcloser2
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN standcloser3
SAY @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail1
SAY @34
IF ~~ THEN REPLY @35 GOTO touchtail1_rude
IF ~~ THEN REPLY @36 GOTO touchtail1_normal
END

IF ~~ THEN BEGIN touchtail1_rude
SAY @37
IF ~~ THEN REPLY @38 GOTO touchtail1_touch
IF ~~ THEN REPLY @39 GOTO touchtail1_rather
END

IF ~~ THEN BEGIN touchtail1_normal
SAY @40
IF ~~ THEN REPLY @35 GOTO touchtail1_rude
IF ~~ THEN REPLY @41 GOTO touchtail1_feel
END

IF ~~ THEN BEGIN touchtail1_touch
SAY @42
IF ~~ THEN REPLY @43 GOTO touchtail1_hurt
IF ~~ THEN REPLY @44 GOTO touchtail1_like
END

IF ~~ THEN BEGIN touchtail1_rather
SAY @45
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail1_feel
SAY @46
IF ~~ THEN GOTO touchtail1_touch
END

IF ~~ THEN BEGIN touchtail1_hurt
SAY @47
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail1_like
SAY @48
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail2
SAY @49 = @50
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail3
SAY @139
IF ~~ THEN REPLY @140 GOTO touchtail3_know
IF ~~ THEN REPLY @141 GOTO touchtail3_hang
END

IF ~~ THEN BEGIN touchtail3_know
SAY @142
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail3_hang
SAY @143
IF ~~ THEN REPLY @144 GOTO touchtail3_use
IF ~~ THEN REPLY @145 GOTO touchtail3_monkey
END

IF ~~ THEN BEGIN touchtail3_use
SAY @146
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail3_monkey
SAY @147
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN asktattoos1
SAY @149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN asktattoos2
SAY @150
IF ~~ THEN REPLY @151 GOTO asktattoos2_no
IF ~~ THEN REPLY @152 GOTO asktattoos2_yes
END

IF ~~ THEN BEGIN asktattoos2_no
SAY @153
IF ~~ THEN REPLY @154 GOTO asktattoos2_ugly
IF ~~ THEN REPLY @155 GOTO asktattoos2_beauty
END

IF ~~ THEN BEGIN asktattoos2_yes
SAY @156
IF ~~ THEN REPLY @157 GOTO asktattoos2_you
IF ~~ THEN REPLY @158 GOTO asktattoos2_beauty
END

IF ~~ THEN BEGIN asktattoos2_ugly
SAY @159
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN asktattoos2_beauty
SAY @160
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN asktattoos2_you
SAY @161
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1
SAY @52
IF ~~ THEN REPLY @53 GOTO tickle1_tickle
IF ~~ THEN REPLY @54 GOTO tickle1_laugh
END

IF ~~ THEN BEGIN tickle1_tickle
SAY @55
IF ~~ THEN REPLY @56 GOTO tickle1_pin
IF ~~ THEN REPLY @57 GOTO tickle1_pull
END

IF ~~ THEN BEGIN tickle1_laugh
SAY @172
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_pin
SAY @58
IF ~~ THEN REPLY @59 GOTO tickle1_pay
IF ~~ THEN REPLY @60 GOTO tickle1_rhyme
END

IF ~~ THEN BEGIN tickle1_pull
SAY @61
IF ~~ THEN REPLY @62 GOTO tickle1_not
IF ~~ THEN REPLY @63 GOTO tickle1_effect
IF ~~ THEN REPLY @64 GOTO tickle1_stop
END

IF ~~ THEN BEGIN tickle1_pay
SAY @65
IF ~~ THEN REPLY @66 GOTO tickle1_rhyme
IF ~~ THEN REPLY @67 GOTO tickle1_wait
END

IF ~~ THEN BEGIN tickle1_rhyme
SAY @68
IF ~~ THEN REPLY @69 GOTO tickle1_closer
IF ~~ THEN REPLY @70 GOTO tickle1_beg
END

IF ~~ THEN BEGIN tickle1_not
SAY @71 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_effect
SAY @72
IF ~~ THEN REPLY @64 GOTO tickle1_stop
END

IF ~~ THEN BEGIN tickle1_stop
SAY @73
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_wait
SAY @74
IF ~~ THEN REPLY @75 GOTO tickle1_intrigued
IF ~~ THEN REPLY @76 GOTO tickle1_sights
END

IF ~~ THEN BEGIN tickle1_closer
SAY @77
IF ~~ THEN REPLY @79 GOTO tickle1_beg
END

IF ~~ THEN BEGIN tickle1_beg
SAY @80
IF ~~ THEN REPLY @81 GOTO tickle1_long
END

IF ~~ THEN BEGIN tickle1_intrigued
SAY @83
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_sights
SAY @84
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle1_long
SAY @85
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tickle2
SAY @162
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisshand1
SAY @87
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kisshand2
SAY @163 = @164
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk1
SAY @165
IF ~~ THEN REPLY @166 GOTO watchwalk1_sorry
IF ~~ THEN REPLY @167 GOTO watchwalk1_cheek
END

IF ~~ THEN BEGIN watchwalk1_sorry
SAY @168
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk1_cheek
SAY @169
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk2
SAY @89 = @90
IF ~~ THEN REPLY @91 GOTO watchwalk2_what
IF ~~ THEN REPLY @92 GOTO watchwalk2_leg
IF ~~ THEN REPLY @93 GOTO watchwalk2_breast
END

IF ~~ THEN BEGIN watchwalk2_what
SAY @94
IF ~~ THEN REPLY @95 GOTO watchwalk2_like
IF ~~ THEN REPLY @96 GOTO watchwalk2_leg
IF ~~ THEN REPLY @97 GOTO watchwalk2_breast
END

IF ~~ THEN BEGIN watchwalk2_leg
SAY @98
IF ~~ THEN REPLY @99 GOTO watchwalk2_realise
IF ~~ THEN REPLY @100 GOTO watchwalk2_not
IF ~~ THEN REPLY @101 GOTO watchwalk2_enjoy
IF ~~ THEN REPLY @102 GOTO watchwalk2_thigh
END

IF ~~ THEN BEGIN watchwalk2_breast
SAY @103
IF ~~ THEN REPLY @99 GOTO watchwalk2_realise
IF ~~ THEN REPLY @104 GOTO watchwalk2_not
IF ~~ THEN REPLY @101 GOTO watchwalk2_enjoy
IF ~~ THEN REPLY @102 GOTO watchwalk2_thigh
END

IF ~~ THEN BEGIN watchwalk2_like
SAY @105 = @106
IF ~~ THEN REPLY @107 GOTO watchwalk2_realise
IF ~~ THEN REPLY @101 GOTO watchwalk2_enjoy
IF ~~ THEN REPLY @102 GOTO watchwalk2_thigh
END

IF ~~ THEN BEGIN watchwalk2_realise
SAY @108 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk2_not
SAY @109 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk2_enjoy
SAY @110 = @111
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN watchwalk2_thigh
SAY @112
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN askname
SAY @114
IF ~~ THEN REPLY @115 GOTO askname_khertal
IF ~~ THEN REPLY @116 GOTO askname_fade
END

IF ~~ THEN BEGIN askname_khertal
SAY @117
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN askname_fade
SAY @118
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN breakup
SAY @171
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~ EXIT
END

IF ~Global("E3DISABLEFLIRTS","GLOBAL",0)
IsGabber(Player1)
CombatCounter(0)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
!Global("E3LOVETALK","GLOBAL",19)
Global("E3TREATMENTNOFLIRT","GLOBAL",0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN fadeflirtbase2
SAY @1
IF ~RandomNum(4,1)~ THEN REPLY @173 GOTO kiss1
IF ~RandomNum(4,2)~ THEN REPLY @173 GOTO kiss2
IF ~RandomNum(4,3)~ THEN REPLY @173 GOTO kiss1
IF ~RandomNum(4,4)~ THEN REPLY @173 GOTO kiss2
IF ~RandomNum(4,1)~ THEN REPLY @176 GOTO cuddle1
IF ~RandomNum(4,2)~ THEN REPLY @176 GOTO cuddle2
IF ~RandomNum(4,3)~ THEN REPLY @176 GOTO cuddle1
IF ~RandomNum(4,4)~ THEN REPLY @176 GOTO cuddle2
IF ~RandomNum(4,1)~ THEN REPLY @179 GOTO checkmeout1
IF ~RandomNum(4,2)~ THEN REPLY @179 GOTO checkmeout2
IF ~RandomNum(4,3)~ THEN REPLY @179 GOTO checkmeout3
IF ~RandomNum(4,4)~ THEN REPLY @179 GOTO checkmeout1
IF ~!Global("E3FADENOOKIE","GLOBAL",1)~ THEN REPLY @33 GOTO touchtail2_1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,1)~ THEN REPLY @33 GOTO touchtail2_1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,2)~ THEN REPLY @33 GOTO touchtail2_2
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,3)~ THEN REPLY @33 GOTO touchtail2_1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,4)~ THEN REPLY @33 GOTO touchtail2_2
IF ~~ THEN REPLY @184 GOTO doyouloveme1
IF ~HPPercentLT("E3Fade",100)
HPPercentGT("E3Fade",25)
RandomNum(4,1)~ THEN REPLY @196 GOTO youarehurt1
IF ~HPPercentLT("E3Fade",100)
HPPercentGT("E3Fade",25)
RandomNum(4,2)~ THEN REPLY @196 GOTO youarehurt2
IF ~HPPercentLT("E3Fade",100)
HPPercentGT("E3Fade",25)
RandomNum(4,3)~ THEN REPLY @196 GOTO youarehurt3
IF ~HPPercentLT("E3Fade",100)
HPPercentGT("E3Fade",25)
RandomNum(4,4)~ THEN REPLY @196 GOTO youarehurt1
IF ~HPPercentLT("E3Fade",26)~ THEN REPLY @196 GOTO youarehurt4
IF ~RandomNum(4,1)~ THEN REPLY @201 GOTO iloveyou1
IF ~RandomNum(4,2)~ THEN REPLY @201 GOTO iloveyou2
IF ~RandomNum(4,3)~ THEN REPLY @201 GOTO iloveyou1
IF ~RandomNum(4,4)~ THEN REPLY @201 GOTO iloveyou2
IF ~RandomNum(4,1)~ THEN REPLY @208 GOTO getherenow1
IF ~RandomNum(4,2)~ THEN REPLY @208 GOTO getherenow2
IF ~RandomNum(4,3)~ THEN REPLY @208 GOTO getherenow1
IF ~RandomNum(4,4)~ THEN REPLY @208 GOTO getherenow2
IF ~RandomNum(4,1)~ THEN REPLY @211 GOTO honeykitten1
IF ~RandomNum(4,2)~ THEN REPLY @211 GOTO honeykitten2
IF ~RandomNum(4,3)~ THEN REPLY @211 GOTO honeykitten1
IF ~RandomNum(4,4)~ THEN REPLY @211 GOTO honeykitten2
IF ~RandomNum(4,1)~ THEN REPLY @225 GOTO tracetattoo1
IF ~RandomNum(4,2)~ THEN REPLY @225 GOTO tracetattoo2
IF ~RandomNum(4,3)~ THEN REPLY @225 GOTO tracetattoo1
IF ~RandomNum(4,4)~ THEN REPLY @225 GOTO tracetattoo2
IF ~RandomNum(4,1)~ THEN REPLY @233 GOTO poketongue1
IF ~RandomNum(4,2)~ THEN REPLY @233 GOTO poketongue2
IF ~RandomNum(4,3)~ THEN REPLY @233 GOTO poketongue1
IF ~RandomNum(4,4)~ THEN REPLY @233 GOTO poketongue2
IF ~Global("E3FADENOOKIE","GLOBAL",1)
!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")
!AreaCheck("AR1100")
!AreaCheck("AR1200")
!AreaCheck("AR1700")~ THEN REPLY @236 GOTO makelove1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,1)
OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @236 GOTO makelove1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,2)
OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @236 GOTO makelove2
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,3)
OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @236 GOTO makelove1
IF ~Global("E3FADENOOKIE","GLOBAL",1)
RandomNum(4,4)
OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @236 GOTO makelove2
IF ~~ THEN REPLY @120 GOTO wink2_1
IF ~RandomNum(4,1)~ THEN REPLY @240 GOTO kissneck1
IF ~RandomNum(4,2)~ THEN REPLY @240 GOTO kissneck2
IF ~RandomNum(4,3)~ THEN REPLY @240 GOTO kissneck1
IF ~RandomNum(4,4)~ THEN REPLY @240 GOTO kissneck2
END

IF ~~ THEN BEGIN kiss1
SAY @174
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kiss2
SAY @175
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cuddle1
SAY @177
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN cuddle2
SAY @178
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN checkmeout1
SAY @180
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN checkmeout2
SAY @181
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN checkmeout3
SAY @182 = @183
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN doyouloveme1
SAY @185
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail2_1
SAY @186
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail2_2
SAY @187
IF ~OR(13)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ THEN REPLY @188 GOTO touchtail2_2_scales
IF ~~ THEN REPLY @189 GOTO touchtail2_2_later
END

IF ~~ THEN BEGIN touchtail2_2_scales
SAY @190
IF ~~ THEN REPLY @191 GOTO touchtail2_2_control
IF ~~ THEN REPLY @192 GOTO touchtail2_2_everytime
END

IF ~~ THEN BEGIN touchtail2_2_later
SAY @193
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN touchtail2_2_control
SAY @194
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN touchtail2_2_everytime
SAY @195
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN youarehurt1
SAY @197
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN youarehurt2
SAY @198
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN youarehurt3
SAY @199
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN youarehurt4
SAY @200
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN iloveyou1
SAY @202
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN iloveyou2
SAY @203
IF ~~ THEN REPLY @204 GOTO iloveyou2_nothing
IF ~~ THEN REPLY @205 GOTO iloveyou2_excuse
END

IF ~~ THEN BEGIN iloveyou2_nothing
SAY @206
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN iloveyou2_excuse
SAY @207
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN getherenow1
SAY @209
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN getherenow2
SAY @210
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN honeykitten1
SAY @212
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN honeykitten2
SAY @213
IF ~~ THEN REPLY @214 GOTO honeykitten2_terrible
IF ~~ THEN REPLY @215 GOTO honeykitten2_cheeky
END

IF ~~ THEN BEGIN honeykitten2_terrible
SAY @216
IF ~~ THEN REPLY @217 GOTO honeykitten2_think
END

IF ~~ THEN BEGIN honeykitten2_think
SAY @218
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN honeykitten2_cheeky
SAY @219
IF ~~ THEN REPLY @220 GOTO honeykitten2_filty
IF ~~ THEN REPLY @221 GOTO honeykitten2_deserve
END

IF ~~ THEN BEGIN honeykitten2_filty
SAY @222 = @223
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN honeykitten2_deserve
SAY @224
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tracetattoo1
SAY @226
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tracetattoo2
SAY @227
IF ~~ THEN REPLY @228 GOTO tracetattoo2_face
IF ~~ THEN REPLY @229 GOTO tracetattoo2_accentuate
END

IF ~~ THEN BEGIN tracetattoo2_face
SAY @230
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tracetattoo2_accentuate
SAY @231 = @232
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN poketongue1
SAY @234
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN poketongue2
SAY @235
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN makelove1
SAY @237
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN makelove2
SAY @238
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN wink2_1
SAY @239
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissneck1
SAY @241
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kissneck2
SAY @242
IF ~~ THEN EXIT
END
END


