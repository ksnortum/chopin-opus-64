%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/waltz-op64-no1-parts.ily"
\include "includes/waltz-op64-no2-parts.ily"
\include "includes/waltz-op64-no3-parts.ily"

% Title page

\titlePage

% Table of contents

\paper {
  tocTitleMarkup = \markup \huge \column {
    \fill-line { \bold "Table of Contents" }
    \hspace #1
  }
  
  tocItemMarkup = \tocItemWithDotsMarkup
}

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDFs

\tocItem \markup \concat { 
  "Waltz no. 1 in D" \raise #0.75 \teeny \flat " major" 
}
\waltzOneNotes
\pageBreak

\tocItem \markup \concat { 
  "Waltz no. 2 in C" \raise #0.75 \teeny \sharp " minor" 
}
\waltzTwoNotes
\pageBreak

\tocItem \markup \concat { 
  "Waltz no. 3 in A" \raise #0.75 \teeny \flat " major"
}
\waltzThreeNotes

% Midi

\waltzOneMidi
\waltzTwoMidi
\waltzThreeMidi
