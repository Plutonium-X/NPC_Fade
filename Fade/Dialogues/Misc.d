EXTEND_BOTTOM ARAN 54
IF ~Global("E3FADEINTRO","GLOBAL",0)~ THEN DO
~SetGlobal("E3FADEINTRO","GLOBAL",1)~ EXTERN ARAN fadeintro
END

EXTEND_BOTTOM ARAN 24
IF ~InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3ARANSMUM","GLOBAL",0)~ THEN DO
~SetGlobal("E3ARANSMUM","GLOBAL",1)~ EXTERN ARAN aransmumchain_1
END

CHAIN IF ~~ THEN ARAN aransmumchain_1
@172 == E3FADEJ @173
END
IF ~~ THEN REPLY @174 DO ~SetGlobal("E3ARANSMUM","GLOBAL",2)~ GOTO aransmumchain_2
IF ~~ THEN REPLY @175 DO ~SetGlobal("E3ARANSMUM","GLOBAL",3)~ GOTO aransmum_end

CHAIN IF ~~ THEN ARAN aransmumchain_2
@176 == E3FADEJ @177 == ARAN @178 == E3FADEJ @179 == ARAN @180 = @181 == E3FADEJ @182
END
IF ~~ THEN UNSOLVED_JOURNAL @185 EXIT

CHAIN IF WEIGHT #-1 ~InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3ARANSMUM","GLOBAL",4)~ THEN ARAN aransmumchain_done
@187 == E3FADEJ @188 == ARAN @189 = @184
END
IF ~~ THEN DO ~SetGlobal("E3ARANSMUM","GLOBAL",5)~ GOTO 12

APPEND ARAN
IF ~~ THEN BEGIN fadeintro
SAY @1
IF ~~ THEN DO ~CreateCreature("E3FADE13",[4836.2136],6)~ GOTO fadeintro2
END

IF ~~ THEN BEGIN fadeintro2
SAY @2
IF ~~ THEN REPLY @3
EXTERN E3FADE fadeintro3
IF ~~ THEN REPLY @4 GOTO fadeintro6
IF ~~ THEN REPLY @5 GOTO fadeintro9
END

IF ~~ THEN BEGIN fadeintro6
SAY @15
IF ~~ THEN REPLY @16 
EXTERN E3FADE fadeintro7
IF ~~ THEN REPLY @17
EXTERN E3FADE fadeintro8
IF ~~ THEN REPLY @21 GOTO fadeintro9
END

