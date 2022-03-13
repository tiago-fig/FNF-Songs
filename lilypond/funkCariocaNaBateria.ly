% Funk Carioca na Bateria
% baseado vídeo https://www.youtube.com/watch?v=E-GVCxE8La4

\version "2.22.2"

\header {
  title = "Funk Carioca na Bateria"
  subtitle = ##f
  tagline = ##f
}

bumbo = \drummode {
  bd8 
}

funkCariocaA = \drummode {
  \time 4/4  
  
  <bd toml>8 r16 tomh16 
  toml8 sn16 sn16 
  <bd toml>8 bd8
  <toml sn>8 r16 bd16
  |
  <bd toml>8 r16 tomh16 
  toml8 sn16 sn16 
  <bd toml>8 bd8  
  \tuplet 3/2 { <toml sn>8 bd8 bd8 }  
}

funkCariocaB = \drummode {

  \time 4/4  
  
  <bd>8 r8
  sn16 sn16 r8
  bd8 bd8
  <sn>8 r16 bd16
  |
  <bd>8 r8
  sn16 sn16 r8
  <bd>8 bd8  
  \tuplet 3/2 { <sn>8 bd8 bd8 }  
}

\score {
  \header {
    piece = "bateria"
  }    
  \new DrumStaff {
	\repeat volta 4 { \bar ".|:" \funkCariocaA }
  }
  
  \layout { }  
}

\score {
  \unfoldRepeats {
    \new DrumStaff {
		\repeat volta 2 { \funkCariocaA }
        \repeat volta 2 { \funkCariocaB }
        \repeat volta 2 { \funkCariocaA }
	}
  }
  
  \midi { 
    \tempo 4 = 132
  }

}