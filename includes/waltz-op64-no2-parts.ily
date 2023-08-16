%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

%%% Positions and shapes

slurShapeA = \shape #'(
                        ((0.5 . 0.5) (0 . 0) (0 . -1) (0 . -2))
                        ((0 . 0) (0 . 1) (0 . 2) (0 . 3))
                        ) \etc
slurShapeB = \shape #'(
                        ((0 . -0.5) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0.5) (0 . 0) (0 . 0) (0 . -0.5))
                        ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 2.5))
                        ) \etc
slurShapeD = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeF = \shape #'((0 . -2.5) (0 . 0) (0 . 0) (-0.5 . -3)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 2.5))
                        ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1.25) (0 . 0.5) (-0.25 . 0.25) (-.25 . 0))
                        ) \etc
slurShapeI = \shape #'(
                        ((0 . 0.5) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -0.25) (-0.25 . 0.75) (0 . 2) (0 . 3))
                        ) \etc
slurShapeJ = \shape #'(
                     ((0 . -0.5) (0 . 0.5) (-1 . 1.5) (0 . 2))
                     ((0 . 0) (0 . 0) (0 . -0.25) (0 . -0.75))
                     ) \etc
slurShapeK = \shape #'((0 . 0.5) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0.5) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeN = \shape #'((-1 . 2) (-0.5 . 2) (0 . 1) (0 . 0)) \etc
slurShapeO = \shape #'((0 . 0) (0 . 0) (0 . 0) (0.5 . -0.5)) \etc
slurShapeP = \shape #'((-0.5 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -0.75)) \etc 
slurShapeQ = \shape #'((0 . 0) (0 . 0) (0 . 0) (1 . -0.5)) \etc

%%% Music