IF ~~ THEN BEGIN fadeintro9
SAY @22 = @28
IF ~~ THEN DO ~SetGlobal("E3REFUSEFADE","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN fadeintrodone
SAY @27
IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN aransmum_end
SAY @183 = @184
IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN aransmum_refuse
SAY @183 = @184
IF ~~ THEN DO ~SetGlobal("E3ARANSMUM","GLOBAL",3)
EraseJournalEntry(@185)~ GOTO 12
END

IF WEIGHT #-1 ~Global("E3ARANSMUM","GLOBAL",2)~ THEN BEGIN aransmum_mid
SAY @186
IF ~~ THEN REPLY @291 EXIT
IF ~~ THEN REPLY @292 GOTO aransmum_refuse
END

IF WEIGHT #-1 ~Global("E3ARANSMUM","GLOBAL",4)~ THEN BEGIN aransmum_done
SAY @187
IF ~~ THEN REPLY @190 GOTO aransmum_done_2
END

IF ~~ THEN BEGIN aransmum_done_2
SAY @184
IF ~~ THEN DO ~SetGlobal("E3ARANSMUM","GLOBAL",5)~ GOTO 12
END
END

APPEND E3FADE
IF ~~ THEN BEGIN fadeintro3
SAY @6 = @7 = @8 = @9 = @10
IF ~~ THEN REPLY @11 GOTO fadeintro4
IF ~~ THEN REPLY @12 GOTO fadeintro4
IF ~~ THEN REPLY @13 GOTO fadeintro5
IF ~~ THEN REPLY @14 GOTO fadeintro5
END

IF ~~ THEN BEGIN fadeintro4
SAY @26 
IF ~~ THEN DO ~SetGlobal("E3ACCEPTFADE","GLOBAL",1)~ EXTERN ARAN fadeintrodone
END

IF ~~ THEN BEGIN fadeintro5
SAY @23
IF ~~ THEN DO ~SetGlobal("E3REFUSEFADE","GLOBAL",1)~ EXTERN ARAN fadeintrodone
END

IF ~~ THEN BEGIN fadeintro7
SAY @7 = @24 = @25
IF ~~ THEN REPLY @11 GOTO fadeintro4
IF ~~ THEN REPLY @12 GOTO fadeintro4
IF ~~ THEN REPLY @13 GOTO fadeintro5
IF ~~ THEN REPLY @14 GOTO fadeintro5
END

IF ~~ THEN BEGIN fadeintro8
SAY @18
IF ~~ THEN REPLY @19 GOTO fadeintro4
IF ~~ THEN REPLY @20 GOTO fadeintro4
END
END

BEGIN E3HOODL
BEGIN E3MALLO

IF ~Global("E3SLAVERKIDNAP","GLOBAL",1)
Global("E3MALLONTALK","GLOBAL",1)
AreaCheck("AR0907")~ THEN BEGIN ransom
SAY @44
IF ~~ THEN REPLY @45 DO ~SetGlobal("E3MALLONTALK","GLOBAL",2)~ GOTO fade
IF ~~ THEN REPLY @46 DO ~SetGlobal("E3MALLONTALK","GLOBAL",2)~ GOTO place
IF ~~ THEN REPLY @47 DO ~SetGlobal("E3MALLONTALK","GLOBAL",2)~ GOTO friends
END

IF ~~ THEN BEGIN fade
SAY @48
IF ~~ THEN REPLY @49 GOTO fight
IF ~~ THEN REPLY @50 GOTO buy
IF ~~ THEN REPLY @51 GOTO belong
IF ~~ THEN REPLY @52 GOTO profit
END

IF ~~ THEN BEGIN place
SAY @53
IF ~~ THEN REPLY @54 GOTO friends
IF ~~ THEN REPLY @55 GOTO fade
IF ~~ THEN REPLY @56 GOTO going
END

IF ~~ THEN BEGIN going
SAY @57
IF ~~ THEN SOLVED_JOURNAL @85
DO ~SetGlobal("E3SLAVERKIDNAP","GLOBAL",2)
SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
EraseJournalEntry(@43)
ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut002")~ EXIT
END

IF ~~ THEN BEGIN friends
SAY @58
IF ~~ THEN REPLY @49 GOTO fight
IF ~~ THEN REPLY @50 GOTO buy
IF ~~ THEN REPLY @51 GOTO belong
IF ~~ THEN REPLY @52 GOTO profit
END

IF ~~ THEN BEGIN buy
SAY @59
IF ~PartyGoldGT(499)~ THEN REPLY @60 GOTO 500
IF ~PartyGoldGT(999)~ THEN REPLY @61 GOTO 1000
IF ~PartyGoldGT(1999)~ THEN REPLY @62 GOTO 2000
IF ~~ THEN REPLY @63 GOTO fight
END

IF ~~ THEN BEGIN belong
SAY @64
IF ~~ THEN REPLY @65 GOTO buy
IF ~~ THEN REPLY @52 GOTO profit
IF ~~ THEN REPLY @66 GOTO fight
END

IF ~~ THEN BEGIN profit
SAY @67
IF ~~ THEN REPLY @68 GOTO evil500
IF ~~ THEN REPLY @69 GOTO evil1000
IF ~~ THEN REPLY @70 GOTO evil2000
END

IF ~~ THEN BEGIN 500
SAY @71
IF ~PartyGoldGT(999)~ THEN REPLY @72 GOTO 1000
IF ~PartyGoldGT(1999)~ THEN REPLY @73 GOTO 2000
IF ~~ THEN REPLY @74 GOTO fight
END

IF ~~ THEN BEGIN 1000
SAY @75
IF ~PartyGoldGT(1999)~ THEN REPLY @76 GOTO 2000
IF ~~ THEN REPLY @74 GOTO fight
END

IF ~~ THEN BEGIN 2000
SAY @77
IF ~~ THEN SOLVED_JOURNAL @86
DO ~TakePartyGold(2000)
DestroyGold(2000)
AddexperienceParty(2500)
MoveGlobal("AR0907","E3Fade",[1882.723])
SetGlobal("E3SLAVERKIDNAP","GLOBAL",2)
SetGlobal("E3BOUGHTFADE","GLOBAL",1)
GiveItemCreate("E3Contra",Player1,1,0,0)
EraseJournalEntry(@43)
ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut002")~ EXIT
END

IF ~~ THEN BEGIN evil500
SAY @78
IF ~~ THEN SOLVED_JOURNAL @87
DO ~GiveGoldForce(500)
ReputationInc(-1)
AddexperienceParty(2500)
SetGlobal("E3SLAVERKIDNAP","GLOBAL",2)
SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
EraseJournalEntry(@43)
ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut002")~ EXIT
END

IF ~~ THEN BEGIN evil1000
SAY @79
IF ~~ THEN SOLVED_JOURNAL @87
DO ~GiveGoldForce(1000)
ReputationInc(-1)
AddexperienceParty(2500)
SetGlobal("E3SLAVERKIDNAP","GLOBAL",2)
SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
EraseJournalEntry(@43)
ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut002")~ EXIT
END

IF ~~ THEN BEGIN evil2000
SAY @80
IF ~~ THEN REPLY @81 GOTO fight
IF ~~ THEN REPLY @82 GOTO evil1000
IF ~~ THEN REPLY @83 GOTO evil500
END

IF ~~ THEN BEGIN fight
SAY @84
IF ~~ THEN SOLVED_JOURNAL @88
DO ~Enemy()
SetGlobal("E3SLAVERKIDNAP","GLOBAL",2)
MoveGlobal("AR0907","E3Fade",[1882.723])~ EXIT
END

CHAIN IF ~!Dead("E3Fade")
InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3SLAVERKIDNAP","GLOBAL",1)
Global("E3MALLONTALK","GLOBAL",0)~ THEN E3MALLO kidnap
@32 DO ~SetGlobal("E3MALLONTALK","GLOBAL",1)~
== E3FADEJ @33 == E3MALLO @34 == E3FADEJ @35 == E3MALLO @36 = @37 == E3HOODL @38 == E3FADEJ @39 == E3MALLO @40 == E3HOODL @41 == E3FADEJ @42
END
IF ~~ THEN UNSOLVED_JOURNAL @43
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut001")~ EXIT

EXTEND_BOTTOM HLKETTA 0
IF ~Global("E3KETTASION","GLOBAL",0)~ THEN DO
~SetGlobal("E3KETTASION","GLOBAL",1)~ EXTERN HLSION sionfade
END

APPEND HLSION
IF ~~ THEN BEGIN sionfade
SAY #56253
IF ~~ THEN REPLY #56257 GOTO 2
IF ~Global("HEARDOFSLAVELORDS","GLOBAL",1)~ THEN REPLY #56258 GOTO 4
IF ~~ THEN REPLY #56261 GOTO 4
IF ~~ THEN REPLY #56265 GOTO 5
IF ~Global("E3SLAVERKIDNAP","GLOBAL",1)~ THEN REPLY @30 GOTO sionfade1
END

IF ~~ THEN BEGIN sionfade1
SAY @31
IF ~~ THEN DO ~StartCutSceneMode()
ActionOverride("hlketta",MoveToObjectNoInterrupt("HLSION"))
ActionOverride("hlketta",Wait(1))
ActionOverride("hlketta",EndCutSceneMode())
ActionOverride("hlketta",DestroySelf())
SetGlobal("TALKEDTOHLSION","GLOBAL",2)
SetGlobal("TALKEDTOHLKETTA","GLOBAL",2)
ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END
END

CHAIN IF WEIGHT #-1 ~See("E3Fade")
InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADESIDGE","LOCALS",0)~ THEN THIEF1 fadesidge
@89 DO ~SetGlobal("E3FADESIDGE","LOCALS",1)~
== E3FADEJ @90 == THIEF1 @91 == E3FADEJ @92
EXIT

CHAIN IF WEIGHT #-1 ~See("E3Fade")
InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADESIDGE","LOCALS",1)
!Global("E3FADEROMANCEACTIVE","GLOBAL",0)
!Global("E3FADEROMANCEACTIVE","GLOBAL",3)
GlobalGT("E3LOVETALK","GLOBAL",10)~ THEN THIEF1 fadesidge3
@93 DO ~SetGlobal("E3FADESIDGE","LOCALS",2)~
== E3FADEJ @94 == THIEF1 @96 == E3FADEJ @97 == THIEF1 @98 == E3FADEJ @99 == THIEF1 @100 == E3FADEJ @101
END
IF ~~ THEN REPLY @102 GOTO sidge_planning
IF ~~ THEN REPLY @103 GOTO sidge_stay

CHAIN IF ~~ THEN THIEF1 sidge_planning
@104 == E3FADEJ @105
END
IF ~~ THEN REPLY @106 EXTERN E3FADEJ sidge_about
IF ~~ THEN REPLY @107 EXTERN E3FADEJ sidge_boyfriend

CHAIN IF ~~ THEN THIEF1 sidge_stay
@108 == E3FADEJ @105
END
IF ~~ THEN REPLY @109 EXTERN E3FADEJ sidge_anyone
IF ~~ THEN REPLY @110 EXTERN E3FADEJ sidge_about

CHAIN IF WEIGHT #-1 ~See("E3Fade")
InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADESIDGE","LOCALS",1)
!Global("E3FADEROMANCEACTIVE","GLOBAL",1)
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN THIEF1 fadesidge2
@93 DO ~SetGlobal("E3FADESIDGE","LOCALS",2)~
== E3FADEJ @94 == THIEF1 @95
EXIT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(0)
See("E3Fade")
InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADETASSA","LOCALS",0)~ THEN TASSA fadetassa
@397 DO ~SetGlobal("E3FADETASSA","LOCALS",1)~
== E3FADEJ @398 == TASSA @399 == E3FADEJ @400 == TASSA @401 == E3FADEJ @402 == TASSA @403
EXIT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(0)
See("E3Fade")
InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEBOOTER","LOCALS",0)
OR(2)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN BOOTER fadebooter1
@404 DO ~SetGlobal("E3FADEBOOTER","LOCALS",1)~
== E3FADEJ @405
END
IF ~~ THEN REPLY @406 EXTERN E3FADEJ booter_play
IF ~~ THEN REPLY @407 EXTERN E3FADEJ booter_nothing

APPEND E3FADEJ
IF ~~ THEN BEGIN sidge_about
SAY @111
IF ~~ THEN REPLY @112 GOTO sidge_nothing
IF ~~ THEN REPLY @113 GOTO sidge_want
END

IF ~~ THEN BEGIN sidge_boyfriend
SAY @114
IF ~~ THEN REPLY @115 GOTO sidge_what
IF ~~ THEN REPLY @116 GOTO sidge_spurned
IF ~~ THEN REPLY @117 GOTO sidge_good
END

IF ~~ THEN BEGIN sidge_anyone
SAY @118
IF ~~ THEN REPLY @119 GOTO sidge_invitation
IF ~~ THEN REPLY @120 GOTO sidge_friend
IF ~~ THEN REPLY @117 GOTO sidge_good
END

IF ~~ THEN BEGIN sidge_nothing
SAY @121
IF ~~ THEN REPLY @122 GOTO sidge_invitation
IF ~~ THEN REPLY @120 GOTO sidge_friend
IF ~~ THEN REPLY @117 GOTO sidge_good
END

IF ~~ THEN BEGIN sidge_want
SAY @123
IF ~~ THEN REPLY @122 GOTO sidge_invitation
IF ~~ THEN REPLY @120 GOTO sidge_friend
IF ~~ THEN REPLY @117 GOTO sidge_good
END

IF ~~ THEN BEGIN sidge_what
SAY @124
IF ~~ THEN REPLY @122 GOTO sidge_invitation
IF ~~ THEN REPLY @120 GOTO sidge_friend
IF ~~ THEN REPLY @117 GOTO sidge_good
END

IF ~~ THEN BEGIN sidge_spurned
SAY @125
IF ~~ THEN REPLY @126 GOTO sidge_group
IF ~~ THEN REPLY @127 GOTO sidge_crude
IF ~~ THEN REPLY @128 GOTO sidge_feelings
END

IF ~~ THEN BEGIN sidge_good
SAY @129
IF ~~ THEN REPLY @130 GOTO sidge_deny
IF ~~ THEN REPLY @131 GOTO sidge_torture
END

IF ~~ THEN BEGIN sidge_invitation
SAY @132
IF ~~ THEN REPLY @126 GOTO sidge_group
IF ~~ THEN REPLY @127 GOTO sidge_crude
IF ~~ THEN REPLY @128 GOTO sidge_feelings
END

IF ~~ THEN BEGIN sidge_friend
SAY @133
IF ~~ THEN REPLY @134 GOTO sidge_jealous
IF ~~ THEN REPLY @135 GOTO sidge_no
IF ~~ THEN REPLY @136 GOTO sidge_all
END

IF ~~ THEN BEGIN sidge_group
SAY @137
IF ~~ THEN REPLY @134 GOTO sidge_jealous
IF ~~ THEN REPLY @135 GOTO sidge_no
IF ~~ THEN REPLY @136 GOTO sidge_all
END

IF ~~ THEN BEGIN sidge_crude
SAY @138
IF ~~ THEN REPLY @139 GOTO sidge_joking
IF ~~ THEN REPLY @140 GOTO sidge_feelings
END

IF ~~ THEN BEGIN sidge_feelings
SAY @141
IF ~~ THEN REPLY @142 GOTO sidge_need
IF ~~ THEN REPLY @143 GOTO sidge_anymore
END

IF ~~ THEN BEGIN sidge_deny
SAY @144
IF ~~ THEN REPLY @145 GOTO sidge_drop
IF ~~ THEN REPLY @146 GOTO sidge_torture
END

IF ~~ THEN BEGIN sidge_drop
SAY @147
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sidge_torture
SAY @148
IF ~~ THEN REPLY @149 GOTO sidge_crude
IF ~~ THEN REPLY @150 GOTO sidge_feelings
END

IF ~~ THEN BEGIN sidge_jealous
SAY @151
IF ~~ THEN REPLY @152 GOTO sidge_meaningful
IF ~~ THEN REPLY @153 GOTO sidge_urges
END

IF ~~ THEN BEGIN sidge_no
SAY @154
IF ~~ THEN REPLY @155 GOTO sidge_jealous
IF ~~ THEN REPLY @156 GOTO sidge_sarcastic
IF ~~ THEN REPLY @136 GOTO sidge_all
END

IF ~~ THEN BEGIN sidge_all
SAY @157
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sidge_joking
SAY @158
IF ~~ THEN REPLY @134 GOTO sidge_jealous
IF ~~ THEN REPLY @135 GOTO sidge_no
IF ~~ THEN REPLY @136 GOTO sidge_all
END

IF ~~ THEN BEGIN sidge_need
SAY @159
IF ~~ THEN REPLY @134 GOTO sidge_jealous
IF ~~ THEN REPLY @135 GOTO sidge_no
IF ~~ THEN REPLY @136 GOTO sidge_all
END

IF ~~ THEN BEGIN sidge_anymore
SAY @160
IF ~~ THEN REPLY @152 GOTO sidge_meaningful
IF ~~ THEN REPLY @161 GOTO sidge_no
END

IF ~~ THEN BEGIN sidge_meaningful
SAY @162 = @163
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sidge_urges
SAY @164
IF ~~ THEN REPLY @165 GOTO sidge_hands
IF ~~ THEN REPLY @166 GOTO sidge_satisfy
END

IF ~~ THEN BEGIN sidge_sarcastic
SAY @167
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sidge_hands
SAY @168 = @169 = @170
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sidge_satisfy
SAY @171
IF ~~ THEN EXIT
END
END

CHAIN IF ~~ THEN E3FADEJ booter_play
@408 == BOOTER @409 == E3FADEJ @410 == BOOTER @411 == E3FADEJ @412
END
IF ~~ THEN REPLY @413 GOTO booter_forward
IF ~~ THEN REPLY @414 EXTERN BOOTER booter_what
IF ~~ THEN REPLY @407 GOTO booter_nothing

CHAIN IF ~~ THEN E3FADEJ booter_nothing
@415 == BOOTER @416
EXIT

CHAIN IF ~~ THEN E3FADEJ booter_forward
@417 == BOOTER @416
EXIT

CHAIN IF ~~ THEN BOOTER booter_what
@418 == E3FADEJ @419 == BOOTER @420
EXIT

CHAIN IF ~~ THEN E3FADEJ faderenal
@422 DO ~SetGlobal("E3FADERENAL","LOCALS",1)~
== RENAL @423 == E3FADEJ @424 == RENAL @425 == E3FADEJ @426
COPY_TRANS RENAL 30

CHAIN IF ~~ THEN E3FADEJ faderenaljobdone
@511 == RENAL @512
COPY_TRANS RENAL 48

ADD_TRANS_TRIGGER RENAL 30 ~!InParty("E3Fade")~

EXTEND_BOTTOM RENAL 30
IF ~InParty("E3Fade")~ THEN EXTERN RENAL faderenal
END

ADD_TRANS_TRIGGER RENAL 48 ~!InParty("E3Fade")~

EXTEND_BOTTOM RENAL 48
IF ~InParty("E3Fade")~ THEN EXTERN RENAL faderenaljobdone
END

INTERJECT_COPY_TRANS RENAL 64 e3faderenaloffer
== E3FADEJ IF ~InParty("E3Fade")~ THEN @513
== RENAL IF ~InParty("E3Fade")~ THEN @514
END

INTERJECT_COPY_TRANS RENAL 69 e3faderenalpcaccept
== E3FADEJ IF ~InParty("E3Fade")~ THEN @515
== E3FADEJ IF ~InParty("E3Fade")
OR(2)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @516
END

APPEND RENAL
IF ~~ THEN BEGIN faderenal
SAY @421
IF ~~ THEN EXTERN E3FADEJ faderenal
END

IF ~~ THEN BEGIN faderenaljobdone
SAY @510
IF ~~ THEN EXTERN E3FADEJ faderenaljobdone
END
END

BEGIN E3ARANS

IF ~!InParty("E3Fade")
Global("E3ARANSMUM","GLOBAL",2)~ THEN BEGIN aransmum_none
SAY @192
IF ~~ THEN EXIT
END

IF ~Global("E3ARANSMUM","GLOBAL",4)~ THEN BEGIN aransmum_done
SAY @288
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aransmum_gnomes
SAY @206
IF ~!InParty("Jan")
Race(LastTalkedToBy,HUMAN)~ THEN REPLY @207 GOTO aransmum_human
IF ~!InParty("Jan")
Race(LastTalkedToBy,ELF)~ THEN REPLY @207 GOTO aransmum_elf
IF ~!InParty("Jan")
Race(LastTalkedToBy,HALF_ELF)~ THEN REPLY @207 GOTO aransmum_halfelf
IF ~!InParty("Jan")
Race(LastTalkedToBy,HALFORC)~ THEN REPLY @207 GOTO aransmum_halforc
IF ~!InParty("Jan")
Race(LastTalkedToBy,HALFLING)~ THEN REPLY @207 GOTO aransmum_halfling
IF ~!InParty("Jan")
Race(LastTalkedToBy,DWARF)~ THEN REPLY @207 GOTO aransmum_dwarf
IF ~!InParty("Jan")
Race(LastTalkedToBy,GNOME)~ THEN REPLY @208 GOTO aransmum_yes
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)~ THEN EXTERN JANJ aransmum_jan
END

