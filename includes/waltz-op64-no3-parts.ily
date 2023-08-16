%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

%%% Positions and shapes

slurShapeA = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . -1) (0 . 1.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

%%% Music

global = {
  \time 3/4
  \key af \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \global
  c''8-\slurShapeA ( g af f ef4~ |
  ef8 af c df f4~ |
  f8 d f ef c'4~ |
  c8 g af d, ef e |
  f8 e ef d df4 |
  c8 ef df c bf4) |
  f'8( e ef d df4) |
  b8( df c b bf4) |
  
  \barNumberCheck 9
  af8( e f df c4~ |
  c8 f af bf df4~ |
  df8 b df c af'4~ |
  af8 g f c d ef |
  bf8) g'-\slurShapeB ( ef' d f, ef |
  c'8 bf d, c af' g |
  bf,8 a af af) g'( f |
  af,8 bf g df' f ef) |
  
  \barNumberCheck 17
  c8( g af f ef4~ |
  ef8 af c df f4~ |
  f8 d f ef c'4~ |
  c8 g af d, ef e |
  f8 e ef d df4 |
  c8 ef df c bf4) |
  f'8( e ef d df4) |
  b8( df c b bf4) |
  
  \barNumberCheck 25
  af8( e f df c4~ |
  c8 f af bf df4~ |
  df8 b df c af'4~ |
  af8 g f c d ef |
  bf8) g'( ef' d f, ef |
  c'8 bf d, c af' g |
  bf,8 a af af) g'( f |
  g,8 bf d f ef d |
  
  \barNumberCheck 33
  df8 a bf gf f4~ |
  \stemUp
  f8 bf df ef \stemNeutral gf4~ |
  gf8 e gf f df'4~ |
  df8 a bf e, f af |
  g8 gf f e ef4 |
  d8 f ef df c4) |
  af'8( g gf f e4~ |
  e8) gf( f e ef4 | \break
  
  \barNumberCheck 41
  df8 a bf gf df4->~ |
  % second eight note, gf, source B
  df8 gf bf cf ef4~ |
  ef8 c ef df bf'4~ |
  bf8 f gf c, df d |
  ef8 d df c cf4 |
  bf8 df cf bf af4) |
  f'8( ef d df c4~ |
  c8 ef df c cf4 |
  
  \barNumberCheck 49
  % several notes, source B
  bf4) f8( g af d,) |
  ef8( af g c bf af' |
  g8 af ef f g d |
  ef8 f c d ef bf |
  c8 d af bf c f, |
  g8 af g c bf af' |
  g8 af ef f g d |
  ef8 f c d ef bf |
  
  \barNumberCheck 57
  % d naturals, source B
  c8 d a bf c d |
  % d natural, source B
  a8 bf c d a bf) |
  % trill to d natural, source B
  c2.~^\trillNatural \startTrillSpan |
  \afterGrace 15/16 c2. { b16[ \stopTrillSpan c] } |
  d8( ef cf df d ef |
  cf8 df d ef b cs) |
  d2.~ \startTrillSpan |
  \afterGrace 15/16 d2. { cs16[ \stopTrillSpan d] } |
  
  \barNumberCheck 65
  f2( ef4 |
  d8 b c f, g \slashedGrace { bf } af |
  g4. d8 g4 |
  d4 g) af'8( g |
  f2 ef4 |
  d8 b c f, g \slashedGrace { bf } af |
  g4. d8 g4 |
  d4 g2~) |
  
  \barNumberCheck 73
  \key c \major
  \voiceOne
  g2.~ |
  g2.~ |
  % tie in source B
  g2.~ |
  g2.~ |
  g2. |
  s2. * 3 |
  
  \barNumberCheck 81
  s2. |
  e'2( d8 c |
  c4) s a( |
  <b, g' b>4) <b d> <bf g' bf>( |
  <a g' a>4) <a e' g a> <a a'> |
  s2. * 2 |
  r4 f''2( |
  
  \barNumberCheck 89
  e2 f8. d16 |
  d2 c4 |
  b2 g4) |
  \oneVoice
  r4 <c,~ e g> <c e c'> |
  r4 <e bf' c>( q~
  q4 \slashedGrace { ef'8 } <e, bf' df>4 <e bf' c>) |
  r4 <af c>( q) |
  r4 <f af c>( q) |
  
  \barNumberCheck 97
  r4 <e bf' c>( q~ |
  % df in second beat, source B (and consistency)
  q4 \slashedGrace { ef'8 } <e, bf' df>4 <e bf' c>) |
  r4 <f af c>( q) |
  r4 <f af c>( <af bf>) |
  % tie in source B
  r4 <g df' ef>( q~ |
  q4 \slashedGrace { gf'8 } <g, df' ff>4 <g df' ef>) |
  r4 <cf ef>( q~ |
  q4 <af cf ef> q) |
  
  \barNumberCheck 105
  % tie in source B
  r4 <g df' ef>( q~ |
  q4 \slashedGrace { gf'8 } <g, df' ff>4 <g df' ef>) |
  <f c' ef>4( <f bf d> <ff bf df> |
  <ef af c>4 <eff af cf> <df ef~ bf'>) | \break
  \key af \major
  \acciaccatura { <c ef>8^( } c' g af f ef4~ |
  ef8 af c df f4~ |
  f8 d f ef c'4~ |
  c8 g af d, ef e |
  
  \barNumberCheck 113
  f8 e ef d df4 |
  c8 ef df c bf4) |
  f'8( e ef d df4) |
  b8( df c b bf4) |
  af8( e f df c4~ |
  c8 f af bf df4~ |
  df8 b df c af'4~ |
  af8 g f c d ef |
  
  \barNumberCheck 121
  bf8) g'( ef' d f, ef |
  c'8 bf d, c af' g |
  bf,8 a af af) g'( f |
  g,8 bf g df' f ef |
  c8 g af f ef4~ |
  ef8 af c df f4~ |
  f8 d f ef c'4~ |
  c8 g af d, ef e |
  
  \barNumberCheck 129
  f8 e ef d df4 |
  c8 ef df c bf4) |
  f'8( e ef d df4) |
  b8( df c b bf4) |
  \key e \major
  gs8( ds e cs b4~ |
  b8 fs' a cs b4~ |
  b8 fss a gs d'4~ |
  d8 bs cs fss, gs gss) |
  
  \barNumberCheck 137
  as8( es fs ds cs4~ |
  cs8 gs' b ds cs4~ |
  cs8 gss b as e'4^~ |
  \key af \major
  ff8 d ef ef, bf' ef |
  df'4) ef,8( df' c b |
  c8 g bf af g e |
  g8 fs f c df b |
  c8 f ef d ef f) |
  
  \barNumberCheck 145
  ef8( df') r df( c b |
  c8 g bf af af ff |
  ff8 c ef df df ff, |
  df' af bff cf df g,| \break
  af4)^\pocoAPocoAccel ef8( c' af f' |
  ef a, bf c df g, |
  af c ef, ef' c af' |
  f8 a, bf c df g,) |
  
  \barNumberCheck 153
  af8( bf df c df f |
  ef8 g bf af bf df |
  \ottava 1 c8 df f ef g bf |
  af8 bf df c df f |
  ef8 c g bf af f |
  d8 f ef df a c |
  \ottava 0 bf8 af g bf af f |
  d8 f ef df a c|
  
  \barNumberCheck 161
  bf8 af g' bf af f |
  d8 f ef df a c |
  bf8 af) g'( bf af f |
  d8 f ef df a c) |
  bf8( g af bf c df |
  ef8 f g af bf c |
  \ottava 1 df8 ef f g af a |
  bf8 b c df d f |
  
  \barNumberCheck 169
  ef8 c af ef c af |
  \ottava 0 ef8 c af ef \staffDown af,  ef |
  af,,2.->)_\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \global
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
  s2. * 8 |
  
  \barNumberCheck 73
  \voiceTwo
  \key c \major
  \grace { s8 } <g c e>4 q q |
  q4 q q |
  q4 q q |
  q4 q q |
  <g d' f>4 q q |
  \oneVoice
  r4 <g c g'>( q |
  <g b f' g>4 <g c f g> <g d' f g>) |
  r4 <e' g>( q |
  
  \barNumberCheck 81
  <d g>4 q <e g>~) |
  \voiceTwo
  <e g>4 q e~ |
  e4 <c e> << { c } \new Voice { \voiceThree e8 fs } >> |
  s2. * 2 |
  \oneVoice
  r4 <a, d a'>( q |
  <a cs g' a>4 <a d g a> <a e' g a>) |
  \voiceTwo
  r4 <f' a> q |
  
  \barNumberCheck 89
  r4 <g a> f~ |
  f4 <d f> q |
  r4 <b f'> q |
}

