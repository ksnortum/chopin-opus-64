%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "midi-title.ily"

moveBarLineAndClef = {
  \once \override Score.BarLine.extra-offset = #'(-1 . 0) 
  \once \override Score.Clef.extra-offset = #'(-1 . 0) 
}

global = {
  \time 3/4
  \key df \major
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \omit TupletBracket
  af'4( g8 af c bf |
  g8 af bf af c bf |
  g8 af c bf g af |
  c8 bf g af c bf |
  g8 af c bf g af |
  c8 bf g af c bf |
  g8 af c bf g af |
  bf8 c df ef f gf |
  
  \barNumberCheck 9
  bf4. af8 gf f |
  f8 ef ef\prall d ef4) |
  bf'4.( af8 gf f |
  f8 ef\prall d ef f bf, |
  g8 af c bf g af |
  c8 bf g af c bf |
  g8 af c bf g af |
  bf8 c df ef f gf |
  
  \barNumberCheck 17
  bf4. af8 gf f |
  f8 ef ef\prall d ef4) |
  bf'4.( af8 gf f |
  ef8 f ef\prall d ef e) |
  \tuplet 3/2 { f8( gf f } e f af gf |
  f8 gf f e f bf |
  \tuplet 3/2 { af8 bf af } g af c bf |
  af8 bf af g af df |
  
  \barNumberCheck 25
  c8 bf af gf f ef |
  df8 c bf af gf f |
  ef8 df c ef bf' af |
  g af bf c df ef |
  \tuplet 3/2 { f8 gf f } e f af gf |
  f8 gf f e f bf |
  \tuplet 3/2 { af8 bf af } g af c bf |
  af8 bf af g af f' |
  
  \barNumberCheck 33
  ef8 df c bf af gf |
  f8 ef df c bf af |
  a8 c bf f gf c, |
  df4) r f'(~ |
  \tuplet 3/2 { f8 gf f } e f af gf |
  f8 gf f e f bf |
  \tuplet 3/2 { af8 bf af } g af c bf |
  af8 bf af g af df |
  
  \barNumberCheck 41
  c8 bf af gf f ef |
  df8 c bf af gf f |
  ef8 df c ef bf' af |
  g af bf c df ef |
  \tuplet 3/2 { f8 gf f } e f af gf |
  f8 gf f e f bf |
  \tuplet 3/2 { af8 bf af } g af c bf |
  af8 bf af g af f' |
  
  \barNumberCheck 49
  ef8 df c bf af gf |
  f8 ef df c bf af |
  a8 c bf f gf c, |
  df4) r \bar "||" \break af'(~ |
  af2 ef4 |
  af2 e4 |
  af2 f4 |
  % tie from source B
  f'2) f4(~ |
  
  \barNumberCheck 57
  f2 bf,4 |
  f'2 c4  |
  ef2 df4 |
  \tuplet 4/3 { c4 ef df bf } |
  af2)( ef4 |
  af2 e4 |
  af2 f4 |
  f'2.) |
  
  \barNumberCheck 65
  \tag layout { c4(\trill } \tag midi { c(\prall } b c |
  af'4 bf, g' |
  a,4 gf' af, |
  f'4 f, bf)
  af2( ef4 |
  \acciaccatura { af'8 } af,2 e4 |
  \acciaccatura { af'8 } af,2 f4 |
  \acciaccatura { af'8 } f2) f4( |
  
  \barNumberCheck 73
  \acciaccatura { af8 } f2 bf,4 |
  \acciaccatura { af'8 } f2 c4 |
  \acciaccatura { af'8 } ef4 df c |
  \acciaccatura { af'8 } ef4 df4. bf8) | 
  \acciaccatura { af'8 } af,2( ef4 |
  \acciaccatura { af'8 } af,2 e4 |
  \acciaccatura { af'8 } af,2 f4 |
  f'2.) |
  
  \barNumberCheck 81
  f2( bf,4 |
  ef2 bff4 |
  ef4 af, d |
  f4 ef af) | \break
  \tag layout { af,2.(~\startTrillSpan |
  af2.~ |
  af2.~ |
  af2. |
  
  \barNumberCheck 89
  g8\stopTrillSpan } 
  \tag midi { \repeat unfold 24 { bf16 af } g8 } af c bf g af |
  c8 bf g af c bf |
  g8 af c bf g af |
  c8 bf g af c bf |
  g8 af c bf g af |
  c8 bf g af c bf |
  g8 af c bf g af |
  bf8 c df ef f gf |
  
  \barNumberCheck 97
  bf4. af8 gf f |
  f8 ef ef\prall d ef4) |
  bf'4.( af8 gf f |
  f8 ef\prall d ef f bf, |
  g8 af c bf g af |
  c8 bf g af c bf |
  g8 af c bf g af |
  bf8 c df ef f gf |
  
  \barNumberCheck 105
  bf4. af8 gf f |
  f8 ef ef\prall d ef4) |
  bf'4.( af8 gf f |
  % Changed trill to prall for consistency
  ef8 f ef\prall d ef e) |
  \tuplet 3/2 { f8( gf f } e f af gf |
  f8 gf f e f bf |
  \tuplet 3/2 { af8 bf af } g af c bf |
  af8 bf af g af df |
  
  \barNumberCheck 113
  c8 bf af gf f ef |
  df8 c bf af gf f |
  ef8 df c ef bf' af |
  g af bf c df ef |
  \tuplet 3/2 { f8 gf f } e f af gf |
  f8 gf f e f bf |
  \tuplet 3/2 { af8 bf af } g af c bf |
  af8 bf af g af f' |
  
  \barNumberCheck 121
  ef8 df c bf af gf |
  f8 ef df c bf af |
  a8 c bf f gf c, |
  df4) r f'->(~ |
  \tuplet 3/2 { f8 gf f } e f af gf |
  f8 gf f e f bf |
  \tuplet 3/2 { af8 bf af } g af c bf |
  af8 bf af g af df |
  
  \barNumberCheck 129
  c8 bf af gf f ef |
  df8 c bf af gf f |
  ef8 df c ef bf' af |
  g af bf c df ef |
  \tuplet 3/2 { f8 gf f } e f af gf |
  f8 gf f e f bf |
  \tuplet 3/2 { af8 bf af } g af c bf |
  af8 bf af g af) \ottava 1 f''(\noBeam |
  
  \barNumberCheck 137
  \strictSpacingOn
  \scaleDurations 3/4 { \magnifyMusic 0.63 {
    ef8[ df c bf af gf f ef \barLinesOff \ottava 0 df c bf af gf f ef df c bf
      a c bf f gf c,]
  } }
  \strictSpacingOff
  \barLinesOn
  df2) r4 |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  R2. * 4 |
  df4 <af' df f> q |
  f4 <af df f> q |
  df,4 <af' df f> q |
  f4 <af df f> q |
  
  \barNumberCheck 9
  af,4 <af' c gf'> q |
  ef4 <af c gf'> q |
  af,4 <c' gf'> q |
  af4 <c gf'> q |
  df,4 <af' df f> q |
  f4 <af df f> q |
  df,4 <af' df f> q |
  f4 <af df f> q |
  
  \barNumberCheck 17
  af,4 <af' c gf'> q |
  ef4 <af c gf'> q |
  af,4 <af' c gf'> q |
  af4 <c gf'> af, |
  a4 <f' c' ef!> q |
  bf,4 <f' df'> q |
  c4 <af' ef' gf!> q |
  df,4 <af' f'> r |
  
  \barNumberCheck 25
  gf4 <bf ef> r |
  af,4 <f' af df> r 
  af,4 <gf' af> <gf af c> |
  df4 <af' df f> r |
  \clef treble
  <<
    { b'4\rest <ef,! f> q | b'\rest <df, f> q | b'\rest <gf! af> q | s2. | }
    \\
    { a,2.( | bf | c | \oneVoice df4) <f af> r | }
  >>
  
  \barNumberCheck 33
  gf,4 <df' ef bf'> r |
  \clef bass af,4 <f' af df> r |
  af, <gf' af!> q |
  df4 <af' f'> r |
  a,4 <f' c' ef!> q |
  bf,4 <f' df'> q |
  c4 <af' ef' gf!> q |
  df,4 <af' f'> r |
  
  \barNumberCheck 41
  gf4 <bf ef> r |
  af,4 <f' af df> r 
  af,4 <gf' af> <gf af c> |
  df4 <af' df f> r |
  \clef treble
  <<
    { b'4\rest <ef,! f> q | b'\rest <df, f> q | b'\rest <gf! af> q | s2. | }
    \\
    { a,2.( | bf | c | \oneVoice df4) <f af> r | }
  >>
  
  \barNumberCheck 49
  gf,4 <df' ef bf'> r |
  \clef bass af,4 <f' af df> r |
  af, <gf' af!> q |
  df4 <af' f'> r |
  af,4 <gf' af c> q |
  q4 q q |
  df4 <af' df> q |
  af,4 <af' df f> q |
  
  \barNumberCheck 57
  ef4 <af gf'> q |
  af,4 <af' ef' gf> q |
  df,4 <af' df f> q |
  f4 <af df f> q |
  c,4 <gf' af> q |
  af,4 <gf' af> <gf af c> |
  df4 <af' df> q |
  b,4 <af' df f> q |
  
  \barNumberCheck 65
  c,4 <af' c f> q |
  c,,4 <g'' c e> r |
  f,4 r <f' c'> |
  R2. |
  c4 <gf' af> q |
  af,4 <gf' af c> q |
  df4 <af' df> q |
  af,4 <af' df f> q |
  
  \barNumberCheck 73
  ef4 <af c gf'> q |
  af,4 <af' ef' gf> q |
  df,4 <af' df f> q |
  f4 <af df f> q |
  << { r4 <gf af> q } \\ { c,2. } >> |
  af4 <gf' af c> q |
  cf,4 <f af ef'> q |
  bf,4 <f' af d> q |
  
  \barNumberCheck 81
  ef4 <df' g> q |
  r4 <df gf> q |
  af2*1/2( <c gf'>4) r |
  R2. * 5 |
  
  \barNumberCheck 89
  R2. * 4 |
  df,,4 <af'' df f> q |
  f4 <af df f> q |
  df,4 <af' df f> q |
  f4 <af df f> q |
  
  \barNumberCheck 97
  af,4 <af' c gf'> q |
  ef4 <af c gf'> q |
  af,4 <c' gf'> q |
  af4 <c gf'> q |
  df,4 <af' df f> q |
  f4 <af df f> q |
  df,4 <af' df f> q |
  f4 <af df f> q |
  
  \barNumberCheck 105
  af,4 <af' c gf'> q |
  ef4 <af c gf'> q |
  af,4 <af' c gf'> q |
  af4 <c gf'> af, |
  a4 <f' c' ef!> q |
  bf,4 <f' df'> q |
  c4 <af' ef' gf!> q |
  df,4 <af' f'> r |
  
  \barNumberCheck 113
  gf4 <bf ef> r |
  af,4 <f' af df> r 
  af,4 <gf' af> <gf af c> |
  df4 <af' df f> r |
  \clef treble
  <<
    { b'4\rest <ef,! f> q | b'\rest <df, f> q | b'\rest <gf! af> q | s2. | }
    \\
    { a,2.( | bf | c | \oneVoice df4) <f af> r | }
  >>
  
  \barNumberCheck 121
  gf,4 <df' ef bf'> r |
  \clef bass af,4 <f' af df> r |
  af, <gf' af!> q |
  df4 <af' f'> r |
  a,4 <f' c' ef!> q |
  bf,4 <f' df'> q |
  c4 <af' ef' gf!> q |
  df,4 <af' f'> r |
  
  \barNumberCheck 129
  gf4 <bf ef> r |
  af,4 <f' af df> r 
  af,4 <gf' af> <gf af c> |
  df4 <af' df f> r |
  \clef treble
  <<
    { b'4\rest <ef,! f> q | b'\rest <df, f> q | b'\rest <gf! af> q | s2. | }
    \\
    { a,2.( | bf | c | \oneVoice df4) <f af> r | }
  >>
  
  \barNumberCheck 137
  \clef bass gf,,4 \clef treble <df'' ef bf'> r |
  R2. |
  \moveBarLineAndClef
  \clef bass af,4 <gf' af> q |
  df,4 <f' af f'> r |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \tag layout { s2.^\leggiero } \tag midi { s2.\p }
  s2. * 5 |
  s2.\< |
  s2 s8 s\! |
  
  \barNumberCheck 9
  s2.\> |
  s2 s4\! |
  s2.\> |
  s2 s8 s\! |
  s2. * 2 |
  s2.\< |
  s2 s8 s\! |
  
  \barNumberCheck 17
  s2.\> |
  s2 s8 s\! |
  s2. |
  s2\< s8 s\! |
  s2. * 4 |
  
  \barNumberCheck 25
  s2.\> |
  s2. |
  s4 s2\! |
  s2\< s8 s\! |
  s2. * 4 |
  
  \barNumberCheck 33
  s2.\> |
  s2. |
  s2 s8 s\! |
  s2. |
  s2. * 4 |
  
  \barNumberCheck 41
  s2.\> |
  s2. |
  s4 s2\! |
  s2\< s8 s\! |
  s2. * 4 |
  
  \barNumberCheck 49
  s2.\> |
  s2. |
  s2 s8 s\! |
  s2. |
  s2.^\sostenuto |
  s2. |
  s2.\< |
  s2 s4\! |
  
  \barNumberCheck 57
  s2. * 4 |
  s2 s4\< |
  s2. * 2 |
  s8 s\! s4 s |
  
  \barNumberCheck 65
  s2. * 2 |
  s2.\> |
  s2 s4\! |
  s2. * 4 |
  
  \barNumberCheck 73
  s2. * 6 |
  s2.\< |
  s8 s\! s2 |
  
  \barNumberCheck 81
  s2. * 2 |
  s2.\<
  s2 s4\! |
  s2. * 2 |
  s2.\< |
  s2. |
  
  \barNumberCheck 89
  s2. * 2 |
  s2 s8 s\! |
  s2. |
  s2.\f |
  s2. * 3 |
  
  \barNumberCheck 97
  s2.\> |
  s2 s4\! |
  s2.\> |
  s2 s8 s\! |
  s2.\p |
  s2. |
  s2.\< |
  s2 s8 s\! |
  
  \barNumberCheck 105
  s2.\> |
  s2 s4\! |
  s2. |
  s2\< s8 s\! |
  s4 s2\< |
  s2. * 2 |
  s2 s8 s\! |
  
  \barNumberCheck 113
  s2.\> |
  s2. |
  s4 s2\! |
  s2\< s8 s\! |
  s2. * 4 |
  
  \barNumberCheck 121
  s2.\> |
  s2. |
  s2 s8 s\! |
  s2. |
  s2.\pp\< |
  s2. * 2 |
  s2 s8 s\! |
  
  \barNumberCheck 129
  s2.\> |
  s2. |
  s4 s2\! |
  s2\< s8 s\! |
}

pedal = {
  s2. * 4 |
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 9
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 17
  \repeat unfold 7 { s2\sd s8 s\su | }
  s2\sd s4\su |
  
  \barNumberCheck 25
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2. * 4 |
  
  \barNumberCheck 33
  s2\sd \override SustainPedal.Y-offset = 1 s4\su |
  s2\sd s4\su |
  s2. |
  s2\sd s4\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  \revert SustainPedal.Y-offset
  s2\sd s4\su |
  
  \barNumberCheck 41
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s8. s16\su |
  s2\sd s4\su |
  s2. * 4 |
  
  \barNumberCheck 49
  s2\sd \override SustainPedal.Y-offset = 1 s4\su |
  s2\sd s4\su |
  \revert SustainPedal.Y-offset
  s2. * 2 |
  s2.\sd |
  s2 s8 s\su
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 57
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2. |
  \override SustainPedal.Y-offset = 1
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 65
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 \override SustainPedal.Y-offset = 1 s\su |
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2. |
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 73
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 81
  s2\sd s8. s16\su |
  s2. * 7 |
  
  \barNumberCheck 89
  s2. * 4 |
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 97
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 105
  \repeat unfold 7 { s2\sd s8 s\su | }
  s2\sd s4\su |
  
  \barNumberCheck 113
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s8. s16\su |
  s2\sd s4\su |
  s2. * 4 |
  
  \barNumberCheck 121
  s2\sd \override SustainPedal.Y-offset = 1 s4\su |
  s2\sd s4\su |
  s2. |
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  \revert SustainPedal.Y-offset
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 129
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2. * 4 |
  
  \barNumberCheck 137
  s2\sd s4\su |
  s2. |
  s2\sd s4-\tweak X-offset 1 \su |
  s2\sd s4\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Molto vivace" 2. = 80
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
  s2. * 3 |
  s2 \tempo 2. = 72 s4 |
  s2. * 4 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 2 |
  \tempo 2. = 66 s2. |
  \tempo 2. = 60 s2. |
  \tempo 2. = 72 s2. |
  s2. * 3 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 2 |
  \tempo 2. = 66 s2. |
  \tempo 2. = 60 s2. |
  \tempo 2. = 80
  s2. * 4 |
  
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
  s2. * 7 |
  s2 s8 \tempo 2. = 40 s |
  
  \barNumberCheck 137
  \tempo 2. = 80
  s2. * 2 |
  \tempo 2. = 70 s2. |
  \tempo 2. = 60 s2. |
}

forceBreaks = {
  s2. * 32 \pageBreak
  s2. * 36 \pageBreak
  s2. * 39 \pageBreak
}

waltzOneNotes =
\score {
  \header {
    opus = "Opus 64"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 1"
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

waltzOneMidi =
\score {
  \header {
    midiOutputFile = "waltz-op64-no1"
  }
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