IF ~~ THEN BEGIN aransmum_delivery
SAY @218 = @219
IF ~!InParty("Jan")
Race(LastTalkedToBy,HUMAN)~ THEN REPLY @207 GOTO aransmum_human
IF ~!InParty("Jan")
Race(LastTalkedToBy,ELF)~ THEN REPLY @207 GOTO aransmum_elf
IF ~!InParty("Jan")
Race(LastTalkedToBy,HALF_ELF)~ THEN REPLY @207 GOTO aransmum_halfelf
IF ~!InParty("Jan")
Race(LastTalkedToBy,HALFORC)~ THEN REPLY @207 GOTO aransmum_halforc
IF ~!InParty("Jan")
Race(LastTalkedToBy,HALFLING)~ THEN REPLY @207 GOTO aransmum_halfling
IF ~!InParty("Jan")
Race(LastTalkedToBy,DWARF)~ THEN REPLY @207 GOTO aransmum_dwarf
IF ~!InParty("Jan")
Race(LastTalkedToBy,GNOME)~ THEN REPLY @208 GOTO aransmum_yes
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)~ THEN EXTERN JANJ aransmum_jan
END

IF ~~ THEN BEGIN aransmum_pretend
SAY @259
IF ~~ THEN REPLY @260 GOTO aransmum_thanks
IF ~~ THEN REPLY @261 EXTERN E3FADEJ aransmum_leave
IF ~~ THEN REPLY @262 GOTO aransmum_nasty
END

IF ~~ THEN BEGIN aransmum_cake
SAY @267
IF ~~ THEN REPLY @268 GOTO aransmum_pretend
IF ~~ THEN REPLY @269 DO ~ApplyDamage(LastTalkedToBy,2,MAGIC)~ GOTO aransmum_nibble
IF ~~ THEN REPLY @270 GOTO aransmum_weight
END

CHAIN IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3ARANSMUM","GLOBAL",2)~ THEN E3ARANS aransmum_start
@192 == E3FADEJ @193 == E3ARANS @194 = @195
END
IF ~~ THEN REPLY @196 DO ~SetGlobal("E3ARANSMUM","GLOBAL",4)~ EXTERN E3FADEJ aransmum_stamp
IF ~~ THEN REPLY @197 DO ~SetGlobal("E3ARANSMUM","GLOBAL",4)~ GOTO aransmum_tea
IF ~~ THEN REPLY @198 DO ~SetGlobal("E3ARANSMUM","GLOBAL",4)~ GOTO aransmum_gnomes

CHAIN IF ~~ THEN E3FADEJ aransmum_stamp
@199 = @200 = @201 == E3ARANS @202
END
IF ~~ THEN REPLY @203 EXTERN E3ARANS aransmum_delivery
IF ~~ THEN REPLY @204 EXTERN E3ARANS aransmum_friend

CHAIN IF ~~ THEN E3ARANS aransmum_tea
@289 == E3FADEJ @205 = @201 == E3ARANS @202
END
IF ~~ THEN REPLY @203 EXTERN E3ARANS aransmum_delivery
IF ~~ THEN REPLY @204 EXTERN E3ARANS aransmum_friend

CHAIN IF ~~ THEN JANJ aransmum_jan
@209 == E3ARANS @210 = @211 == E3FADEJ @212 == E3ARANS @213 = @214
END
IF ~~ THEN REPLY @215 EXTERN E3ARANS aransmum_do
IF ~~ THEN REPLY @216 EXTERN E3ARANS aransmum_matters
IF ~~ THEN REPLY @217 EXTERN E3ARANS aransmum_rude

CHAIN IF ~~ THEN E3ARANS aransmum_friend
@220 = @221 = @222 == E3FADEJ @223
END
IF ~~ THEN REPLY @224 EXTERN E3FADEJ aransmum_get

CHAIN IF ~~ THEN E3FADEJ aransmum_get
@225 == E3ARANS @226
END
IF ~~ THEN REPLY @227 EXTERN E3ARANS aransmum_pretend
IF ~~ THEN REPLY @228 DO ~ApplyDamage(LastTalkedToBy,2,MAGIC)~ EXTERN E3ARANS aransmum_nibble
IF ~~ THEN REPLY @229 EXTERN E3ARANS aransmum_cake

CHAIN IF ~~ THEN E3ARANS aransmum_human
@230 = @231 == E3FADEJ @223
END
IF ~~ THEN REPLY @224 EXTERN E3FADEJ aransmum_get

CHAIN IF ~~ THEN E3ARANS aransmum_elf
@232 = @233 == E3FADEJ @223
END
IF ~~ THEN REPLY @224 EXTERN E3FADEJ aransmum_get

CHAIN IF ~~ THEN E3ARANS aransmum_halfelf
@234 = @235 = @236 == E3FADEJ @223
END
IF ~~ THEN REPLY @224 EXTERN E3FADEJ aransmum_get

CHAIN IF ~~ THEN E3ARANS aransmum_halforc
@237 = @238 == E3FADEJ @223
END
IF ~~ THEN REPLY @224 EXTERN E3FADEJ aransmum_get

CHAIN IF ~~ THEN E3ARANS aransmum_dwarf
@239 = @240 == E3FADEJ @223
END
IF ~~ THEN REPLY @224 EXTERN E3FADEJ aransmum_get

CHAIN IF ~~ THEN E3ARANS aransmum_halfling
@241 = @242 == E3FADEJ @223
END
IF ~~ THEN REPLY @224 EXTERN E3FADEJ aransmum_get

CHAIN IF ~~ THEN E3ARANS aransmum_yes
@210 = @211 == E3FADEJ @212 == E3ARANS @213 = @214
END
IF ~~ THEN REPLY @215 GOTO aransmum_do
IF ~~ THEN REPLY @216 GOTO aransmum_matters
IF ~~ THEN REPLY @217 GOTO aransmum_rude
IF ~~ THEN REPLY @243 GOTO aransmum_why

CHAIN IF ~~ THEN E3ARANS aransmum_do
@244 == E3FADEJ @245
END
IF ~~ THEN REPLY @246 GOTO aransmum_avoid
IF ~~ THEN REPLY @247 EXTERN E3FADEJ aransmum_company
IF ~~ THEN REPLY @243 GOTO aransmum_why

CHAIN IF ~~ THEN E3ARANS aransmum_matters
@248 == E3FADEJ @249 == E3ARANS @250 = @226
END
IF ~~ THEN REPLY @251 GOTO aransmum_employ
IF ~~ THEN REPLY @227 GOTO aransmum_pretend
IF ~~ THEN REPLY @228 DO ~ApplyDamage(LastTalkedToBy,2,MAGIC)~ GOTO aransmum_nibble
IF ~~ THEN REPLY @229 GOTO aransmum_cake

CHAIN IF ~~ THEN E3ARANS aransmum_rude
@252 = @253 == E3FADEJ @254 == E3ARANS @255 == E3FADEJ @256 == E3ARANS @257 == E3FADEJ @258
EXIT

CHAIN IF ~~ THEN E3ARANS aransmum_nibble
@263 == E3FADEJ @264
END
IF ~~ THEN REPLY @265 GOTO aransmum_thanks
IF ~~ THEN REPLY @261 EXTERN E3FADEJ aransmum_leave
IF ~~ THEN REPLY @266 GOTO aransmum_nasty

CHAIN IF ~~ THEN E3ARANS aransmum_why
@271 == E3FADEJ @272 == E3ARANS @273 == E3FADEJ @254 == E3ARANS @255 == E3FADEJ @256 == E3ARANS @257 == E3FADEJ @258
END
IF ~~ THEN SOLVED_JOURNAL @290 DO ~EraseJournalEntry(@185)~ EXIT

CHAIN IF ~~ THEN E3ARANS aransmum_avoid
@274 == E3FADEJ @275 == E3ARANS @276 == E3FADEJ @277
END
IF ~~ THEN SOLVED_JOURNAL @290 DO ~EraseJournalEntry(@185)~ EXIT

CHAIN IF ~~ THEN E3FADEJ aransmum_company
@278 == E3ARANS @279
END
IF ~~ THEN REPLY @227 EXTERN E3ARANS aransmum_pretend
IF ~~ THEN REPLY @228 DO ~ApplyDamage(LastTalkedToBy,2,MAGIC)~ EXTERN E3ARANS aransmum_nibble
IF ~~ THEN REPLY @229 EXTERN E3ARANS aransmum_cake

CHAIN IF ~~ THEN E3ARANS aransmum_employ
@280 == E3FADEJ @254 == E3ARANS @255 == E3FADEJ @256 == E3ARANS @257 == E3FADEJ @258
END
IF ~~ THEN SOLVED_JOURNAL @290 DO ~EraseJournalEntry(@185)~ EXIT

CHAIN IF ~~ THEN E3ARANS aransmum_thanks
@281 == E3FADEJ @282 == E3ARANS @274 == E3FADEJ @275 == E3ARANS @276 == E3FADEJ @277
END
IF ~~ THEN SOLVED_JOURNAL @290 DO ~EraseJournalEntry(@185)~ EXIT

CHAIN IF ~~ THEN E3FADEJ aransmum_leave
@283 == E3ARANS @274 == E3FADEJ @275 == E3ARANS @276 == E3FADEJ @277
END
IF ~~ THEN SOLVED_JOURNAL @290 DO ~EraseJournalEntry(@185)~ EXIT

CHAIN IF ~~ THEN E3ARANS aransmum_nasty
@284 == E3FADEJ @285 == E3ARANS @286 == E3FADEJ @275 == E3ARANS @276 == E3FADEJ @277
END
IF ~~ THEN SOLVED_JOURNAL @290 DO ~EraseJournalEntry(@185)~ EXIT

