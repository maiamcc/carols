﻿\version "2.14.2"
\include "header.ly"
\header {
  title = "The Seven Joys of Mary"
  poet = "Traditional"
  composer = "Old English" % is this the Stainer arr??
  enteredby = "Benjamin Bloomfield (Collection of Christmas Carols)"
  maintainer = "Maia McCormick"
  maintainerEmail = "maia.mcc@gmail.com"
  lastupdated = "2017/Dec/07"
}

global = {
  \key g \major
  \time 6/8
  \autoBeamOff
}

sopMusic = \relative c' {
  \partial 8 d8^\mf |
  g4 g8 g4 a8 |
  b4 a8 g4 g8 |
  a4 a8 fis4 fis8 |
  g4.~ g4 d8 |

  g4 g8 g4 a8 |
  b4 a8 g4 | \bar"" \break \small g8 |
  \normalsize \slurDotted
  a8( a) a8 fis8[ e] fis |
  g4.~ g4 \bar "||"

  g8^\f |
  a8( a) a8 a4 a8 |
  \slurSolid
  a4 b8 c[ b] a |
  b4 b8 b4 a8 |
  b4( c8 d4\fermata) d16[^\ff c] |

  b4 a8 g4 c8 |
  b4 a8 g4 g8 |
  a4 a8 fis8[ e] fis |
  \partial 8*5 g4. b4\rest \bar "|."
}
sopWords = \lyricmode {

}

altoMusic = \relative c' {
  d8 |
  d4 d8 e4 d8 |
  d4 fis8 g4 g8 |
  e4 e8 d4 d8 |
  d4.~ d4 d8 |

  d4 d8 e4 d8 |
  d4 fis8 g4 \small g8 |
  \normalsize \slurDotted
  e8( e) e8 d4 d8 |
  d4.~ d4 |

  e8 |
  d8( d) d8 d4 cis8 |
  d4 |

  \slurSolid
  d8 e4 fis8 |
  g4 g8 g4 fis8 |
  g4.( fis4) d8 |

  d4 dis8 e4 g8 |
  g4 fis8 e4 e8 |
  e4 e8 d4 d8 |
  d4. s4 \bar "|."
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  The first good joy that Ma -- ry had, It was the joy of one; __
  To see the bless -- ed Je -- sus Christ,
  \set stanza = "1. "
  When He __ was first her Son. __
  When He __ was first her Son,

  \set associatedVoice = "altos"
  Good Lord; And
  \set associatedVoice = "sopranos"
  hap -- py may we be; __
  Praise Fa -- ther, Son, and Ho -- ly Ghost To all e -- ter -- ni -- ty.
}
altoWordsII = \lyricmode {
  \set stanza = #"2–7. "
  The next good joy that Ma -- ry had, It was the joy of "two, three, etc."
  To see her own Son Je -- sus Christ,
  \set stanza = "2. "
  \set ignoreMelismata = ##t
  {\skip 1} Mak -- ing the lame _ to go. __ _
  {\skip 1} Mak -- ing the lame to go,

  \set associatedVoice = "altos"
  Good Lord; And
}
altoWordsIII = \lyricmode {
  \repeat unfold 22 { \skip 1}
  \set stanza = "3. "
  \set ignoreMelismata = ##t
  {\skip 1} Mak -- ing the blind _ to see. __ _
  {\skip 1} Mak -- ing the blind to see,

  \set associatedVoice = "altos"
  Good Lord; And
}
altoWordsIV = \lyricmode {
  \repeat unfold 22 { \skip 1}
  \set stanza = "4. "

  \set ignoreMelismata = ##t
  {\skip 1} Read -- ing the Bi -- _ ble o’er. __ _
  {\skip 1} Read -- ing the Bi -- ble o’er,

  \set associatedVoice = "altos"
  Good Lord; And
}
altoWordsV = \lyricmode {
  \repeat unfold 22 { \skip 1}
  \set stanza = "5. "
  \set ignoreMelismata = ##t
  {\skip 1} Rais -- ing the dead _ to life. __ _
  {\skip 1} Rais -- ing the dead to life,

  \set associatedVoice = "altos"
  Good Lord; And
}
altoWordsVI = \lyricmode {
  \repeat unfold 22 { \skip 1}
  \set stanza = "6. "
  Up -- on __ the Cru -- ci -- fix. __
  Up -- on __ the Cru -- ci -- fix,

  \set associatedVoice = "altos"
  Good Lord; And
}
altoWordsVII = \lyricmode {
  \repeat unfold 22 { \skip 1}
  \set stanza = "7. "
  A -- scend -- ing in -- to heav’n. __
  A -- scend -- ing in -- to heav’n,

  \set associatedVoice = "altos"
  Good Lord; And
}
tenorMusic = \relative c' {
  d8_\mf |
  b4 b8 b4 a8 |
  g4 c8 b4 b8 |
  c4 c8 a4 a8 |
  b4.~ b4 d8 |

  b4 b8 b4 a8 |
  g4 c8 b4 \small b8 |
  \normalsize \slurDotted
  c8( c) c8 a4 a8 |
  b4.~ b4 |

  b8_\f |
  a8( a) a8 a4 g8 |
  fis4 |

  \slurSolid
  g8 g4 d'8 |
  d4 d8 d4 d8 |
  d4( g,8 a4) a8_\ff |

  g4 a8 b4 e8 |
  d4 c8 b4 b8 |
  c4 c8 a4 a8 |
  b4. s4 \bar "|."
}
tenorWords = \lyricmode {

}

bassMusic = \relative c {
  d8 |
  g4 g8 e4 fis8 |
  g4 d8 e4 e8 |
  c4 c8 d4 d8 |
  g4.~ g4 d8 |

  g4 g8 e4 fis8 |
  g4 d8 e4 \small e8 |
  \normalsize \slurDotted
  c8( c) c8 d4 d8 |
  g4.~ g4 |

  e8 |
  fis8( fis) fis8 fis4 e8 |
  d4 |

  \slurSolid
  g8 c,4 d8 |
  g4 g8 g4 d8 |
  g4( e8 d4\fermata) fis8 |

  g4 fis8 e4 c8 |
  d4 d8 e4 e8 |
  c4 c8 d4 d8 |
  g4. d4\rest \bar "|."
}
bassWords = \lyricmode {

}

\score {
  <<
   \new ChoirStaff <<
%    \new Lyrics = sopranos
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics \lyricsto "sopranos" \sopWords
    \new Lyrics = "altos" \lyricsto "sopranos" \altoWords
    \new Lyrics = "altosII" \lyricsto "sopranos" \altoWordsII
    \new Lyrics = "altosVII" \lyricsto "sopranos" \altoWordsIII
    \new Lyrics = "altosVI" \lyricsto "sopranos" \altoWordsIV
    \new Lyrics = "altosV" \lyricsto "sopranos" \altoWordsV
    \new Lyrics = "altosIV" \lyricsto "sopranos" \altoWordsVI
    \new Lyrics = "altosIII" \lyricsto "sopranos" \altoWordsVII
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \lyricsto "tenors" \tenorWords
    \new Lyrics \lyricsto "basses" \bassWords
  >>
  >>
  \layout {
    \context {
      \Score
      %\override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      %\override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
    }
    \context {
      % Remove all empty staves
      % \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
    }
    \context {
      \Lyrics
    }
  }
}