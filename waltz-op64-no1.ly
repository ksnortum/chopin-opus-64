\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/waltz-op64-no1-parts.ily"

\header {
  title = \markup { \concat {
    "Waltz in D" \raise #1 \large \flat " major"
  } }
  opus = "Opus 64"
  composer = "Frédéric Chopin"
}

\waltzOneNotes
\waltzOneMidi