CHAIN IF ~~ THEN E3ARANS aransmum_weight
@287 == E3FADEJ @285 == E3ARANS @286 == E3FADEJ @275 == E3ARANS @276 == E3FADEJ @277
END
IF ~~ THEN SOLVED_JOURNAL @290 DO ~EraseJournalEntry(@185)~ EXIT

ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2)
!InParty("E3Fade")
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)~

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN EXTERN BODHIAMB bodhi_start
END

EXTEND_BOTTOM C6BODHI 21
IF ~Global("E3FADEVAMPIRE","GLOBAL",2)~ THEN EXTERN C6BODHI 23
END

EXTEND_BOTTOM C6BODHI 23
IF ~Global("E3FADEVAMPIRE","GLOBAL",2)~ THEN REPLY @303 EXTERN C6BODHI fade
END

EXTEND_BOTTOM IMOEN2J 16
IF ~Global("E3FADEVAMPIRE","GLOBAL",2)~ THEN EXTERN IMOEN2J fadevampire
END

EXTEND_BOTTOM WARSAGE 0
IF ~!Dead("c6bodhi")
Global("E3FADEVAMPIRE","GLOBAL",2)~ THEN REPLY #56579 EXTERN WARSAGE 6
END

EXTEND_BOTTOM WARSAGE 0
IF ~PartyHasItem("E3FADBD1")~ THEN REPLY #56580 EXTERN WARSAGE 5
END

EXTEND_BOTTOM UDPHAE01 106
IF ~OR(2)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN REPLY @427 EXTERN UDPHAE01 110
END

ADD_TRANS_TRIGGER IMNBOOK1 0 ~OR(2)
!Global("RevealUmar","GLOBAL",1)
!PartyHasItem("E3FADBD1")~

EXTEND_BOTTOM IMNBOOK1 0
IF ~PartyHasItem("E3FADBD1")
Global("RevealUmar","GLOBAL",1)~ THEN REPLY #59383 EXTERN IMNBOOK1 4
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("E3FADBD1")
!PartyHasItem("E3FADBD2")~

ADD_STATE_TRIGGER OGHMONK1 1 ~!PartyHasItem("E3FADBD1")
!PartyHasItem("E3FADBD2")~

ADD_STATE_TRIGGER OGHMONK1 2 ~!PartyHasItem("E3FADBD1")
!PartyHasItem("E3FADBD2")~

ADD_STATE_TRIGGER OGHMONK1 3 ~!PartyHasItem("E3FADBD1")
!PartyHasItem("E3FADBD2")~

APPEND BODHIAMB
IF ~~ THEN BEGIN bodhi_start
SAY #56540
IF ~OR(2)
!InPartyAllowDead("E3Fade")
Dead("E3Fade")~ THEN GOTO 6
IF ~InPartyAllowDead("E3Fade")
!Dead("E3Fade")~ THEN GOTO bodhi_2
END

IF ~~ THEN BEGIN bodhi_2
SAY @293
IF ~~ THEN EXTERN E3FADEJ bodhi_3
END

