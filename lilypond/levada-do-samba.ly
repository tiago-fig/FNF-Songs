% Levada do Samba
% baseado nas variações do vídeo https://www.youtube.com/watch?v=nzWPaGxYWeg&t=9s

\version "2.22.2"

\header {
  title = "Levada do Samba"
  subtitle = "Execução da Bateria"

% para eliminar o LilyPond footer text:
  tagline = ##f
}

\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##t
}

chimbal = \drummode {
 \time 2/4  
 \repeat volta 2 {
	\repeat unfold 4 { cymr16 cymr cymr cymr cymr cymr cymr cymr }
 }
 cymr8 cymr r4
}

% Variação 1 da CAIXA
caixa_One = \drummode {
  \time 2/4  
  \repeat volta 2 {
	\repeat unfold 2 { sn16 r sn r r sn r sn | r16 sn r sn sn r sn r  }
  }
  sn8 sn r4
}

% Variação 2 da CAIXA
caixa_Two = \drummode {
  \time 2/4  
  \repeat volta 2 {
	\repeat unfold 2 { sn16 r sn r r sn r sn | r16 sn r sn r sn r r  }
  }
  sn8 sn r4
}

bumbo = \drummode {
  \time 2/4  
  \repeat volta 2 {
    \repeat unfold 4 { bd8. bd16 bd8. bd16 }
  }
  bd8 bd r4
}

#(ly:set-option 'midi-extension "mid")

\score {
   \header {
      piece = "variação 1"
   }
\unfoldRepeats {
    % variação 1
	<<
	   \new DrumStaff \chimbal 
	   \new DrumStaff \caixa_One
	   \new DrumStaff \bumbo 
	>>
}

	\layout {
	  
	}

    \midi { 
	   \tempo 4 = 72
	}
}

\score {
   \header {
      piece = "variação 1"
   }
\unfoldRepeats {
    % variação 2
	<<
	   \new DrumStaff \chimbal 
	   \new DrumStaff \caixa_Two
	   \new DrumStaff \bumbo 
	>>
}

	\layout {
	  
	}

    \midi { 
	   \tempo 4 = 72
	}
}

