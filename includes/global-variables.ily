%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

% Definitions

staffDown = \change Staff = "lower"
staffUp   = \change Staff = "upper"

sd = \sustainOn
su = \sustainOff

trillUnderSlur = {
  \once {
    \override Script.avoid-slur = #'inside
    \override Script.script-priority = #-100
  }
}

strictSpacingOn = {
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \newSpacingSection
}

strictSpacingOff = {
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \newSpacingSection
}

barLinesOff = {
  \omit Staff.BarLine 
  \omit Score.SpanBar
}

barLinesOn = {
  \undo \omit Staff.BarLine
  \undo \omit Score.SpanBar
}

% Markup

leggiero = \markup \large \italic "leggiero"
sostenuto = \markup \large \italic "sostenuto"
pocoRitenuto = \markup \large \italic \whiteout \pad-markup #0.5 "poco ritenuto"
pSotto = \markup { \dynamic p \large \italic "sotto voce" }
pocoAPocoAccel = \markup \large \italic "poco a poco accelerando al fine"
trillNatural = \markup \tiny \natural