IF ~~ THEN BEGIN bodhi_4
SAY @295
IF ~~ THEN UNSOLVED_JOURNAL @296 
DO ~SetGlobal("Deactivate0801","AR0800",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut004")~ EXIT
END
END

APPEND E3FADEJ
IF ~~ THEN BEGIN bodhi_3
SAY @294
IF ~~ THEN EXTERN BODHIAMB bodhi_4
END
END

APPEND C6DRIZZ2
IF WEIGHT #-1 ~GlobalGT("E3FADEVAMPIRE","GLOBAL",0)
Global("E3DIDVAMPIRETALK","LOCALS",0)
!Global("AttackedDrizzt","GLOBAL",1)~ THEN BEGIN start
SAY #53484
IF ~~ THEN REPLY @297 DO ~SetGlobal("E3DIDVAMPIRETALK","LOCALS",1)~ GOTO vampires
IF ~~ THEN REPLY @298 DO ~SetGlobal("E3DIDVAMPIRETALK","LOCALS",1)~ GOTO back
IF ~~ THEN REPLY @299 DO ~SetGlobal("E3DIDVAMPIRETALK","LOCALS",1)~ GOTO stride
END

IF ~~ THEN BEGIN vampires
SAY @300
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN back
SAY @301
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN stride
SAY @302
IF ~~ THEN EXIT
END
END

APPEND C6BODHI
IF ~~ THEN BEGIN fade
SAY @304 
IF ~~ THEN REPLY @305 GOTO kill
IF ~~ THEN REPLY @306 GOTO getup
IF ~~ THEN REPLY @307 GOTO please
END

IF ~~ THEN BEGIN kill
SAY @308
IF ~~ THEN REPLY @309 GOTO fear
IF ~~ THEN REPLY @310 GOTO use
IF ~~ THEN REPLY @311 GOTO done
END

IF ~~ THEN BEGIN getup
SAY @312
IF ~~ THEN REPLY @309 GOTO fear
IF ~~ THEN REPLY @310 GOTO use
IF ~~ THEN REPLY @311 GOTO done
END

IF ~~ THEN BEGIN please
SAY @313
IF ~~ THEN REPLY @309 GOTO fear
IF ~~ THEN REPLY @310 GOTO use
IF ~~ THEN REPLY @311 GOTO done
END

IF ~~ THEN BEGIN fear
SAY @314
IF ~~ THEN REPLY @315 GOTO choice
IF ~~ THEN REPLY @316 GOTO promise
END

IF ~~ THEN BEGIN use
SAY @317
IF ~~ THEN REPLY @315 GOTO choice
IF ~~ THEN REPLY @316 GOTO promise
END

IF ~~ THEN BEGIN done
SAY @318
IF ~~ THEN REPLY @315 GOTO choice
IF ~~ THEN REPLY @316 GOTO promise
END

IF ~~ THEN BEGIN choice
SAY @319
IF ~~ THEN UNSOLVED_JOURNAL @321
DO ~SetGlobal("C6BodhiFight","AR0809",1)
OpenDoor("DOOR01")
OpenDoor("DOOR02")
CreateCreature("BODFGT01",[1107.281],0)
CreateCreature("BODFGT01",[1667.220],2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN promise
SAY @320
IF ~~ THEN UNSOLVED_JOURNAL @321
DO ~SetGlobal("C6BodhiFight","AR0809",1)
OpenDoor("DOOR01")
OpenDoor("DOOR02")
CreateCreature("BODFGT01",[1107.281],0)
CreateCreature("BODFGT01",[1667.220],2)
Enemy()~ EXIT
END
END

APPEND IMOEN2J
IF ~~ THEN BEGIN fadevampire
SAY @322
COPY_TRANS IMOEN2J 16
END
END

BEGIN E3DEMON

IF ~Global("E3FADEVAMPIRE","GLOBAL",3)
Global("E3TRANSFORM","GLOBAL",0)~ THEN BEGIN demon_start
SAY @323
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut005")~ EXIT
END

IF ~Global("E3TRANSFORM","GLOBAL",1)~ THEN BEGIN demon_start2
SAY @324
IF ~~ THEN REPLY @325 GOTO demon_happened
IF ~~ THEN REPLY @326 GOTO demon_something
END

IF ~~ THEN BEGIN demon_happened
SAY @327
IF ~~ THEN REPLY @328 GOTO demon_slay
IF ~~ THEN REPLY @329 GOTO demon_love
IF ~~ THEN REPLY @330 GOTO demon_beat
END

IF ~~ THEN BEGIN demon_something
SAY @331 = @332
IF ~~ THEN REPLY @328 GOTO demon_slay
IF ~~ THEN REPLY @329 GOTO demon_love
IF ~~ THEN REPLY @330 GOTO demon_beat
END

IF ~~ THEN BEGIN demon_slay
SAY @333
IF ~~ THEN REPLY @334 GOTO demon_bring
IF ~~ THEN REPLY @335 GOTO demon_saying
END

IF ~~ THEN BEGIN demon_love
SAY @336
IF ~~ THEN REPLY @337 GOTO demon_slay
IF ~~ THEN REPLY @338 GOTO demon_beat
END

IF ~~ THEN BEGIN demon_beat
SAY @339
IF ~~ THEN REPLY @334 GOTO demon_bring
IF ~~ THEN REPLY @335 GOTO demon_saying
END

IF ~~ THEN BEGIN demon_bring
SAY @340
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN demon_saying
SAY @341
IF ~~ THEN DO ~Enemy()~ EXIT
END

BEGIN E3FADE2

IF ~Global("E3TRANSFORM","GLOBAL",1)~ THEN BEGIN fade2_start
SAY @342
IF ~~ THEN UNSOLVED_JOURNAL @343
DO ~SetGlobal("E3TRANSFORM","GLOBAL",2)
EraseJournalEntry(@321)
DropInventory()
DestroySelf()~ EXIT
END

IF ~Global("E3TRANSFORM","GLOBAL",2)~ THEN BEGIN fade2_start2
SAY @392
IF ~~ THEN EXIT
END

APPEND OGHMONK1
IF WEIGHT #-1
~Global("RevealUmar","GLOBAL",1)
PartyHasItem("E3FADBD1")~ THEN BEGIN monk_stage1
SAY #57510
IF ~~ THEN REPLY #57511 GOTO 5
IF ~~ THEN REPLY #57512 GOTO 6
END

IF WEIGHT #-1
~Global("E3TRANSFORM","GLOBAL",3)
Global("E3FADEISREALLYDEAD","GLOBAL",0)~ THEN BEGIN monk_fadedead
SAY @376
IF ~~ THEN REPLY @377 DO ~SetGlobal("E3FADEISREALLYDEAD","GLOBAL",1)~ GOTO monk_go
IF ~~ THEN REPLY @378 DO ~SetGlobal("E3FADEISREALLYDEAD","GLOBAL",1)~ GOTO monk_now
END

IF WEIGHT #-1
~Global("E3WILLFIGHTDEMON","GLOBAL",1)~ THEN BEGIN monk_speak
SAY @388
IF ~~ THEN REPLY @381 DO ~SetGlobal("E3WILLFIGHTDEMON","GLOBAL",0)
SetGlobal("E3LOOKINGFORTOOTH","GLOBAL",0)
StartCutSceneMode()
StartCutScene("E3cut007")~ EXIT
IF ~~ THEN REPLY @389 DO ~SetGlobal("E3WILLFIGHTDEMON","GLOBAL",0)~ GOTO monk_survive
END

IF WEIGHT #-1
~Global("E3LOOKINGFORTOOTH","GLOBAL",1)~ THEN BEGIN monk_have
SAY @390
IF ~PartyHasItem("E3TOOTH")~ THEN REPLY @366 DO ~SetGlobal("E3WILLFIGHTDEMON","GLOBAL",0)~ GOTO monk_tooth
IF ~!PartyHasItem("E3TOOTH")~ THEN REPLY @391 EXIT
IF ~~ THEN REPLY @389 DO ~SetGlobal("E3WILLFIGHTDEMON","GLOBAL",0)~ GOTO monk_survive
END

IF ~PartyHasItem("E3FADBD2")
Global("E3ASKEDADVICE","LOCALS",1)~ THEN BEGIN monk_start2
SAY @344
IF ~~ THEN REPLY @345 GOTO monk_do
IF ~~ THEN REPLY @346 GOTO monk_rid
IF ~~ THEN REPLY @347 GOTO monk_send
END

IF ~PartyHasItem("E3FADBD2")
Global("E3ASKEDADVICE","LOCALS",0)~ THEN BEGIN monk_start3
SAY @348
IF ~~ THEN REPLY @349 GOTO monk_do
IF ~~ THEN REPLY @350 GOTO monk_rid
IF ~~ THEN REPLY @351 GOTO monk_send
END

IF ~~ THEN BEGIN monk_do
SAY @352 
IF ~~ THEN DO ~TakePartyItem("E3FADBD2")
DestroyItem("E3FADBD2")
CreateCreature("E3Fade2",[619.280],0)~ GOTO monk_main
END

IF ~~ THEN BEGIN monk_rid
SAY @359
IF ~~ THEN DO ~TakePartyItem("E3FADBD2")
DestroyItem("E3FADBD2")
CreateCreature("E3Fade2",[619.280],0)~ GOTO monk_main
END

IF ~~ THEN BEGIN monk_send
SAY @360
IF ~~ THEN DO ~TakePartyItem("E3FADBD2")
DestroyItem("E3FADBD2")
CreateCreature("E3Fade2",[619.280],0)~ GOTO monk_main
END

IF ~~ THEN BEGIN monk_main
SAY @353 = @354
IF ~~ THEN REPLY @355 GOTO monk_banish
IF ~~ THEN REPLY @356 GOTO monk_here
IF ~~ THEN REPLY @357 GOTO monk_risk
IF ~~ THEN REPLY @358 GOTO monk_kill
IF ~~ THEN REPLY @361 GOTO monk_demon
END

IF ~~ THEN BEGIN monk_banish
SAY @362
IF ~~ THEN REPLY @363 GOTO monk_survive
IF ~~ THEN REPLY @364 GOTO monk_kill
IF ~~ THEN REPLY @361 GOTO monk_demon
END

IF ~~ THEN BEGIN monk_here
SAY @365 = @372
IF ~PartyHasItem("E3TOOTH")~ THEN REPLY @366 GOTO monk_tooth
IF ~!PartyHasItem("E3TOOTH")~ THEN REPLY @367 GOTO monk_absence
IF ~~ THEN REPLY @368 GOTO monk_survive
END

IF ~~ THEN BEGIN monk_risk
SAY @369
IF ~~ THEN REPLY @370 GOTO monk_kill
IF ~~ THEN REPLY @368 GOTO monk_survive
END

IF ~~ THEN BEGIN monk_kill
SAY @371 = @372
IF ~PartyHasItem("E3TOOTH")~ THEN REPLY @366 GOTO monk_tooth
IF ~!PartyHasItem("E3TOOTH")~ THEN REPLY @367 GOTO monk_absence
IF ~~ THEN REPLY @368 GOTO monk_survive
END

IF ~~ THEN BEGIN monk_demon
SAY @373 = @374
IF ~~ THEN REPLY @370 GOTO monk_kill
IF ~~ THEN REPLY @368 GOTO monk_survive
IF ~~ THEN REPLY @356 GOTO monk_here
END

IF ~~ THEN BEGIN monk_survive
SAY @375
IF ~~ THEN DO ~SetGlobal("E3LOOKINGFORTOOTH","GLOBAL",0)
SetGlobal("E3WILLFIGHTDEMON","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut006")~ EXIT
END

IF ~~ THEN BEGIN monk_tooth
SAY @379 = @380
IF ~~ THEN REPLY @381 DO ~EraseJournalEntry(@384)
SetGlobal("E3WILLFIGHTDEMON","GLOBAL",0)
SetGlobal("E3LOOKINGFORTOOTH","GLOBAL",0)
StartCutSceneMode()
StartCutScene("E3cut007")~ EXIT
IF ~~ THEN REPLY @382 DO ~SetGlobal("E3WILLFIGHTDEMON","GLOBAL",1)~ GOTO monk_prepare
END

IF ~~ THEN BEGIN monk_absence
SAY @383
IF ~~ THEN UNSOLVED_JOURNAL @384
DO ~SetGlobal("E3LOOKINGFORTOOTH","GLOBAL",1)
RevealAreaOnMap("AR1200")~ EXIT
END

IF ~~ THEN BEGIN monk_go
SAY @385
IF ~~ THEN SOLVED_JOURNAL @393
DO ~EraseJournalEntry(@296)
EraseJournalEntry(@321)
EraseJournalEntry(@343)
EraseJournalEntry(@384)~ EXIT
END

IF ~~ THEN BEGIN monk_now
SAY @386
IF ~~ THEN SOLVED_JOURNAL @393
DO ~EraseJournalEntry(@296)
EraseJournalEntry(@321)
EraseJournalEntry(@343)
EraseJournalEntry(@384)~ EXIT
END

IF ~~ THEN BEGIN monk_prepare
SAY @387
IF ~~ THEN EXIT
END

IF ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("E3FADBD1")~ THEN BEGIN monk_start1
SAY #57510 
IF ~~ THEN REPLY #57511 GOTO 5
IF ~~ THEN REPLY #57512 DO ~SetGlobal("E3ASKEDADVICE","LOCALS",1)~ GOTO 6
END
END

BEGIN E3DEMON2

CHAIN
IF ~HPLT(Myself,10)
Global("E3DEATH","LOCALS",0)~ THEN E3DEMON2 demon_die
@394 == OGHMONK1 @395 == E3DEMON2 @396
DO ~EraseJournalEntry(@296)
EraseJournalEntry(@321)
EraseJournalEntry(@343)
EraseJournalEntry(@384)
SetGlobal("E3DEATH","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut008")~ EXIT

INTERJECT_COPY_TRANS NALIAJ 29 e3fadedaleson
== E3FADEJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN @428
== NALIAJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN @429
== E3FADEJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN @430
== NALIAJ IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN @431
END

ADD_TRANS_TRIGGER DELCIA 20 ~OR(2)
!InParty("E3Fade")
!See("E3Fade")~

ADD_TRANS_TRIGGER DELCIA 0 ~OR(2)
!InParty("E3Fade")
!See("E3Fade")~

EXTEND_BOTTOM DELCIA 20
IF ~InParty("E3Fade")
See("E3Fade")~ THEN EXTERN E3FADEJ fadedelcia_start
END

EXTEND_BOTTOM DELCIA 0
IF ~InParty("E3Fade")
See("E3Fade")~ THEN EXTERN E3FADEJ fadedelcia2_start
END

APPEND E3FADEJ
IF ~~ THEN BEGIN fadedelcia_start
SAY @432
IF ~~ THEN REPLY @433 EXTERN DELCIA fadedelcia_saying
IF ~~ THEN REPLY @434 EXTERN DELCIA fadedelcia_helpful
IF ~~ THEN REPLY @435 GOTO fadedelcia_overwrought
END

IF ~~ THEN BEGIN fadedelcia2_start
SAY @436
IF ~~ THEN REPLY @433 EXTERN DELCIA fadedelcia2_saying
IF ~~ THEN REPLY @434 EXTERN DELCIA fadedelcia2_helpful
IF ~~ THEN REPLY @435 GOTO fadedelcia2_overwrought
END

IF ~~ THEN BEGIN fadedelcia_yours
SAY @449
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut009")~ EXIT
END

IF ~AreaCheck("AR1303")
Global("E3DELCIAKNOCKOUT","GLOBAL",1)~ THEN BEGIN fadedelcia_knockout
SAY @450
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)~ THEN EXTERN NALIAJ fadedelcia_knockout
IF ~OR(3)
!InParty("Nalia")
!See("Nalia")
StateCheck("Nalia",STATE_SLEEPING)~ THEN REPLY @451 GOTO fadedelcia_punch
IF ~OR(3)
!InParty("Nalia")
!See("Nalia")
StateCheck("Nalia",STATE_SLEEPING)~ THEN REPLY @452 GOTO fadedelcia_reason
IF ~OR(3)
!InParty("Nalia")
!See("Nalia")
StateCheck("Nalia",STATE_SLEEPING)~ THEN REPLY @453 GOTO fadedelcia_throw
END

IF ~~ THEN BEGIN fadedelcia_knockout2
SAY @455
IF ~~ THEN REPLY @451 GOTO fadedelcia_punch
IF ~~ THEN REPLY @452 GOTO fadedelcia_reason
IF ~~ THEN REPLY @453 GOTO fadedelcia_throw
END

IF ~~ THEN BEGIN fadedelcia_punch
SAY @456 
IF ~~ THEN DO ~SetGlobal("E3DELCIAKNOCKOUT","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN fadedelcia_reason
SAY @457
IF ~~ THEN DO ~SetGlobal("E3DELCIAKNOCKOUT","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN fadedelcia_throw
SAY @458
IF ~~ THEN DO ~SetGlobal("E3DELCIAKNOCKOUT","GLOBAL",2)~ EXIT
END
END

CHAIN
IF ~~ THEN E3FADEJ fadedelcia_overwrought
@444 == DELCIA @445 = @438
END
IF ~~ THEN REPLY @447 EXTERN NALIAJ 24
IF ~~ THEN REPLY @440 EXTERN DELCIA fadedelcia_respect
IF ~~ THEN REPLY @441 GOTO fadedelcia_yours

CHAIN
IF ~~ THEN E3FADEJ fadedelcia2_overwrought
@444 == DELCIA @445 = @442
END
IF ~~ THEN REPLY @439 EXTERN DELCIA 38
IF ~~ THEN REPLY @440 EXTERN DELCIA fadedelcia2_respect
IF ~~ THEN REPLY @441 GOTO fadedelcia_yours

APPEND DELCIA
IF ~~ THEN BEGIN fadedelcia_saying
SAY @437 = @438
IF ~~ THEN REPLY @447 EXTERN NALIAJ 24
IF ~~ THEN REPLY @440 GOTO fadedelcia_respect
IF ~~ THEN REPLY @441 EXTERN E3FADEJ fadedelcia_yours
END

IF ~~ THEN BEGIN fadedelcia2_saying
SAY @437 = @442
IF ~~ THEN REPLY @439 GOTO 38
IF ~~ THEN REPLY @440 GOTO fadedelcia2_respect
IF ~~ THEN REPLY @441 EXTERN E3FADEJ fadedelcia_yours
END

IF ~~ THEN BEGIN fadedelcia_helpful
SAY @443 = @438
IF ~~ THEN REPLY @447 EXTERN NALIAJ 24
IF ~~ THEN REPLY @440 GOTO fadedelcia_respect
IF ~~ THEN REPLY @441 EXTERN E3FADEJ fadedelcia_yours
END

IF ~~ THEN BEGIN fadedelcia2_helpful
SAY @443 = @442
IF ~~ THEN REPLY @439 GOTO 38
IF ~~ THEN REPLY @440 GOTO fadedelcia2_respect
IF ~~ THEN REPLY @441 EXTERN E3FADEJ fadedelcia_yours
END

IF ~~ THEN BEGIN fadedelcia_respect
SAY @448 = #41497
IF ~~ THEN REPLY #24637 EXTERN NALIAJ 23
IF ~~ THEN REPLY #24638 EXTERN NALIAJ 24
IF ~~ THEN REPLY #24639 EXTERN NALIAJ 22
END

IF ~~ THEN BEGIN fadedelcia2_respect
SAY @448
IF ~~ THEN GOTO 37
END
END

APPEND NALIAJ
IF ~~ THEN BEGIN fadedelcia_knockout
SAY @454
IF ~~ THEN EXTERN E3FADEJ fadedelcia_knockout2
END
END

ADD_TRANS_TRIGGER ANNO1 2 ~!InParty("E3Fade")~

EXTEND_BOTTOM ANNO1 2
IF ~InParty("E3Fade")~ THEN EXTERN E3FADEJ fadegladiator
END

ADD_TRANS_TRIGGER HENDAK 1 ~!InParty("E3Fade")~

EXTEND_BOTTOM HENDAK 1
IF ~InParty("E3Fade")~ THEN EXTERN E3FADEJ fadehendak
END

INTERJECT_COPY_TRANS KELDORJ 57 e3fadekeldornslaves
== E3FADEJ IF ~InParty("E3Fade")~ THEN @533
== KELDORJ IF ~InParty("E3Fade")~ THEN @534
== E3FADEJ IF ~InParty("E3Fade")~ THEN @535
END

INTERJECT_COPY_TRANS HENDAK 18 e3fadehendakhelp
== E3FADEJ IF ~InParty("E3Fade")~ THEN @536
END

INTERJECT_COPY_TRANS HENDAK 23 e3fadehendakrefuse
== E3FADEJ IF ~InParty("E3Fade")~ THEN @537
END

INTERJECT_COPY_TRANS HENDAK 31 e3fadehendakquestdone
== E3FADEJ IF ~InParty("E3Fade")~ THEN @538
END

ADD_TRANS_TRIGGER HAEGAN 1 ~!InParty("E3Fade")~

EXTEND_BOTTOM HAEGAN 1
IF ~InParty("E3Fade")~ THEN DO ~Enemy()~ EXTERN E3FADEJ fadehaegan
END

ADD_TRANS_TRIGGER HAEGAN 2 ~!InParty("E3Fade")~

EXTEND_BOTTOM HAEGAN 2
IF ~InParty("E3Fade")~ THEN DO ~Enemy()~ EXTERN E3FADEJ fadehaegan
END

ADD_TRANS_TRIGGER HAEGAN 3 ~!InParty("E3Fade")~

EXTEND_BOTTOM HAEGAN 3
IF ~InParty("E3Fade")~ THEN DO ~Enemy()~ EXTERN E3FADEJ fadehaegan
END

INTERJECT GIRL1 0 e3fadeslavegirl1
==E3FADEJ IF ~InParty("E3Fade")~ THEN @540
END GIRL1 1

INTERJECT_COPY_TRANS GIRL2 2 e3fadeslavegirl2
== E3FADEJ IF ~InParty("E3Fade")~ THEN @541
END

INTERJECT_COPY_TRANS AERIEJ 53 e3fadeaerieslaves
== E3FADEJ IF ~InParty("E3Fade")~ THEN @542
END

INTERJECT_COPY_TRANS JAHEIRAJ 349 e3fadejaheiraslaves
== E3FADEJ IF ~InParty("E3Fade")~ THEN @543
END

INTERJECT_COPY_TRANS2 GIRL2 5 e3fadeslavegirl2gold
== E3FADEJ IF ~InParty("E3Fade")~ THEN @544
END

APPEND E3FADEJ
IF ~~ THEN BEGIN fadehaegan
SAY @539
IF ~~ THEN EXIT
END
END

CHAIN
IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
IsGabber("E3Fade")
Global("E3FADESALVANAS","LOCALS",0)~ THEN SALVANAS fadesalvanas
@461 DO ~SetGlobal("E3FADESALVANAS","LOCALS",1)~
== E3FADEJ @462 == SALVANAS @463 == E3FADEJ @464 == SALVANAS @465 == E3FADEJ @466 == SALVANAS @467 == E3FADEJ @468 == SALVANAS @469 == E3FADEJ @470 == SALVANAS @471 == E3FADEJ @472 == SALVANAS @473 == E3FADEJ @474 == SALVANAS @475
EXIT

CHAIN
IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
IsGabber("E3Fade")
Global("E3FADESALVANAS","LOCALS",1)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN SALVANAS fadesalvanas2
@476 DO ~SetGlobal("E3FADESALVANAS","LOCALS",2)~
== E3FADEJ @477 == SALVANAS @478
END
IF ~~ THEN REPLY @479 GOTO fadesalvanas_clear
IF ~~ THEN REPLY @480 GOTO fadesalvanas_bits
IF ~~ THEN REPLY @481 GOTO fadesalvanas_rip

CHAIN
IF ~~ THEN SALVANAS fadesalvanas_bits
@483 == E3FADEJ @484 == SALVANAS @485
EXIT

APPEND SALVANAS
IF ~~ THEN BEGIN fadesalvanas_clear
SAY @482
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fadesalvanas_rip
SAY @486
IF ~~ THEN EXIT
END
END

ADD_TRANS_TRIGGER ARNMAN03 0 ~!InParty("E3Fade")~

EXTEND_BOTTOM ARNMAN03 0
IF ~InParty("E3Fade")~ THEN EXTERN E3FADEJ fadecuchul
END

CHAIN
IF WEIGHT #-1
~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEPELANNA","GLOBAL",0)
Global("arntra03Move","AR0307",4)
Global("TalkedToPelanna","GLOBAL",1)~ THEN PELANNA fadepelanna
@487 DO ~SetGlobal("E3FADEPELANNA","GLOBAL",1)~
== E3FADEJ @488 == PELANNA @489 == E3FADEJ @490 == PELANNA @491 == E3FADEJ @492 == PELANNA @493 == E3FADEJ @494
END
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("E3cut010")~ EXIT

CHAIN 
IF ~~ THEN E3FADEJ fadecuchul
@497 == ARNMAN03 @498
EXIT

APPEND PELANNA
IF ~~ THEN BEGIN fadepelanna2
SAY @496
IF ~~ THEN DO ~SetGlobal("E3FADEPELANNA","GLOBAL",3)~ EXIT
END
END

APPEND E3FADEJ
IF ~AreaCheck("AR0307")
Global("E3FADEPELANNA","GLOBAL",2)~ THEN BEGIN fadepelanna2
SAY @495
IF ~~ THEN EXTERN PELANNA fadepelanna2
END

IF ~~ THEN BEGIN fadegladiator
SAY @459
IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut02c")~ EXIT
END

IF ~~ THEN BEGIN fadehendak
SAY @460
IF ~!PartyHasItem("MISC4Z")~ THEN EXTERN HENDAK 4
IF ~PartyHasItem("MISC4Z")~ THEN EXTERN HENDAK 38
END

IF ~~ THEN BEGIN fadesaemon
SAY @507
IF ~~ THEN REPLY @508 GOTO fadesaemon2
END

IF ~~ THEN BEGIN fadesaemon2
SAY @509
COPY_TRANS PPSAEM2 19
END
END

CHAIN
IF WEIGHT #-1
~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADERIBALD","LOCALS",0)~ THEN RIBALD faderibald
#38861 DO ~SetGlobal("E3FADERIBALD","LOCALS",1)~
= @499 == E3FADEJ @500 == RIBALD @501 == E3FADEJ @502
END
IF ~~ THEN GOTO 0

CHAIN
IF WEIGHT #-1
~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADETHUMB","LOCALS",0)~ THEN THUMB fadethumb
#23429 DO ~SetGlobal("E3FADETHUMB","LOCALS",1)~
= @503 == E3FADEJ @504 == THUMB @505 == E3FADEJ @506
EXIT

ADD_TRANS_TRIGGER PPSAEM2 19 ~OR(3)
!InParty("E3Fade")
!See("E3Fade")
StateCheck("E3Fade",STATE_SLEEPING)~

EXTEND_BOTTOM PPSAEM2 19
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN EXTERN E3FADEJ fadesaemon
END

INTERJECT_COPY_TRANS ANOMENJ 150 e3fadeanomenssister
== E3FADEJ IF ~InParty("E3Fade")~ THEN @517
END

INTERJECT_COPY_TRANS UHKID01 3 e3fadedirbert
== E3FADEJ IF ~InParty("E3Fade")~ THEN @518
END

INTERJECT_COPY_TRANS FIRKRA02 4 e3fadefirkraag
== E3FADEJ IF ~InParty("E3Fade")~ THEN @519
== ANOMENJ IF ~InParty("E3Fade")
InParty("Anomen")~ THEN @520
== E3FADEJ IF ~InParty("E3Fade")
InParty("Anomen")~ THEN @521
END

INTERJECT_COPY_TRANS BANOMEN 12 e3fadeanomenarrogance
== E3FADEJ IF ~InParty("E3Fade")~ THEN @522
== ANOMENJ IF ~InParty("E3Fade")~ THEN @523
== E3FADEJ IF ~InParty("E3Fade")~ THEN @524
== ANOMENJ IF ~InParty("E3Fade")~ THEN @525
== E3FADEJ IF ~InParty("E3Fade")~ THEN @526
== ANOMENJ IF ~InParty("E3Fade")~ THEN @527
== E3FADEJ IF ~InParty("E3Fade")~ THEN @528
== ANOMENJ IF ~InParty("E3Fade")~ THEN @529
END

CHAIN
IF WEIGHT #-1 ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
RandomNum(2,1)
Global("E3FADECELVAN","AR0300",0)~ THEN CELVAN fadecelvan
@545 DO ~SetGlobal("E3FADECELVAN","AR0300",1)~
== E3FADEJ @546
END
IF ~~ THEN GOTO 1

INTERJECT_COPY_TRANS GAAL 8 e3fadegaal
== E3FADEJ IF ~InParty("E3Fade")~ THEN @547
END

CHAIN
IF WEIGHT #-1 ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FADEWAYLANE","LOCALS",0)~ THEN WAYLANE fadewaylane
@548 DO ~SetGlobal("E3FADEWAYLANE","LOCALS",1)~
== E3FADEJ @549
== WAYLANE @550
== E3FADEJ @551
EXIT

INTERJECT_COPY_TRANS PPDRADEE 4 e3fadedradeel
== E3FADEJ IF ~InParty("E3Fade")~ THEN @552
== JAHEIRAJ IF ~InParty("E3Fade")
InParty("Jaheira")~ THEN @553
END

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
Name("E3Fade",LastTalkedToBy)~ THEN EXTERN TRGYP02 fadefortune
END

CHAIN
IF ~~ THEN TRGYP02 fadefortune
@554
= IF ~OR(2)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @555
== TRGYP02 IF ~OR(2)
Global("E3FADEROMANCEACTIVE","GLOBAL",0)
Global("E3FADEROMANCEACTIVE","GLOBAL",3)~ THEN @557
== E3FADEJ IF ~OR(2)
Global("E3FADEROMANCEACTIVE","GLOBAL",1)
Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ THEN @556
== E3FADEJ IF ~OR(2)
Global("E3FADEROMANCEACTIVE","GLOBAL",0)
Global("E3FADEROMANCEACTIVE","GLOBAL",3)~ THEN @558
EXIT

BEGIN E3MSNGR
IF ~NumTimesTalkedTo(0)~ THEN BEGIN message_start
SAY @559
IF ~~ THEN DO ~SetGlobal("E3FINALQUEST","GLOBAL",1)~ EXTERN E3FADEJ message_start
END

APPEND E3FADEJ
IF ~~ THEN BEGIN message_start
SAY @560
IF ~~ THEN REPLY @561 GOTO message_immediately
IF ~~ THEN REPLY @562 GOTO message_wait
IF ~~ THEN REPLY @563 GOTO message_wrong
END

IF ~~ THEN BEGIN message_immediately
SAY @564
IF ~~ THEN DO ~SetGlobalTimer("E3FADEREMINDSARAN","GLOBAL",THREE_DAYS)~ EXIT
END

IF ~~ THEN BEGIN message_wait
SAY @565
IF ~~ THEN REPLY @566 GOTO message_immediately
IF ~~ THEN REPLY @567 GOTO message_leave
END

IF ~~ THEN BEGIN message_wrong
SAY @568
IF ~~ THEN REPLY @566 GOTO message_immediately
IF ~~ THEN REPLY @567 GOTO message_leave
END

IF ~~ THEN BEGIN message_leave
SAY @569
IF ~~ THEN DO ~SetGlobal("E3FADEARANONOWN","GLOBAL",1)
SetGlobal("E3FADEJOINED","LOCALS",0)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0307",4668,2017,6)~ EXIT
END
END

CHAIN IF WEIGHT #-1 ~InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FINALQUEST","GLOBAL",1)
Global("E3FADEREMINDER","GLOBAL",0)~ THEN ARAN finalquest2_start
@570
== E3FADEJ @571
== ARAN @572
END
IF ~~ THEN REPLY @573 GOTO finalquest2_do
IF ~~ THEN REPLY @574 GOTO finalquest2_involve
IF ~~ THEN REPLY @575 EXTERN E3FADEJ finalquest2_idea
IF ~~ THEN REPLY @576 EXTERN E3FADEJ finalquest2_better

CHAIN IF WEIGHT #-1 ~InParty("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FINALQUEST","GLOBAL",1)
Global("E3FADEREMINDER","GLOBAL",1)~ THEN ARAN finalquest2_start2
@583 
== E3FADEJ @584
== ARAN @585
END
IF ~~ THEN REPLY @573 GOTO finalquest2_do
IF ~~ THEN REPLY @574 GOTO finalquest2_involve
IF ~~ THEN REPLY @575 EXTERN E3FADEJ finalquest2_idea
IF ~~ THEN REPLY @576 EXTERN E3FADEJ finalquest2_better

CHAIN IF WEIGHT #-1 ~!InParty("E3Fade")
Global("E3FINALQUEST","GLOBAL",1)
Global("E3FADEARANONOWN","GLOBAL",1)~ THEN ARAN finalquest2_start3
@586 DO ~SetGlobal("E3FADEARANONOWN","GLOBAL",2)~
== E3FADEP @587
= @588
== ARAN @589
END
IF ~~ THEN REPLY @573 GOTO finalquest2_do
IF ~~ THEN REPLY @574 GOTO finalquest2_involve
IF ~~ THEN REPLY @575 EXTERN E3FADEP finalquest2_idea
IF ~~ THEN REPLY @576 EXTERN E3FADEP finalquest2_better

APPEND ARAN
IF ~~ THEN BEGIN finalquest2_do
SAY @577
IF ~~ THEN DO ~SetGlobal("E3FINALQUEST","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN finalquest2_involve
SAY @578
IF ~~ THEN DO ~SetGlobal("E3FINALQUEST","GLOBAL",2)~ EXIT
END
END

APPEND E3FADEJ
IF ~~ THEN BEGIN finalquest2_idea
SAY @579
IF ~~ THEN REPLY @580 EXTERN ARAN finalquest2_do
IF ~~ THEN REPLY @581 GOTO finalquest2_better
END

IF ~~ THEN BEGIN finalquest2_better
SAY @582
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
EscapeArea()~ EXIT
END
END

APPEND E3FADEP
IF ~~ THEN BEGIN finalquest2_idea
SAY @579
IF ~~ THEN REPLY @580 EXTERN ARAN finalquest2_do
IF ~~ THEN REPLY @581 GOTO finalquest2_better
END

IF ~~ THEN BEGIN finalquest2_better
SAY @582
IF ~~ THEN DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)
EscapeArea()~ EXIT
END
END

BEGIN E3ELLA
IF ~True()~ THEN BEGIN start
SAY @590
IF ~~ THEN EXIT
END

BEGIN E3DARLA
IF ~OR(3)
!InParty("E3Fade")
!See("E3Fade")
StateCheck("E3Fade",STATE_SLEEPING)~ THEN BEGIN goaway
SAY @609
IF ~~ THEN EXIT
END

IF ~Global("E3FINALQUEST","GLOBAL",3)~ THEN BEGIN shoo
SAY @620
IF ~~ THEN EXIT
END

IF ~GlobalGT("E3FINALQUEST","GLOBAL",4)~ THEN BEGIN leave
SAY @628
IF ~~ THEN DO ~ActionOverride("E3Ella",EscapeArea())
EscapeArea()~ EXIT
END

CHAIN IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FINALQUEST","GLOBAL",2)~ THEN E3DARLA finalquest3_start
@591 DO ~SetGlobal("E3FINALQUEST","GLOBAL",3)~
= @592
== E3FADEJ @593
== E3DARLA @594
== E3FADEJ @595
== E3DARLA @596
== E3FADEJ @597
== E3DARLA @598
== E3FADEJ @599
== E3DARLA @600
== E3FADEJ @601
== E3DARLA @602
== E3FADEJ @603
== E3DARLA @604
== E3FADEJ @605
== E3ELLA @606
== E3DARLA @607
== E3ELLA @608
EXIT

CHAIN IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
PartyHasItem("E3XLETTE")
Global("E3FINALQUEST","GLOBAL",4)~ THEN E3DARLA finalquest4_start
@621 DO ~SetGlobal("E3FINALQUEST","GLOBAL",5)~
== E3FADEJ @622
== E3DARLA @623
== E3FADEJ @624
== E3DARLA @625
== E3ELLA @626
== E3DARLA @627
EXIT

BEGIN E3XEKRA
IF ~OR(3)
!InParty("E3Fade")
!See("E3Fade")
StateCheck("E3Fade",STATE_SLEEPING)~ THEN BEGIN goaway
SAY @610
IF ~~ THEN EXIT
END

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FINALQUEST","GLOBAL",3)~ THEN E3XEKRA finalquest4_start
@611
== E3FADEJ @612
== E3XEKRA @613
= @614
== E3FADEJ @615
== E3XEKRA @616
= @617
== E3FADEJ @618
== E3XEKRA @619 DO ~SetGlobal("E3FINALQUEST","GLOBAL",4)
Enemy()~ EXIT
               
INTERJECT ROGER 0 e3faderoger
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @629
== ROGER IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @630
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @631
== ROGER IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @632
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @633 DO ~SetGlobal("E3FINALQUEST","GLOBAL",6)~
EXIT

INTERJECT ROGER 21 e3faderoger
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @629
== ROGER IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @630
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @631
== ROGER IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @632
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @633 DO ~SetGlobal("E3FINALQUEST","GLOBAL",6)~
EXIT

INTERJECT ROGER 24 e3faderoger
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @629
== ROGER IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @630
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @631
== ROGER IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @632
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @633 DO ~SetGlobal("E3FINALQUEST","GLOBAL",6)~
EXIT

INTERJECT ROGER 27 e3faderoger
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @629
== ROGER IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @630
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @631
== ROGER IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @632
== E3FADEJ IF ~InParty("E3Fade")
GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)~ THEN @633 DO ~SetGlobal("E3FINALQUEST","GLOBAL",6)~
EXIT

EXTEND_BOTTOM SASSAR 0
IF ~GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)
Global("E3ASKEDSASSAR","LOCALS",0)~ THEN REPLY @634 DO ~SetGlobal("E3FINALQUEST","GLOBAL",6)
SetGlobal("E3ASKEDSASSAR","LOCALS",1)~ GOTO finalquest_ask1
END

EXTEND_BOTTOM SASSAR 21
IF ~GlobalGT("E3FINALQUEST","GLOBAL",3)
GlobalLT("E3FINALQUEST","GLOBAL",7)
Global("E3ASKEDSASSAR","LOCALS",0)~ THEN REPLY @634 DO ~SetGlobal("E3FINALQUEST","GLOBAL",6)
SetGlobal("E3ASKEDSASSAR","LOCALS",1)~ GOTO finalquest_ask2
END

APPEND SASSAR
IF ~~ THEN BEGIN finalquest_ask1
SAY @635
IF ~InParty("E3Fade")~ THEN EXTERN E3FADEJ finalquest_sassar1
IF ~!InParty("E3Fade")~ THEN GOTO finalquest_ask1_1
END

IF ~~ THEN BEGIN finalquest_ask1_1
SAY @637
COPY_TRANS SASSAR 0
END

IF ~~ THEN BEGIN finalquest_ask2
SAY @635
IF ~InParty("E3Fade")~ THEN EXTERN E3FADEJ finalquest_sassar2
IF ~!InParty("E3Fade")~ THEN GOTO finalquest_ask2_1
END

IF ~~ THEN BEGIN finalquest_ask2_1
SAY @637
COPY_TRANS SASSAR 21
END
END

APPEND E3FADEJ
IF ~~ THEN BEGIN finalquest_sassar1
SAY @636
IF ~~ THEN EXTERN SASSAR finalquest_ask1_1
END

IF ~~ THEN BEGIN finalquest_sassar2
SAY @636
IF ~~ THEN EXTERN SASSAR finalquest_ask2_1
END
END

BEGIN E3CIRION
IF ~OR(3)
!InParty("E3Fade")
!See("E3Fade")
StateCheck("E3Fade",STATE_SLEEPING)~ THEN BEGIN goaway
SAY @639
IF ~~ THEN EXIT
END

CHAIN IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)~ THEN E3CIRION fadecirion
@640 DO ~SetGlobal("E3CIRIONTALKS","LOCALS",1)
SetGlobal("E3FINALQUEST","GLOBAL",7)~ 
== E3FADEJ @641
== E3CIRION @642
== E3FADEJ @643
== E3CIRION @644
= @645
== E3FADEJ @646
== E3CIRION @647
== E3FADEJ @648
== E3CIRION @649
== E3FADEJ IF ~Global("RiftGo","GLOBAL",1)~ THEN @650
== E3CIRION IF ~Global("RiftGo","GLOBAL",1)~ THEN @651
== E3FADEJ IF ~Global("RiftGo","GLOBAL",1)~ THEN @652
== E3CIRION IF ~Global("RiftGo","GLOBAL",1)~ THEN @653 DO ~ActionOverride("E3Savanya",Enemy()) 
ActionOverride("E3Jekhril",Enemy())
ActionOverride("E3Sume",Enemy())
ActionOverride("E3Taeghen",Enemy())
ActionOverride("E3Eriale",Enemy())
Enemy()~ 
== E3FADEJ IF ~!Global("RiftGo","GLOBAL",1)~ THEN @654
== E3CIRION IF ~!Global("RiftGo","GLOBAL",1)~ THEN @655
== E3FADEJ IF ~!Global("RiftGo","GLOBAL",1)~ THEN @656
== E3CIRION IF ~!Global("RiftGo","GLOBAL",1)~ THEN @657 DO ~ActionOverride("E3Savanya",Enemy()) 
ActionOverride("E3Jekhril",Enemy())
ActionOverride("E3Sume",Enemy())
ActionOverride("E3Taeghen",Enemy())
ActionOverride("E3Eriale",Enemy())
Enemy()~
EXIT

