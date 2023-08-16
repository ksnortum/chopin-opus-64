%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

#(set-global-staff-size 18)

\header {
  title = "Three Waltzes"
  composer = "Frédéric Chopin"
  opus = ##f
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/0/0c/IMSLP400812-PMLP02373-BnF_btv1b525004303.pdf" % source A, no. 1 
  source = "https://vmirror.imslp.org/files/imglnks/usimg/2/2e/IMSLP400822-PMLP02373-BnF_btv1b52500553n.pdf" % source A, no. 2
  source = "https://vmirror.imslp.org/files/imglnks/usimg/0/0c/IMSLP400823-PMLP02373-BnF_btv1b52500558w.pdf" % source A, no. 3
  source = "https://vmirror.imslp.org/files/imglnks/usimg/e/ef/IMSLP82854-PMLP02373-FChopin_Waltzes_Op64.pdf" % source B
  copyright = \markup { 
    \center-column {
      "Copyright © 2023 Knute Snortum. This work is licensed under the" 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "Creative Commons Attribution-ShareAlike 4.0 International License."
    }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5
  
  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \override Slur.details.free-head-distance = 1
  }
  \context {
    \Voice
    \override Tie.minimum-length = 2
  }
}

\midi {
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  } 
  \context {
    \Score
    midiMinimumVolume = #0.20
    midiMaximumVolume = #0.99
  }  
}