rightHand = <<
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \global
  \clef bass 
  af,4 <ef' af c> q |
  ef,4 <ef' af c> q |
  af,4 <ef' af c> q |
  ef,4 <ef' af c> q |
  bf4 <\single \omit Accidental ef g df'> <ef g \single \omit Accidental df'> |
  ef,4 <ef' g df'> q |
  bf4 <\single \omit Accidental ef g df'> <ef g \single \omit Accidental df'> |
  e,4 <c' g' c> q |
  
  \barNumberCheck 9
  f,4 <c' af'> q |
  c,4 <c' af'> q |
  f,4 <c' af'> q |
  af4 < f' c' ef> q |
  bf,,4 \clef treble <g'' ef'>( <bf g'> |
  <ef bf'>4 <bf g'> <g ef'>) |
  \clef bass
  bf,4 <f' bf d> q |
  % ef half note, source B
  << { ef2 } \\ { ef4 <bf' ef> <ef, bf' df> } >> |
  
  \barNumberCheck 17
  af,4 <ef' af c> q |
  ef,4 <ef' af c> q |
  af,4 <ef' af c> q |
  ef,4 <ef' af c> q |
  bf4 <\single \omit Accidental ef g df'> <ef g \single \omit Accidental df'> |
  ef,4 <ef' g df'> q |
  bf4 <\single \omit Accidental ef g df'> <ef g \single \omit Accidental df'> |
  e,4 <c' g' c> q |
  
  \barNumberCheck 25
  f,4 <c' af'> q |
  c,4 <c' af'> q |
  f,4 <c' af'> q |
  af4 < f' c' ef> q |
  bf,,4 \clef treble <g'' ef'> <bf g'> |
  <ef bf'>4 <bf g'> <g ef'> |
  \clef bass
  bf,4 <f' bf d> q |
  ef2*1/2( <bf' ef g>4) r |
  
  \barNumberCheck 33
  bf,4 <bf' df> q |
  f, <f' bf df> q |
  bf,4 <f' bf df> q |
  f,4 <f' bf df> q |
  c4 <f a ef'> q |
  f,4 <f' a ef'> q |
  c4 <f a ef'> q |
  f,4 <f' a ef'> q |
  
  \barNumberCheck 41
  gf,4 <df' bf'> q |
  df,4 <df' bf'> q |
  gf,4 <df' bf'> q |
  df,4 <df' bf'> q |
  af4 <df f cf'> q |
  df,4 <df' f cf'> q |
  af4 <df f cf'> q |
  df,4 <df' f cf'> q |
  
  \barNumberCheck 49
  d4 <af' bf> bf, |
  g'4 <bf ef> r |
  bf,,4 <af'' bf d> q |
  bf,4 <g' bf ef> q |
  bf,4 <f' bf d> <af bf d> |
  bf,4 <g' bf ef> r |
  bf,,4 \clef treble <bf'' d af'> q |
  \clef bass bf,4 \clef treble <bf' ef g> q |
  
  \barNumberCheck 57
  \clef bass bf,4 <gf' ef'>( <a gf'> |
  % tie in third beat, source B
  <gf ef'> <a gf'> <gf ef'~> |
  <a ef' gf>4 <a ef' f> <a ef' gf> |
  <a ef' f> <a ef' gf> <a ef' f>) |
  % ties on f in this a subsequent measures, source B
  r4 \clef treble <af f'~>( <cf f af> |
  <af f'~> <cf f af> <af f'~> |
  <b f' af>4 <b f' g> <b f' af> |
  <b f' g> <b f' af>) \clef bass b, |
  
  \barNumberCheck 65
  c4 <g' ef'> r |
  f,4 <af' c d> r |
  g,4 <d' g c> q |
  g, <d' g b> f, |
  ef4 <c' g' c> r |
  f,4 <d' af' c> q |
  g,4 <d' g c> q |
  % d natural, not flat, source B
  g,4 <d' g b> q |
  
  \barNumberCheck 73
  \key c \major
  \slashedGrace { c,8 } c'4.( g8 c4 |
  g4 c2~ |
  c4. g8 c4~ |
  c4. g8 c4~) |
  c8 b_( a\< b a g\! |
  e'2.~ |
  e8 d c b a g) |
  g'4( c2~\> |
  
  \barNumberCheck 81
  c8 b a b c a |
  g8 a g e c a' |
  g8 a g e c d)\! |
  g,4 d'2~ |
  d4. cs8(\< bf a |
  f'2.~)\! |
  f8 e d cs bf a |
  a'4 d2~( |
  
  \barNumberCheck 89
  d8 cs b cs d bf |
  a8 bf a f d af' |
  g a g d e g, |
  c4) r r |
  c'4.( g8 c4 |
  g4 c2) |
  f,4( f'2) |
  ef4( df8 c c4) |
  
  \barNumberCheck 97
  c4.( g8 c4 |
  g4 c2) | 
  f,4 af8( c ef df |
  c g af bf c d) |
  ef4.( bf8 ef4 |
  bf4 ef2 |
  af,4) af'2( |
  gf4 ff8 ef ef4) |
  
  \barNumberCheck 105
  ef4.(\< bf8 ef4 |
  bf4 ef2)\! |
  a,4(\> c8 bf f g |
  bf8 af\! e f af g) |
  \key af \major
  af,4 <ef' af c> q |
  ef,4 <ef' af c> q |
  af,4 <ef' af c> q |
  ef,4 <ef' af c> q |
  
  \barNumberCheck 113
  bf4 <\single \omit Accidental ef g df'> <ef g \single \omit Accidental df'> |
  ef,4 <ef' g df'> q |
  bf4 <\single \omit Accidental ef g df'> <ef g \single \omit Accidental df'> |
  e,4 <c' g' c> q |
  f,4 <c' af'> q |
  c,4 <c' af'> q |
  f,4 <c' af'> q |
  af4 < f' c' ef> q |
  
  \barNumberCheck 121
  bf,,4 \clef treble <g'' ef'>( <bf g'> |
  <ef bf'>4 <bf g'> <g ef'>) |
  \clef bass
  bf,4 <f' bf d> q |
  % ef half note, source B
  << { ef2 } \\ { ef4 <bf' ef> <ef, bf' df> } >> |
  af,4 <ef' af c> q |
  ef,4 <ef' af c> q |
  af,4 <ef' af c> q |
  ef,4 <ef' af c> q |
  
  \barNumberCheck 129
  bf4 <\single \omit Accidental ef g df'> <ef g \single \omit Accidental df'> |
  ef,4 <ef' g df'> q |
  bf4 <\single \omit Accidental ef g df'> <ef g \single \omit Accidental df'> |
  e,4 <c' g'> q |
  \key e \major
  e,4 <b' gs'> q |
  ds,4 <b' a'> q |
  e,4 <b' gs'> q |
  es,4 <cs' b'> q |
  
  \barNumberCheck 137
  fs,4 <cs' as'> q |
  es,4 <cs' b'> q |
  fs,4 <cs' as'> q |
  \key af \major
  g4 <ef' df'> r |
  ef,4 <df'' ef g> q |
  % arpeggio, source B
  af,4 <c' af'> <c, bf' e>\arpeggio |
  df4 <af' bf f'> <ef g df'> |
  af,4 <ef' c'> a, |
  
  \barNumberCheck 145
  bf4 <ef g df'> ef, |
  af4 <ef' af c> <c ff af c> |
  df2*1/2 <ff bff df>4 r |
  r4 r <ef bf' df> |
  af,4 <ef' c'> q |
  af,4 <ef' g df'> <ef bf' df> |
  af,4 <ef' c'> q |
  af, <ef' df'> q |
  
  \barNumberCheck 153
  % tie on af here and in measure 155, source B
  af,4( <ef' c'> <af~ c ef> |
  <af c af'>4 <af c ef> <ef af c>) |
  af,4( <ef' c'> <af~ c ef> |
  <af c af'>4 <af c ef> <ef af c>~) |
  q4 <ef af c ef> q~ |
  q4 <ef g df' ef> q |
  r4 <ef af c ef> q |
  % g in chord, source B
  r4 <ef g df' ef> q~ |
  
  \barNumberCheck 161
  % af in chord, source B
  q4 <ef af c ef> q~ |
  % g in chord, source B
  q4 <ef g df' ef> q~ |
  % af in chord, source B
  q4 <ef af c ef> q~ |
  % df in beat two chord, g in beat three chord, source B
  q4 <ef g df' ef> q |
  af,4 r r |
  \clef treble <c'' af'>4 r r |
  R2. * 3 |
  \clef bass r2 s4 |
  s2. | 
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \tag layout { s2.\< } \tag midi { s2.\p\< } |
  s2. |
  s4. s8\! s4 |
  s2. |
  s2\> s4\! |
  s2. |
  s2\> s4\! |
  s2\< s4\! |
  
  \barNumberCheck 9
  s2. * 4 |
  s2.\> |
  s2. |
  s4. s8\! s4 |
  s2. |
  
  \barNumberCheck 17
  s2.\< |
  s2. |
  s4. s8\! s4 |
  s2. |
  s2\> s4\! |
  s2. |
  s2\> s4\! |
  s2\< s4\! |
  
  \barNumberCheck 25
  s2. * 4 |
  s2.\> |
  s2. |
  s4. s8\! s4 |
  s2. |
  
  \barNumberCheck 33
  s2. |
  s2.\< |
  s2 s4\! |
  s4 s2\> |
  s2. |
  s2 s4\! |
  s2 s4\> |
  \override DynamicTextSpanner.style = #'none
  s4 s2\cresc |
  
  \barNumberCheck 41
  s2\f s4\< |
  s2. * 2 |
  s16 s\! s8 s2 |
  s4 s4.\> s8\! |
  s2. * 3 |
  
  \barNumberCheck 49
  s4 s2\p |
  s2\< s8 s\! |
  s2.\> |
  s2. |
  s2 s8 s\! |
  s2\< s8 s\! |
  s2.\> |
  s2 s8 s\! |
  
  \barNumberCheck 57
  s2.\cresc |
  s2. * 4 |
  s2.\< |
  s2. |
  s2 s8 s\! |
  
  \barNumberCheck 65
  s2.\f\> |
  s8 s\! s2 |
  s2. * 2 |
  s2\> s4\! |
  s2. * 2 |
  s4 s4.\> s8\! |
  
  \barNumberCheck 73
  s2.-\tweak X-offset -2 ^\pSotto |
  s4 s2\> |
  s8 s\! s2 |
  s2. * 5 |
  
  \barNumberCheck 81
  s2. * 2 |
  s2 s4\< |
  s8 s\! s2 |
  s2. * 4 |
  
  \barNumberCheck 89
  s2. * 5
  s2\> s4\! |
  s2. * 2 |
  
  \barNumberCheck 97
  s2. * 5 |
  s2\> s4\! |
  s2. * 2 |
  
  \barNumberCheck 105
  s2. |
  s4 s\> s\! |
  s2. * 2 |
  % key of af major
  s2.^\sostenuto |
  s2\< s4\! |
  s2. * 2 |
  
  \barNumberCheck 113
  s2\< s4\! |
  s2. |
  s2\> s4\! |
  s2\< s4\! |
  s2. |
  s2.\< |
  s2 s4\! |
  s2. |
  
  \barNumberCheck 121
  s2.\> |
  s2. |
  s4. s4.\! |
  s4 s4.\> s8\! |
  s2. |
  s2.\< |
  s2 s4\! |
  s2. |
  
  \barNumberCheck 129
  s2\> s4\! |
  s2. * 3 |
  % key of e major
  s2. |
  s2.\< |
  s4 s2\! |
  s2\> s8 s\! |
  
  \barNumberCheck 137
  s2. * 3 |
  % key of af major
  s2. |
  s2.\f |
  s2.\> |
  s2. |
  s2 s8 s\! |
  
  \barNumberCheck 145
  s8\< s\! s2 |
  s2.\> |
  s2. |
  s2 s8 s\! |
  s2\p\< s8 s\! |
  s2\> s8 s\! |
  s2\< s8 s\! |
  s2\> s8 s\! |
   
  \barNumberCheck 153 
  s2. * 8 |
  
  \barNumberCheck 161
  s4 s2\decr |
  s2. * 3 |
  s2.\< |
  s2. * 2 |
  s2 s8 s\! |
}

pedal = {
  \repeat unfold 6 { s2\sd s8 s\su | }
  \override SustainPedal.Y-offset = 2
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 \override SustainPedal.Y-offset = 1 s\su |
  
  \barNumberCheck 9
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 \override SustainPedal.Y-offset = 1 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  \override SustainPedal.Y-offset = -1
  s2\sd s8 s |
  \revert SustainPedal.Y-offset
  s2 s8 s\su |
  \override SustainPedal.Y-offset = 1
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 17
  \repeat unfold 7 { s2\sd s8 s\su | }
  \once \revert SustainPedal.Y-offset s2\sd s8 s\su |
  
  \barNumberCheck 25
  s2\sd s8 s\su |
  \once \revert SustainPedal.Y-offset s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 s |
  s2 s8 s\su |
  \override SustainPedal.Y-offset = 2
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 33
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  \repeat unfold 7 { s2\sd s8 s\su | }
  
  \barNumberCheck 41
  \override SustainPedal.Y-offset = 1
  s2\sd s8 s\su |
  \once \revert SustainPedal.Y-offset s2\sd s8 s\su |
  s2\sd s8 s\su |
  \once \revert SustainPedal.Y-offset s2\sd s8 s\su |
  s2\sd s8 s\su |
  \once \revert SustainPedal.Y-offset s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 \override SustainPedal.Y-offset = 2 s\su |  
  
  \barNumberCheck 49
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  \once \revert SustainPedal.Y-offset s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 \override SustainPedal.Y-offset = 1 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 57
  s2.\sd |
  s2 s8 s\su |
  \revert SustainPedal.Y-offset
  s2. * 6 |
  
  \barNumberCheck 65
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  \override SustainPedal.Y-offset = 1
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 73
  % key of c major
  \revert SustainPedal.Y-offset
  \grace { s8\sd } s2 s8 s\su |
  s2. * 4 |
  s2\sd s8 s\su |
  s2. |
  s4 s2\sd |
  
  \barNumberCheck 81
  s8 s\su s2 |
  s2. * 7 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 4 |
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 113
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 \override SustainPedal.Y-offset = 1 s\su |
  s2\sd s8 s\su |
  \once \revert SustainPedal.Y-offset s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 121
  \revert SustainPedal.Y-offset
  s2\sd s8 s |
  s2 s8 s\su |
  \repeat unfold 6 { s2\sd s8 s\su | }
  
  \barNumberCheck 129
  s2\sd s8 s\su |
  \override SustainPedal.Y-offset = 1
  s2\sd s8 \override SustainPedal.Y-offset = 2 s\su |
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset 
  s2\sd s8 \override SustainPedal.Y-offset = 1 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 \override SustainPedal.Y-offset = 1 s\su |
  
  \barNumberCheck 137
  s2\sd s8 s\su |
  \once \revert SustainPedal.Y-offset s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 145
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2. |
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 153
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2. * 2 |
  s4\su s\sd s\su |
  s4 s\sd s\su |
  s4 s2\sd |
  
  \barNumberCheck 161
  s4\su s2\sd |
  s4\su s2\sd |
  s4\su s2\sd |
  s4\su s\sd s\su |
  s2.\sd |
  s2 s4\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Moderato" 2. = 52
  s2. * 8 |

  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  
}

forceBreaks = {
  
}

\layout {
  \context {
    \Staff
    \consists Merge_rests_engraver
  }
}

waltzThreeNotes =
\score {
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 3"
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

waltzThreeMidi =
\score {
  \header {
    midiOutputFile = "waltz-op64-no3"
  }
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
