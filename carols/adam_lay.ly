\header {
  title = "Adam Lay Ybounden"
  composer = "Boris Ord"
  poet = "anon. 15th cen."
  enteredby = "Maia McCormick"
  maintainer = "Maia McCormick"
  maintainerEmail = "maia.mcc@gmail.com"
  lastupdated = "2019/Dec/10"
}

\version "2.14.2"

\include "header.ly"

global= {
  \preamble
  \time 3/4
  \key b \minor
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

sop = \context Voice = "sop" \relative c'' {
  \voiceOne
  b4. b8 a b | fis4 fis2 | b4. d8 cis b | fis2. |
  d'4 d d | b b2 | a8 a b4 gis | fis2. |

  fis2 fis8 b | a4 a4. a8 | d4. d8 a b | a2 r4 |
  a a b | a8( g) g2 | fis8 fis g4 b | fis2. |

  d'4 d8 d cis d | a a a4. a8 | d4. fis8 e d | b2. |
  e8 e d d e4 | a, a4. b8 | cis4 d8 e fis4 | e2. |

  d4 d cis8 b | a2 a4 | fis'4. fis8 e d | e2.
  e4. e8 fis d | e4 e e8 fis |
    g4.( fis8 d e | fis4. e8 cis) d |
    e4 fis d | b4.( a8 b d | cis4.) b8( a4) | b2. \bar "|."
}

alto= \context Voice = "alto" \relative c' {
  \voiceTwo
  fis4 fis e8 d | cis4 cis2 | d4 fis e8 d | d4( cis2) |
  fis4 fis8( e) a4 | a2 g4 | fis8 fis fis4 e8( d) | cis2. |
  d2 cis8 b | cis4 cis4. fis8 | g4. fis8 e d | cis2 s4 |
  fis fis8( e) fis4 | e4 d2 | d8 d d4 e | cis2. |
}

tenor = \context Voice = "tenor" \relative c' {
  \voiceOne
  d4 d cis8 b | b4 ais2 | b4 fis g8 g | b4( ais2) |
  a?4 a d | d2 e4 | cis8 cis d4 b | b( ais4.) fis8 |

  b4. b8 a b | fis4 fis4. fis8 | b4. d8 cis b | fis2 r4 |
  d'4 cis d | b b2 | a8 a b4 g | fis2. |

  a4 d8 d a a | d d cis4 cis | b b b8 a | d2. |
  b8 b d cis b( cis) | d4 cis d | e d8 d a( b) | cis2.

  d4 d cis8 b | a2 e'4 | d d e8 e | cis2. |
  b4 cis d8 d | d4 cis c8 c |
    d2 b4 | d4. cis8( a) b |
    b( cis d4.) a8 | b( cis) d4. b8 |
    e4( d) cis | b2.

}

bass = \context Voice = "bass" \relative c' {
  \voiceTwo
  b4 d, e8 e | fis4 fis2 | b4 d, e8 e | fis2. |
  d4 a' fis | g2 e4 | fis8 fis d4 e | fis2. |
  R | R | R | R |
  d4 a' d, | e g2 | d8 d b4 e | fis2. |

}

accomp=\chordmode {

}



wordsCenter = \lyricmode {
  A -- dam lay y -- boun -- den,
  Bound -- en in a bond;
  Four thou -- sand win -- ter
  Thought he not too long.

  And all was for an ap -- ple,
  An ap -- ple that he took,
  As clerk -- es find -- en
  Writ -- ten in their book.

  Ne had the ap -- ple tak -- en been,
  The ap -- ple tak -- en been,
  Ne had nev -- er our la -- dy
  A -- been hea -- ven -- é queen.

  Bless -- ed be the time
  That ap -- ple tak -- en was,
  There -- fore we moun sing -- en,
  \lyricItal
    De -- o gra -- ci -- as,
    De -- o gra -- ci -- as,
    De -- o gra -- ci -- as!
  \lyricNormal
}

wordsTop = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  All for an ap -- ple, An
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1

  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1

  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \lyricItal
    De -- o gra -- ci -- as,
    De -- o gra -- ci -- as!
  \lyricNormal
}

wordsBottom = \lyricmode {
  Lo -- rem ip -- sum do -- lor sit a -- met...
}

\score {
  \context ChoirStaff <<
    \context ChordNames \accomp
    \unset ChoirStaff.melismaBusyProperties
    \context Staff ="upper"  { \clef "G" <<
      \global
      \sop
      \alto
    >>}

	\lyricsto "sop" \context Lyrics = "top" \with { alignAboveContext = "upper" } {
      \wordsTop }

    \context Staff = "lower"  { \clef "F"<<
      \global
      \tenor
      \bass
    >>}

    \lyricsto "tenor" \context Lyrics = "mid" \with { alignAboveContext = "lower" } {
      \wordsCenter }

    \lyricsto "bass" \context Lyrics = "bottom" {
      \wordsBottom
    }
  >>
  \layout{
    indent = 0.0\pt
    \context {
      \ChordNames
      \override ChordName  #'style = #'american
      chordChanges = ##t
    }
  }
}