CHAIN IF WEIGHT #-1 ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",STATE_SLEEPING)
Global("E3FINALQUEST","GLOBAL",8)~ THEN ARAN finalquest8_start
@658 DO ~SetGlobal("E3FINALQUEST","GLOBAL",9)~
== E3FADEJ @659
== ARAN @660
== E3FADEJ @661
== ARAN @662
== E3FADEJ @663
== ARAN @664
== E3FADEJ @665
== ARAN @666
END
IF ~~ THEN REPLY @667 GOTO finalquest8_go
IF ~~ THEN REPLY @668 EXTERN E3FADEJ finalquest8_leave

CHAIN IF ~~ THEN E3FADEJ finalquest8_leave
@672
== ARAN @673
== E3FADEJ @674 DO ~SetGlobal("E3FADEROMANCEACTIVE","GLOBAL",3)~
EXIT

CHAIN IF ~~ THEN ARAN finalquest8_kill
@675
== E3FADEJ @676
== ARAN @677
== E3FADEJ @678
== ARAN @679
== E3FADEJ @680
== ARAN @681
== E3FADEJ @682
== ARAN @683
== E3FADEJ @684
EXIT

CHAIN IF ~~ THEN ARAN finalquest8_happy
@685
== E3FADEJ @678
== ARAN @679
== E3FADEJ @680
== ARAN @681
== E3FADEJ @682
== ARAN @683
== E3FADEJ @684
EXIT