global = {
  \time 3/4
  \key cs \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \global
  \partial 4 gs'4~( 
  <gs-\slurShapeO \=1_( e'>2. |
  <fss\=1) ds'>) |
  r8 <fs gs>[( \acciaccatura { b } <fs a> r16 <fs gs>] <fs ds'>4) |
  r8 <fs gs>[( \acciaccatura { b } <fs a> r16 <fs gs>] <e cs'>4) |
  <e-\slurShapeP \=1_( cs'>2.^( |
  <ds\=1) bs')>2.) |
  r8 <d e>[( \acciaccatura { gs } <d fs> r16 <d e>] <d b'>4) |
  r8 <d e>[( \acciaccatura { gs } <cs, fs> r16 <cs e>] <cs a'>4) |
  
  \barNumberCheck 9
  \voiceOne
  a'2 gs4~ |
  gs8(_\< gs gs a a as\! |
  cs2 b4~) |
  b8\(_\< b b cs cs css\! |
  \oneVoice
  css8 ds ds gs gs fss |
  fss8 fs fs es es e |
  e8 ds ds css css cs |
  cs8 bs bs b b a\=1_( |
  
  \barNumberCheck 17
  <gs\=1)-\slurShapeQ \=2_( e'\=3^(>2. |
  <fss\=2) ds'\=3^)>\) |
  r8 <fs gs>[( \acciaccatura { b } <fs a> r16 <fs gs>] <fs ds'>4) |
  r8 <fs gs>[( \acciaccatura { b } <fs a> r16 <fs gs>] <e cs'>4) |
  <e-\slurShapeB \=1_( cs'-\slurShapeA \=2^(>2. |
  <ds\=1) bs'\=2)>2. |
  r8 <d e>[( \acciaccatura { gs } <d fs> r16 <d e>] <d b'>4) |
  r8 <d e>[( \acciaccatura { gs } <cs, fs> r16 <cs e>] <cs a'>4) |
  
  \barNumberCheck 25
  \voiceOne
  a'2 gs4~ |
  gs8(\< as as b b bs\! |
  % tie in source B
  ds2 cs4~) |
  cs8-\slurShapeC ( fs, fs gs gs a |
  % tie in source B
  cs2 b4~)
  b8(\< a gs fs\prall e fs\! |
  fss8 gs gs, e' e ds |
  cs4) \oneVoice r gs'( |
  
  \barNumberCheck 33
  % accents, not decrescendos, source B
  gs'8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  cs'8-\slurShapeD (-> ds cs a ds, cs') |
  cs8-\slurShapeE (-> ds cs gs cs, gs') |
  gs8(-> gs, ds' gs a gs |
  fss8 gs bs cs e fs |
  
  \barNumberCheck 41
  gs8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  a8( b cs d e fs |
  g gs a b cs d |
  \ottava 1 ds e es fs fss gs |
  cs4-.) \ottava 0 r gs,,( |
  
  \barNumberCheck 49
  gs'8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  cs'8-\slurShapeD (-> ds cs a ds, cs') |
  cs8-\slurShapeE (-> ds cs gs cs, gs') |
  gs8(-> gs, ds' gs a gs |
  fss8 gs bs cs e fs |
  
  \barNumberCheck 57
  gs8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  a8( b cs d e fs |
  g gs a b cs d |
  \ottava 1 ds e es fs fss gs |
  cs4-.) \ottava 0 r \bar "||" \break \key df \major f,,,4( |
  
  \barNumberCheck 65
  \override TextScript.avoid-slur = #'inside
  f'2. |
  % tie in source B
  f2 ef4~ |
  ef2 df4 |
  c4 bf f |
  gf4) r r |
  % tie in source B
  gf'2( f4~ |
  f4 ef4. df8 |
  c8 df f ef c bf |
  
  \barNumberCheck 73
  af4) r af'~( |
  af4 gf f |
  % tie third beat, source B
  f4 ef) df'!~( |
  % tie third beat, source B
  df2 df4~ |
  df4 c4. bf8 |
  c4 bf bff |
  af4 g gf |
  f8 c \trillUnderSlur df\prall c df bf |
  
  \barNumberCheck 81
  af4) r f'~( |
  % tie in source B
  f2 ef4~ |
  ef4 df a) |
  \tuplet 8/6 { c8[( bf e, f gf f bf a] } |
  \tuplet 3/2 { af8[ g gf] } gf'8) r r4 |
  r4 r f~( |
  f4 ef df |
  % grace note sixteens, source B
  \grace { c16[ df ef] } df4 c8 ef bf c |
  
  \barNumberCheck 89
  af4) r af'~( |
  af4 gf4. f8 |
  % tie in source B
  f4 ef) df'~( |
  % tie in source B
  df2 df4~ |
  df4 c bf |
  af4 g gf |
  ff4 ef df |
  c8 df ef df ff g, \bar "||" \break \key cs \minor |
  
  \barNumberCheck 97
  gs!8) a'( gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  cs'8-\slurShapeD (-> ds cs a ds, cs') |
  cs8-\slurShapeE (-> ds cs gs cs, gs') |
  gs8(-> gs, ds' gs a gs |
  fss8 gs bs cs e fs |
  
  \barNumberCheck 105
  gs8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  a8( b cs d e fs |
  g gs a b cs d |
  \ottava 1 ds e es fs fss gs |
  cs4-.) \ottava 0 r gs,,( |
  
  \barNumberCheck 113
  gs'8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  cs'8-\slurShapeD (-> ds cs a ds, cs') |
  cs8-\slurShapeE (-> ds cs gs cs, gs') |
  gs8(-> gs, ds' gs a gs |
  fss8 gs bs cs e fs |
  
  \barNumberCheck 121
  gs8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  a8( b cs d e fs |
  g gs a b cs d |
  \ottava 1 ds e es fs fss gs |
  cs4-.) \ottava 0 r gs,,(~ |
  
  \barNumberCheck 129
  <gs-\slurShapeO \=1_( e'>2. |
  <fss\=1) ds'>) |
  r8 <fs gs>[( \acciaccatura { b } <fs a> r16 <fs gs>] <fs ds'>4) |
  r8 <fs gs>[( \acciaccatura { b } <fs a> r16 <fs gs>] <e cs'>4) |
  <e-\slurShapeP \=1_( cs'>2.^( |
  <ds\=1) bs')>2.) |
  r8 <d e>[( \acciaccatura { gs } <d fs> r16 <d e>] <d b'>4) |
  r8 <d e>[( \acciaccatura { gs } <cs, fs> r16 <cs e>] <cs a'>4) |
  
  \barNumberCheck 137
  \voiceOne
  a'2 gs4~ |
  gs8-\slurShapeG (_\< gs gs a a as\! |
  cs2 b4~) |
  b8-\slurShapeH \(_\< b b cs cs css\! |
  \oneVoice
  css8 ds ds gs gs fss |
  fss8 fs fs es es e |
  e8 ds ds css css cs |
  cs8 bs bs b b a\=1_( |
  
  \barNumberCheck 145
  <gs\=1)-\slurShapeJ \=2_( e'-\slurShapeI \=3^(>2. |
  <fss\=2) ds'\=3^)>\) |
  r8 <fs gs>[( \acciaccatura { b } <fs a> r16 <fs gs>] <fs ds'>4) |
  r8 <fs gs>[( \acciaccatura { b } <fs a> r16 <fs gs>] <e cs'>4) |
  <e-\slurShapeP \=1_( cs'>2.^( |
  <ds\=1) bs')>2.) |
  r8 <d e>[( \acciaccatura { gs } <d fs> r16 <d e>] <d b'>4) |
  r8 <d e>[( \acciaccatura { gs } <cs, fs> r16 <cs e>] <cs a'>4) |
  
  \barNumberCheck 153
  \voiceOne
  a'2 gs4~ |
  gs8(\< as as b b bs\! |
  % tie in source B
  ds2 cs4~) |
  cs8( fs, fs gs gs a |
  % tie in source B
  cs2 b4~)
  b8(\< a gs fs\prall e fs\! |
  % no gs on third beat, source B
  fss8 gs gs, e' e ds |
  cs4) \oneVoice r gs'( |
  
  \barNumberCheck 161
  % accents, not decrescendos, source B
  gs'8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  cs'8-\slurShapeK (-> ds cs a ds, cs') |
  cs8-\slurShapeL (-> ds cs gs cs, gs') |
  gs8(-> gs, ds' gs a gs |
  fss8 gs bs cs e fs |
  
  \barNumberCheck 169
  gs8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  a8( b cs d e fs |
  g gs a b cs d |
  \ottava 1 ds e es fs fss gs |
  cs4-.) \ottava 0 r gs,,( |
  
  \barNumberCheck 177
  gs'8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  cs'8-\slurShapeK (-> ds cs a ds, cs') |
  cs8-\slurShapeM (-> ds cs gs cs, gs') |
  gs8(-> gs, ds' gs a gs |
  fss8 gs bs cs e fs |
  
  \barNumberCheck 185
  gs8-> a gs fs ds gs,) |
  fs'8(-> gs fs e cs gs) |
  e'8(-> fs e ds bs fs) |
  ds'8(-> e ds cs a e) |
  a8( b cs d e fs |
  g gs a b cs d |
  \ottava 1 ds e es fs fss gs |
  cs4-.) \ottava 0 r \bar "|."
}

rightHandLower = \relative {
  \global
  \partial 4 s4
  s2. * 8 |
  
  \barNumberCheck 9
  \voiceTwo 
  <bs fs'>2. |
  e2. |
  <ds a'>2. |
  gs2 gs4 |
  s2. * 4 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  <bs, fs'>2. |
  es2. |
  e2. |
  ds2. |
  d2. |
  cs2. |
  s2. * 2 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  <bs fs'>2. |
  e2. |
  <ds a'>2. |
  gs2 gs4 |
  s2. * 4 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  <bs, fs'>2. |
  es2. |
  e2. |
  ds2. |
  d2. |
  cs2. |
}

rightHand = <<
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  \global
  \partial 4 s4
  s2. * 8 |
  
  \barNumberCheck 9
  s2. |
  \voiceThree
  s4 cs'2 |
  s2. |
  % source B
  r4 <b e> e |
  s2. * 4 |
  
  \barNumberCheck 17
  s2. |
  % source B
  r4 <as, cs> q |
  s2. * 6 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 2 |
  s2 \once \hideNotes \voiceFour f'4^( |
  \voiceThree
  % source B
  f4) s2 |
  s2. * 2 |
  s2 \once \hideNotes \voiceFour gf4^( |
  \voiceThree
  % source B
  gf4) s2 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 4 |
  s2 gf4 |
  s2. |
  % ties in third beat, source B
  s2 \once \hideNotes \voiceFour gf4^( |
  \voiceThree
  % source B
  gf4) s2 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  s2. |
  s4 cs,2 |
  s2. |
  % source B
  r4 <b e> e |
  s2. * 4 |
  
  \barNumberCheck 145
  s2. |
  % source B
  r4 <as, cs> q |
}

leftHandMiddle = \relative {
  \global
  \partial 4 s4
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 2 |
  \voiceFour 
  s2 \once \hideNotes bf4( |
  bf2.)^( |
  \voiceThree
  \once \hideNotes bf4) s2 |
  s2. |
  \voiceFour
  s2 \once \hideNotes c4( |
  c2.)^( |
  
  \barNumberCheck 73
  \voiceThree 
  % source B (slur end point)
  c4) <c af'> q |
  s2. * 7 |
  
  \barNumberCheck 81
  s2. * 2 |
  \voiceFour
  s2 \once \hideNotes bf4^~ |
  \voiceThree
  bf2.^~ |
  % source B
  bf4 s2 |
  \voiceFour
  s2. |
  s2 \once \hideNotes c4_~ |
  % ties in beat one, according to source B
  c2.^~ |
  
  \barNumberCheck 89
  c4 s2 |
  
}

leftHandLower = \relative {
  \global
  \partial 4 r4
  cs,4 <gs'' cs e> q |
  ds,4 <ds' as' cs> q |
  gs,4 <ds' gs bs> q |
  cs4 <gs' ds'>( <gs cs>) |
  e,4 <e' a> q |
  e,4 <fs' a> q |
  e,4 gs' <e gs> |
  % fs in chord of third beat, source B
  a,4 <e' a> <ds fs a> |
  
  \barNumberCheck 9
  gs,4 <gs' ds'> q |
  cs,4 \voiceFour gs' fs |
  \oneVoice
  b,4 <b' fs'> q |
  \voiceFour
  % source B
  e,2 as4 |
  \oneVoice
  ds,4 \clef treble <b' ds gs b> r |
  \clef bass ds,,4 <cs'' fss> r |
  gs,4 <bs' fs'> r |
  R2. |
  
  \barNumberCheck 17
  cs,4 <gs' cs e> q |
  \voiceFour
  % source B
  ds2. |
  \oneVoice
  gs,4 <ds' gs bs> q |
  cs4 <gs' ds'>( <gs cs>) |
  e,4 <e' a > q |
  e,4 <fs' a> q |
  e,4 gs' <e gs> |
  % fs in chord of third beat, source B
  a,4 <e' a> <ds fs a> |
  
  \barNumberCheck 25
  gs,4 <gs' ds'> q |
  cs,4 <gs' b cs> q |
  fs,4 <as' fs'> q |
  b,4 <a' b> q |
  e,4( <b' gs'> es, |
  fs4 <ds' a'>) r |
  gs,4 <e' cs'> <fs bs> |
  cs4 <gs' e'> r |
  
  \barNumberCheck 33
  bs,4 <gs' ds'> q |
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  a,4 <e' cs'> q |
  % third beat, chord, not rest, source B
  fs,4 <fs' cs'> q |
  gs,4 <e' gs> r |
  gs,,4 r <fs'' bs> |
  cs4 <gs' e'> q |
  
  \barNumberCheck 41
  bs,4 <gs' ds'> q |
  % no cs in second beat chord, source B (consistent with measure 34)
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  a,4 <e' cs'> q |
  % third beat, no upper a in chord, source B
  fs,4 r <a' d> |
  R2. |
  gs,4 <gs' bs fs'> q |
  % cs in second beat chord, source B
  cs,4 <gs' cs e> r |
  
  \barNumberCheck 49
  bs,4 <gs' ds'> q |
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  a,4 <e' cs'> q |
  fs,4 <fs' cs'> q |
  gs,4 <e' gs> r |
  gs,,4 r <fs'' bs> |
  cs4 <gs' e'> q |
  
  \barNumberCheck 57
  bs,4 <gs' ds'> q |
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  % third beat, chord, not rest, source B
  a,4 <e' cs'> q |
  % third beat, no upper a in chord, source B
  fs,4 r <a' d> |
  R2. |
  gs,4 <gs' bs fs'> q |
  cs,4 <gs' cs e> \key df \major r |
  
  \barNumberCheck 65
  df,4 <af'' df f>4 q~ |
  q4 q <a~ df f> |
  <df, a'>4 <bf' f'> \voiceFour q |
  s4 df,( d |
  % source B, no slur the gf
  <ef) bf'>4 bf' <bf~ gf'^~> |
  q4 q <b~ gf'> |
  <ef, b'>4 <c' gf'> q |
  s4 ef,( e |
  
  \barNumberCheck 73
  f2.) |
  \oneVoice
  f4 \clef treble <bf d af'> q |
  gf4 <bf ef gf> <bf ef bf'> |
  % gf first beat, source B
  gf4 <bf ef bf'> q |
  g4 <df' e bf'> q |
  af4 <f' df'> r |
  \clef bass 
  af,,4 r <af' c gf'> |
  df,4 <af' df f> <g df' e> |
  
  \barNumberCheck 81
  df,4 <af'' df f> q |
  df,4 <af' f'> <a~ f'> |
  <df, a'>4 <bf' f'> \voiceFour q |
  r4 df,( d | 
  ef4) bf' bf~ |
  <ef, bf'>4  \oneVoice <b' gf'> <b~ gf'> |
  <ef, b'> <c' gf'> \voiceFour q |
  s4 ef,-\slurShapeF ( e | 
  
  \barNumberCheck 89
  <f) c'>4 \oneVoice <c' af' >4 q |
  f,4-. \clef treble <bf d af'> q |
  gf4 <bf ef gf> <bf ef bf'> |
  g4 <df' e bf'> bf |
  % first and third beat, g natural, source B
  <e g df'>4 df <g bf e>-. |
  R2. * 3 |
  
  \barNumberCheck 97
  \key cs \minor
  \clef bass 
  bs,,4 <gs' ds'> q |
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  a,4 <e' cs'> q |
  % third beat, chord, not rest, source B
  fs,4 <fs' cs'> q |
  gs,4 <e' gs> r |
  gs,,4 r <fs'' bs> |
  cs4 <gs' e'> q |
  
  \barNumberCheck 105
  bs,4 <gs' ds'> q |
  % no cs in second beat chord, source B
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  a,4 <e' cs'> q |
  % third beat, no upper a in chord, source B
  fs,4 r <a' d> |
  R2. |
  gs,4 <gs' bs fs'> q |
  % cs in third beat chord, source B
  cs,4 <gs' cs e> r |
  
  \barNumberCheck 113
  bs,4 <gs' ds'> q |
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  a,4 <e' cs'> q |
  fs,4 <fs' cs'> q |
  gs,4 <e' gs> r |
  gs,,4 r <fs'' bs> |
  cs4 <gs' e'> q |
  
  \barNumberCheck 121
  bs,4 <gs' ds'> q |
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  % third beat, chord, not rest, source B
  a,4 <e' cs'> q |
  % third beat, no upper a in chord, source B
  fs,4 r <a' d> |
  R2. |
  gs,4 <gs' bs fs'> q |
  % cs in third beat chord, source B
  cs,4 <gs' cs e> r |
  
  \barNumberCheck 129
  cs,,4 <gs'' cs e> q |
  ds,4 <ds' as' cs> q |
  gs,4 <ds' gs bs> q |
  cs4 <gs' ds'>( <gs cs>) |
  e,4 <e' a> q |
  e,4 <fs' a> q |
  e,4 gs' <e gs> |
  % fs in third beat chord, source B
  a,4 <e' a> <ds fs a> |
  
  \barNumberCheck 137
  gs,4 <gs' ds'> q |
  \voiceFour
  cs,4 gs' fs |
  \oneVoice
  b,4 <b' fs'> q |
  \voiceFour
  % source B
  e,2 as4 |
  \oneVoice
  ds,4 \clef treble <b' ds gs b> r |
  \clef bass ds,,4 <cs'' fss> r |
  gs,4 <bs' fs'> r |
  R2. |
  
  \barNumberCheck 145
  cs,4 <gs' cs e> q |
  \voiceFour
  % source B
  ds2. |
  \oneVoice
  gs,4 <ds' gs bs> q |
  cs4 <gs' ds'>( <gs cs>) |
  e,4 <e' a > q |
  e,4 <fs' a> q |
  e,4 gs' <e gs> |
  % fs in third beat chord, source B
  a,4 <e' a> <ds fs a> |
  
  \barNumberCheck 153
  gs,4 <gs' ds'> q |
  cs,4 <gs' b cs> q |
  fs,4 <as' fs'> q |
  b,4 <a' b> q |
  e,4( <b' gs'> es, |
  fs4 <ds' a'>) r |
  gs,4 <e' cs'> <fs bs> |
  cs4 <gs' e'> r |
  
  \barNumberCheck 161
  bs,4 <gs' ds'> q |
  % no cs in chords, source B
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  a,4 <e' cs'> q |
  % third beat, chord, not rest, source B
  fs,4 <fs' cs'> q |
  gs,4 <e' gs> r |
  gs,,4 r <fs'' bs> |
  cs4 <gs' e'> q |
  
  \barNumberCheck 169
  bs,4 <gs' ds'> q |
  % no cs in second beat chord, source B 
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  a,4 <e' cs'> q |
  % third beat, no upper a in chord, source B
  fs,4 r <a' d> |
  R2. |
  gs,4 <gs' bs fs'> q |
  % cs in third beat chord, source B
  cs,4 <gs' cs e> r |
  
  \barNumberCheck 177
  bs,4 <gs' ds'> q |
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  a,4 <e' cs'> q |
  fs,4 <fs' cs'> q |
  gs,4 <e' gs> r |
  gs,,4 r <fs'' bs> |
  cs4 <gs' e'> q |
  
  \barNumberCheck 185
  bs,4 <gs' ds'> q |
  cs,4 <gs' e'> q |
  gs,4 <fs' bs> q |
  % third beat, chord, not rest, source B
  a,4 <e' cs'> q |
  % third beat, no upper a in chord, source B
  fs,4 r <a' d> |
  R2. |
  gs,4 <gs' bs fs'> q |
  % source B
  cs,4-\slurShapeN ( <gs' cs e>)\arpeggio
}

leftHand = <<
  \clef bass
  \new Voice \leftHandUpper
  \new Voice \leftHandMiddle
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 \tag layout { s4\> } \tag midi { s4\mf\> } 
  s2. |
  s8 s\! s2 |
  s4 s4.\< s8\! |
  s4 s4.\< s8\! |
  s2. * 2 |
  s4 s4.\< s8\! |
  s4 s4.\< s8\! |
  
  \barNumberCheck 9
  s2. * 6 |
  s2.\> |
  s2 s8 s\! |
  
  \barNumberCheck 17
  s2.\> |
  s2 s8 s\! |
  s4 s4.\< s8\! |
  s4 s4.\< s8\! |
  s2.\> |
  s2 s8 s\! |
  s4 s4.\< s8\! |
  s4 s4.\< s8\! |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 6 |
  s2.\< |
  s2 s8 s\! |
  
  \barNumberCheck 41
  s2. * 4 |
  s2.\> |
  s2. * 2 |
  s8 s\! s4 s\pp |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 4 |
  s2.\> |
  s2. * 2 |
  s8 s\! s4 %{ df major %} s4 |
  
  \barNumberCheck 65
  s2.\> |
  s2. |
  s8 s\! s2 |
  s2. * 5
  
  \barNumberCheck 73
  s2 s4\> |
  s2. |
  s4 s2\! |
  s8 s\> s4. s8\! |
  s2. * 4 |
  
  \barNumberCheck 81 
  s2. * 4 |
  s4\< s8\! s4. |
  s2. * 2 |
  s4 s2\< |
  
  \barNumberCheck 89
  s8 s\! s4 s\> |
  s2. |
  s2 s4\< |
  s8 s\! s2^\pocoRitenuto |
  s2. * 4 |
  
  \barNumberCheck 97
  s2. * 6 |
  s2.\< |
  s2 s8 s\! |
  
  \barNumberCheck 105
  s2. * 4 |
  s2.\> |
  s2. * 2 |
  s8 s\! s4 s\pp |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 4 |
  s2.\> |
  s2. * 2 |
  s8 s\! s2 |
  
  \barNumberCheck 129
  s2. |
  s8 s\! s2 |
  s4 s4.\< s8\! |
  s4 s4.\< s8\! |
  s2. * 2 |
  s4 s4.\< s8\! |
  s4 s4.\< s8\! |
  
  \barNumberCheck 137
  s2. * 6 |
  s2.\> |
  s2 s8 s\! |
  
  \barNumberCheck 145
  s2.\> |
  s2 s8 s\! |
  s4 s4.\< s8\! |
  s4 s4.\< s8\! |
  s2.\> |
  s2 s8 s\! |
  s4 s4.\< s8\! |
  s4 s4.\< s8\! |
  
  \barNumberCheck 153
  s2. * 8 | 
  
  \barNumberCheck 161
  s2. * 6 |
  s2.\< |
  s2 s8 s\! |
  
  \barNumberCheck 169
  s2. * 4 |
  s2.\> |
  s2. * 2 |
  s8 s\! s4 s\pp |
  
  \barNumberCheck 177
  s2. * 8 |
  
  \barNumberCheck 185
  s2. * 4 |
  s2.\> |
  s2. * 2 |
  s8 s\! s4
}

pedal = {
  \partial 4 s4
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2. |
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2\sd s4\su |
  
  \barNumberCheck 9
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2. |
  \repeat unfold 3 { s2\sd s4\su | }
  s2. |
  
  \barNumberCheck 17
  s2\sd s4\su |
  s2. |
  \repeat unfold 5 { s2\sd s8 s\su | }
  s2\sd s4\su |
  
  \barNumberCheck 25
  \repeat unfold 5 { s2\sd s8 s\su | }
  s2. |
  s2\sd s4\su |
  s2\sd s4\su |
  
  \barNumberCheck 33
  \repeat unfold 4 { s2\sd s8 s\su | }
  \override SustainPedal.Y-offset = 2
  s2\sd s4\su |
  s2\sd s4\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 \override SustainPedal.Y-offset = 2 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 41
  \repeat unfold 3 { s2\sd s8 s\su | }
  \revert SustainPedal.Y-offset
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 49
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  \override SustainPedal.Y-offset = 2
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2\sd s4\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 \override SustainPedal.Y-offset = 2 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 57
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s4\sd s\su %{ key of df major %} s |
    
  \barNumberCheck 65
  s2.\sd |
  s2 s8 \override SustainPedal.Y-offset = 1 s\su |
  s2. * 2 |
  s2.\sd |
  s2 s4\su |
  s2. |
  s2\sd \revert SustainPedal.Y-offset s4\su |
  
  \barNumberCheck 73
  s2. |
  \override SustainPedal.Y-offset = 1
  s2\sd s8 s\su|
  s2\sd s8 s\su|
  s2. |
  \revert SustainPedal.Y-offset
  s2\sd s8 \override SustainPedal.Y-offset = 1 s\su|
  s2\sd s8 \override SustainPedal.Y-offset = 2 s\su|
  s2\sd s8 s\su|
  s2. |
  
  \barNumberCheck 81
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2\sd s4\su |
  s2. * 2 |
  s4 s2\sd |
  s4 s2\su |
  s2. * 2 |
  
  \barNumberCheck 89
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd
  s2 s8 s\su |
  s2. * 3 |
  
  \barNumberCheck 97
  \override SustainPedal.Y-offset = 2
  s2\sd s8 s\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2\sd s4\su |
  s2\sd s4\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 \once \override SustainPedal.Y-offset = 2 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 105
  \repeat unfold 4 { s2\sd s8 s\su | }
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 113
  \repeat unfold 4 { s2\sd s8 s\su | }
  s2\sd s4\su |
  \override SustainPedal.Y-offset = 2
  s2\sd s4\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 \override SustainPedal.Y-offset = 2 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 121
  \repeat unfold 4 { s2\sd s8 s\su | }
  \override SustainPedal.Y-offset = 1
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s4\sd s\su s |
  
  \barNumberCheck 129
  % Tempo primo
  \revert SustainPedal.Y-offset
  s2\sd s8 s\su |
  s2\sd s8 \override SustainPedal.Y-offset = 1 s\su |
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2. |
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2\sd s4\su |
  
  \barNumberCheck 137
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  \override SustainPedal.Y-offset = 1  
  s2\sd s8 s\su |
  s2. |
  \revert SustainPedal.Y-offset
  s2\sd s4\su |
  s2\sd \override SustainPedal.Y-offset = 1 s4\su |
  s2\sd s4\su |
  s2. |
  
  \barNumberCheck 145
  s2\sd s4\su |
  \revert SustainPedal.Y-offset
  s2. |
  \repeat unfold 5 { s2\sd s8 s\su | }
  s2\sd s4\su |
  
  \barNumberCheck 153
  \repeat unfold 5 { s2\sd s8 s\su | }
  s2. |
  s2\sd s4\su |
  s2\sd s4\su |
  
  \barNumberCheck 161
  \repeat unfold 4 { s2\sd s8 s\su | }
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s8 \override SustainPedal.Y-offset = 3 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 169
  \repeat unfold 4 { s2\sd s8 s\su | }
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2. |
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 177
  \repeat unfold 4 { s2\sd s8 s\su | }
  s2\sd s4\su |
  s2\sd s4\su |
  \once \override SustainPedal.Y-offset = -3
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 185
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s4\sd s\su 
}

tempi = {
  \set Score.tempoHideNote = ##t
  \partial 4 \tempo "Tempo giusto" 2. = 56 s4
  s2. * 8 |

  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  \tempo "Più mosso" 2. = 72 |
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 7 |
  s2 \tempo "Più lento" 2. = 63 s4 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 4 |
  \tempo 2. = 60
  s2. |
  \tempo 2. = 58
  s2. |
  \tempo 2. = 56
  s2. |
  \tempo 2. = 54
  s2. |
  
  \barNumberCheck 97
  \tempo "Più mosso" 2. = 72
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  \tempo "Tempo primo" 2. = 56
  s2. * 8 |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  \tempo "Più mosso" 2. = 72
  s2. * 8 |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2. * 8 |
  
  \barNumberCheck 185
  s2. * 4 |
  \tempo 2. = 69
  s2. |
  \tempo 2. = 66
  s2. |
  \tempo 2. = 63
  s2. |
}

forceBreaks = {
  \partial 4 s4
  s2. * 36 \pageBreak
  s2. * 37 \pageBreak
  s2. * 37 \pageBreak
  s2. * 42 \pageBreak
}

waltzTwoNotes =
\score {
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 2"
  } 
  \keepWithTag layout  
  <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

waltzTwoMidi =
\score {
  \header {
    midiOutputFile = "waltz-op64-no2"
  }
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