APPEND ARAN
IF ~~ THEN BEGIN finalquest8_go
SAY @669
IF ~~ THEN REPLY @670 GOTO finalquest8_kill
IF ~~ THEN REPLY @671 GOTO finalquest8_happy
IF ~~ THEN REPLY @668 EXTERN E3FADEJ finalquest8_leave
END
END

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3DIDTREEOFLIFETALK","GLOBAL",0)~ THEN DO 
~SetGlobal("E3DIDTREEOFLIFETALK","GLOBAL",1)~ GOTO tree2_fade
IF ~InParty("E3Fade")
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3DIDTREEOFLIFETALK","GLOBAL",0)~ THEN DO
~SetGlobal("E3DIDTREEOFLIFETALK","GLOBAL",1)~ GOTO tree1_fade
END

APPEND PLAYER1
IF ~~ THEN BEGIN tree2_fade
SAY @686
IF ~~ THEN EXTERN E3FADEJ tree2_fade
END

IF ~~ THEN BEGIN tree1_fade
SAY @689
IF ~~ THEN REPLY @690 EXTERN E3FADEJ tree1_want
IF ~~ THEN REPLY @691 EXTERN E3FADEJ tree1_through
IF ~~ THEN REPLY @692 EXTERN E3FADEJ tree1_return
END
END

APPEND E3FADEJ
IF ~~ THEN BEGIN tree2_fade
SAY @687 = @688
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN tree1_want
SAY @693
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN tree1_through
SAY @694
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN tree1_return
SAY @695
COPY_TRANS PLAYER1 33
END
END

EXTEND_BOTTOM PLAYER1 25
IF ~InParty("E3Fade")
!Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3DIDHELLARRIVALTALK","GLOBAL",0)~ THEN DO 
~SetGlobal("E3DIDHELLARRIVALTALK","GLOBAL",1)~ EXTERN E3FADEJ hell1_fade
IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",2)
Global("E3DIDHELLARRIVALTALK","GLOBAL",0)~ THEN DO
~SetGlobal("E3DIDHELLARRIVALTALK","GLOBAL",1)~ EXTERN E3FADEJ hell2_fade
END

APPEND E3FADEJ
IF ~~ THEN BEGIN hell1_fade
SAY @696
COPY_TRANS PLAYER1 25
END

IF ~~ THEN BEGIN hell2_fade
SAY @697
COPY_TRANS PLAYER1 25
END
END

INTERJECT_COPY_TRANS HELLJON 7 e3didhelljontalk
== E3FADEJ IF ~InParty("E3Fade")~ THEN @698
END

INTERJECT_COPY_TRANS HELLJON 8 e3didhelljontalk
== E3FADEJ IF ~InParty("E3Fade")~ THEN @698
END

INTERJECT_COPY_TRANS HELLJON 9 e3didhelljontalk
== E3FADEJ IF ~InParty("E3Fade")~ THEN @698
END

INTERJECT_COPY_TRANS HELLJON 10 e3didhelljontalk
== E3FADEJ IF ~InParty("E3Fade")~ THEN @698
END

INTERJECT_COPY_TRANS BODHI2 1 e3fadebodhi2
== E3FADEJ IF ~InParty("E3Fade")~ THEN @699
== BODHI2 IF ~InParty("E3Fade")~ THEN @700
END

INTERJECT_COPY_TRANS BODHI2 2 e3fadebodhi2
== E3FADEJ IF ~InParty("E3Fade")~ THEN @701
== BODHI2 IF ~InParty("E3Fade")~ THEN @700
END

INTERJECT_COPY_TRANS BODHI2 3 e3fadebodhi2
== E3FADEJ IF ~InParty("E3Fade")~ THEN @702
== BODHI2 IF ~InParty("E3Fade")~ THEN @700
END

INTERJECT PIRMUR07 0 e3fadegalvena
== E3FADEJ IF ~InParty("E3Fade")~ THEN @703
== PIRMUR01 IF ~InParty("E3Fade")~ THEN @704
COPY_TRANS PIRMUR01 2

EXTEND_BOTTOM DOGHMA 0
IF ~PartyHasItem("E3FADBD1")
Global("RevealUmar","GLOBAL",1)~ THEN REPLY #57916 GOTO 10
END

EXTEND_BOTTOM DOGHMA 0
IF ~PartyHasItem("E3FADBD2")~ THEN REPLY #57916 EXTERN DOGHMA fadedemon
END

APPEND DOGHMA
IF ~~ THEN BEGIN fadedemon
SAY @705
IF ~~ THEN EXIT
END
END

INTERJECT_COPY_TRANS PPLDR01 0 e3fadepirate
== E3FADEJ IF ~InParty("E3Fade")~ THEN @706
END

INTERJECT PPDOOR 0 e3fadedoorguard
== E3FADEJ IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN @707
== PPDOOR IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN @708
== E3FADEJ IF ~InParty("E3Fade")
Global("E3FADEROMANCEACTIVE","GLOBAL",1)~ THEN @709
END
IF ~~ THEN REPLY @710 EXTERN E3FADEJ doorguard_ways
IF ~~ THEN REPLY @711 EXTERN E3FADEJ doorguard_long

APPEND E3FADEJ
IF ~~ THEN BEGIN doorguard_ways
SAY @712
IF ~~ THEN REPLY @713 GOTO doorguard_goals
IF ~~ THEN REPLY @714 GOTO doorguard_prostitute
IF ~~ THEN REPLY @715 GOTO doorguard_difference
END

IF ~~ THEN BEGIN doorguard_long
SAY @716
IF ~~ THEN EXTERN PPDOOR doorguard_long
END

IF ~~ THEN BEGIN doorguard_goals
SAY @718
IF ~~ THEN EXTERN PPDOOR doorguard_long
END

IF ~~ THEN BEGIN doorguard_prostitute
SAY @719
IF ~~ THEN EXTERN PPDOOR doorguard_long
END

IF ~~ THEN BEGIN doorguard_difference
SAY @720
IF ~~ THEN EXTERN PPDOOR doorguard_long
END
END

APPEND PPDOOR
IF ~~ THEN BEGIN doorguard_long
SAY @717
COPY_TRANS PPDOOR 0
END
END

EXTEND_BOTTOM C6ELHAN2 70
IF ~OR(2)
PartyHasItem("E3FADBD1")
PartyHasItem("E3FADBD2")~ THEN REPLY @721 GOTO 76
END

ADD_TRANS_TRIGGER RAELIS 38 ~!InParty("E3Fade")~

EXTEND_BOTTOM RAELIS 38
IF ~InParty("E3Fade")~ THEN REPLY #29963 GOTO 41
IF ~InParty("E3Fade")~ THEN REPLY #29964 GOTO 41
IF ~InParty("E3Fade")~ THEN REPLY #29965 EXTERN RAELIS faderaelis
END

ADD_TRANS_TRIGGER RAELIS 39 ~!InParty("E3Fade")~

EXTEND_BOTTOM RAELIS 39
IF ~InParty("E3Fade")~ THEN REPLY #29963 GOTO 41
IF ~InParty("E3Fade")~ THEN REPLY #29964 GOTO 41
IF ~InParty("E3Fade")~ THEN REPLY #29965 EXTERN RAELIS faderaelis
END

APPEND RAELIS
IF ~~ THEN BEGIN faderaelis
SAY @722 = @723
COPY_TRANS RAELIS 44
END
END

INTERJECT_COPY_TRANS GARREN 1 e3fadegarren
== E3FADEJ IF ~InParty("E3Fade")~ THEN @724
END

INTERJECT_COPY_TRANS GARREN 2 e3fadegarren
== E3FADEJ IF ~InParty("E3Fade")~ THEN @724
END

INTERJECT_COPY_TRANS ARNGRL01 16 e3fademissy
== E3FADEJ IF ~InParty("E3Fade")~ THEN @725
END

INTERJECT_COPY_TRANS ARNTRA05 0 e3fadetrapmaster
== E3FADEJ IF ~InParty("E3Fade")~ THEN @726
== ARNTRA05 IF ~InParty("E3Fade")~ THEN @734
END

APPEND ARAN
IF ~GlobalLT("E3FINALQUEST","GLOBAL",8)~ THEN BEGIN finalquest_filler
SAY @727
IF ~~ THEN REPLY @728 EXIT
IF ~Global("Chapter","GLOBAL",6)
Global("ShadowFightBodhi","GLOBAL",0)
!Dead("c6bodhi")~ THEN REPLY @729 GOTO finalquest_filler_1
IF ~Global("Chapter","GLOBAL",6)
Global("ShadowFightBodhi","GLOBAL",1)
!Dead("c6bodhi")~ THEN REPLY @729 GOTO finalquest_filler_2
IF ~Global("Chapter","GLOBAL",6)
Global("ShadowFightBodhi","GLOBAL",2)
!Dead("c6bodhi")~ THEN REPLY @729 GOTO finalquest_filler_3
IF ~GlobalGT("Chapter","GLOBAL",5)
Dead("c6bodhi")~ THEN REPLY @729 GOTO finalquest_filler_4
END

IF ~~ THEN BEGIN finalquest_filler_1
SAY @730
COPY_TRANS ARAN 76
END

IF ~~ THEN BEGIN finalquest_filler_2
SAY @731
COPY_TRANS ARAN 106
END

IF ~~ THEN BEGIN finalquest_filler_3
SAY @732
COPY_TRANS ARAN 107
END

IF ~~ THEN BEGIN finalquest_filler_4
SAY @733
COPY_TRANS ARAN 108
END
END












