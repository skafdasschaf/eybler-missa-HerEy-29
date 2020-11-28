% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

\include "../definitions.ly"

\paper {
	indent = 1\cm
	#(define (page-post-process layout pages) (ly:create-toc-file layout pages))
}

#(set-global-staff-size 15.87)

\book {
	\bookpart {
		\header {
			number = "1"
			title = "K Y R I E"
		}
		\paper { indent = 3\cm }
		\tocSection "1" "Kyrie"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "Oboe"
						\new Staff {
							\set Staff.instrumentName = "I"
							\KyrieOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "II"
							\KyrieOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "Violino"
						\new Staff {
							\set Staff.instrumentName = "I"
							\KyrieViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "II"
							\KyrieViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "Viola"
						\KyrieViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = \SopranoIncipit
						\override Staff.InstrumentName.self-alignment-Y = ##f
						\override Staff.InstrumentName.self-alignment-X = #RIGHT
						\new Voice = "Soprano" { \dynamicUp \KyrieSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \KyrieSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = \AltoIncipit
						\override Staff.InstrumentName.self-alignment-Y = ##f
						\override Staff.InstrumentName.self-alignment-X = #RIGHT
						\new Voice = "Alto" { \dynamicUp \KyrieAltoNotes }
					}
					\new Lyrics \lyricsto Alto \KyrieAltoLyrics

					\new Staff {
						\set Staff.instrumentName = \TenoreIncipit
						\override Staff.InstrumentName.self-alignment-Y = ##f
						\override Staff.InstrumentName.self-alignment-X = #RIGHT
						\new Voice = "Tenore" { \dynamicUp \KyrieTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \KyrieTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "Basso"
						\new Voice = "Basso" { \dynamicUp \KyrieBassoNotes }
					}
					\new Lyrics \lyricsto Basso \KyrieBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Organo" "e Bassi" } }
						% \transpose c c,
						\KyrieOrgano
					}
				>>
				\new FiguredBass { \KyrieBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 80 }
		}
	}
	\bookpart {
		\header {
			number = "2"
			title = "G L O R I A"
		}
		\tocSection "2" "Gloria"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "ob"
						\new Staff {
							\set Staff.instrumentName = "1"
							\GloriaOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\GloriaOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new Staff <<
						\set StaffGroup.instrumentName = \markup \center-column { "clno (B)" "1, 2" }
						% \transpose c b,
						\partcombine \GloriaClarinoI \GloriaClarinoII
					>>
				>>
				\new Staff {
					\set Staff.instrumentName = \markup \center-column { "timp" "B–F" }
					% \transpose c b,
					\GloriaTimpani
				}
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\GloriaViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\GloriaViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\GloriaViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \GloriaSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \GloriaSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \GloriaAltoNotes }
					}
					\new Lyrics \lyricsto Alto \GloriaAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \GloriaTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \GloriaTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \GloriaBassoNotes }
					}
					\new Lyrics \lyricsto Basso \GloriaBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\GloriaOrgano
					}
				>>
				\new FiguredBass { \GloriaBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 120 }
		}
	}
	\bookpart {
		\header {
			subtitle = "Q U I   T O L L I S"
		}
		\tocSubsection "2.2" "Qui tollis"
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = \markup \center-column { "ob" "[solo]" }
					\QuiTollisOboeI
				}
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\QuiTollisViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\QuiTollisViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\QuiTollisViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \QuiTollisSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \QuiTollisSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \QuiTollisAltoNotes }
					}
					\new Lyrics \lyricsto Alto \QuiTollisAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \QuiTollisTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \QuiTollisTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \QuiTollisBassoNotes }
					}
					\new Lyrics \lyricsto Basso \QuiTollisBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\QuiTollisOrgano
					}
				>>
				\new FiguredBass { \QuiTollisBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			subtitle = "Q U O N I A M"
		}
		\tocSubsection "2.3" "Quoniam"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "ob"
						\new Staff {
							\set Staff.instrumentName = "1"
							\QuoniamOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\QuoniamOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new Staff <<
						\set StaffGroup.instrumentName = \markup \center-column { "clno" "1, 2" }
						% \transpose c b,
						\partcombine \QuoniamClarinoI \QuoniamClarinoII
					>>
				>>
				\new Staff {
					\set Staff.instrumentName = "timp"
					% \transpose c b,
					\QuoniamTimpani
				}
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\QuoniamViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\QuoniamViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\QuoniamViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \QuoniamSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \QuoniamSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \QuoniamAltoNotes }
					}
					\new Lyrics \lyricsto Alto \QuoniamAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \QuoniamTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \QuoniamTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \QuoniamBassoNotes }
					}
					\new Lyrics \lyricsto Basso \QuoniamBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\QuoniamOrgano
					}
				>>
				\new FiguredBass { \QuoniamBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 90 }
		}
	}
	\bookpart {
		\header {
			number = "3"
			title = "C R E D O"
		}
		\tocSection "3" "Credo"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "ob"
						\new Staff {
							\set Staff.instrumentName = "1"
							\CredoOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\CredoOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new Staff <<
						\set StaffGroup.instrumentName = \markup \center-column { "clno" "1, 2" }
						% \transpose c b,
						\partcombine \CredoClarinoI \CredoClarinoII
					>>
				>>
				\new Staff {
					\set Staff.instrumentName = "timp"
					% \transpose c b,
					\CredoTimpani
				}
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\CredoViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\CredoViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\CredoViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \CredoSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \CredoSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \CredoAltoNotes }
					}
					\new Lyrics \lyricsto Alto \CredoAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \CredoTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \CredoTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \CredoBassoNotes }
					}
					\new Lyrics \lyricsto Basso \CredoBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\CredoOrgano
					}
				>>
				\new FiguredBass { \CredoBassFigures }
			>>
			\layout { }
			\midi { \tempo 2 = 80 }
		}
	}
	\bookpart {
		\header {
			subtitle = "E T   I N C A R N A T U S   E S T"
		}
		\tocSubsection "3.2" "Et incarnatus est"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "ob"
						\new Staff {
							\set Staff.instrumentName = "1"
							\EtIncarnatusOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\EtIncarnatusOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new Staff <<
						\set StaffGroup.instrumentName = \markup \center-column { "clno" "1, 2" }
						% \transpose c b,
						\partcombine \EtIncarnatusClarinoI \EtIncarnatusClarinoII
					>>
				>>
				\new Staff {
					\set Staff.instrumentName = "timp"
					% \transpose c b,
					\EtIncarnatusTimpani
				}
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\EtIncarnatusViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\EtIncarnatusViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\EtIncarnatusViola
					}
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "vlc" "solo" }
						\EtIncarnatusCello
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \EtIncarnatusSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \EtIncarnatusSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \EtIncarnatusAltoNotes }
					}
					\new Lyrics \lyricsto Alto \EtIncarnatusAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \EtIncarnatusTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \EtIncarnatusTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \EtIncarnatusBassoNotes }
					}
					\new Lyrics \lyricsto Basso \EtIncarnatusBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\EtIncarnatusOrgano
					}
				>>
				\new FiguredBass { \EtIncarnatusBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			subtitle = "E T   R E S U R R E X I T"
		}
		\tocSubsection "3.3" "Et resurrexit"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "ob"
						\new Staff {
							\set Staff.instrumentName = "1"
							\EtResurrexitOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\EtResurrexitOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new Staff <<
						\set StaffGroup.instrumentName = \markup \center-column { "clno" "1, 2" }
						% \transpose c b,
						\partcombine \EtResurrexitClarinoI \EtResurrexitClarinoII
					>>
				>>
				\new Staff {
					\set Staff.instrumentName = "timp"
					% \transpose c b,
					\EtResurrexitTimpani
				}
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\EtResurrexitViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\EtResurrexitViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\EtResurrexitViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \EtResurrexitSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \EtResurrexitSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \EtResurrexitAltoNotes }
					}
					\new Lyrics \lyricsto Alto \EtResurrexitAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \EtResurrexitTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \EtResurrexitTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \EtResurrexitBassoNotes }
					}
					\new Lyrics \lyricsto Basso \EtResurrexitBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\EtResurrexitOrgano
					}
				>>
				\new FiguredBass { \EtResurrexitBassFigures }
			>>
			\layout { }
			\midi { \tempo 2 = 100 }
		}
	}
	\bookpart {
		\header {
			number = "4"
			title = "S A N C T U S"
		}
		\tocSection "4" "Sanctus"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "ob"
						\new Staff {
							\set Staff.instrumentName = "1"
							\SanctusOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\SanctusOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new Staff <<
						\set StaffGroup.instrumentName = \markup \center-column { "clno" "1, 2" }
						% \transpose c b,
						\partcombine \SanctusClarinoI \SanctusClarinoII
					>>
				>>
				\new Staff {
					\set Staff.instrumentName = "timp"
					% \transpose c b,
					\SanctusTimpani
				}
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\SanctusViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\SanctusViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\SanctusViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \SanctusSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \SanctusSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \SanctusAltoNotes }
					}
					\new Lyrics \lyricsto Alto \SanctusAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \SanctusTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \SanctusTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \SanctusBassoNotes }
					}
					\new Lyrics \lyricsto Basso \SanctusBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\SanctusOrgano
					}
				>>
				\new FiguredBass { \SanctusBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
	\bookpart {
		\header {
			number = "5"
			title = "B E N E D I C T U S"
		}
		\tocSection "5" "Benedictus"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "ob"
						\new Staff {
							\set Staff.instrumentName = "1"
							\BenedictusOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\BenedictusOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new Staff <<
						\set StaffGroup.instrumentName = \markup \center-column { "clno" "1, 2" }
						% \transpose c b,
						\partcombine \BenedictusClarinoI \BenedictusClarinoII
					>>
				>>
				\new Staff {
					\set Staff.instrumentName = "timp"
					% \transpose c b,
					\BenedictusTimpani
				}
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\BenedictusViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\BenedictusViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\BenedictusViola
					}
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "vlc" "solo" }
						\BenedictusCello
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \BenedictusSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \BenedictusSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \BenedictusAltoNotes }
					}
					\new Lyrics \lyricsto Alto \BenedictusAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \BenedictusTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \BenedictusTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \BenedictusBassoNotes }
					}
					\new Lyrics \lyricsto Basso \BenedictusBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\BenedictusOrgano
					}
				>>
				\new FiguredBass { \BenedictusBassFigures }
			>>
			\layout { }
			\midi { \tempo 2 = 50 }
		}
	}
	\bookpart {
		\header {
			number = "6"
			title = "A G N U S   D E I"
		}
		\tocSection "6" "Agnus Dei"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\AgnusViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\AgnusViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\AgnusViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \AgnusSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \AgnusSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \AgnusAltoNotes }
					}
					\new Lyrics \lyricsto Alto \AgnusAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \AgnusTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \AgnusTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \AgnusBassoNotes }
					}
					\new Lyrics \lyricsto Basso \AgnusBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\AgnusOrgano
					}
				>>
				\new FiguredBass { \AgnusBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 50 }
		}
	}
	\bookpart {
		\header {
			subtitle = "D O N A   N O B I S   P A C E M"
		}
		\tocSubsection "6.2" "Dona nobis pacem"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "ob"
						\new Staff {
							\set Staff.instrumentName = "1"
							\DonaOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\DonaOboeII
						}
					>>
				>>
				\new StaffGroup <<
					\new Staff <<
						\set StaffGroup.instrumentName = \markup \center-column { "clno" "1, 2" }
						% \transpose c b,
						\partcombine \DonaClarinoI \DonaClarinoII
					>>
				>>
				\new Staff {
					\set Staff.instrumentName = "timp"
					% \transpose c b,
					\DonaTimpani
				}
				\new StaffGroup <<
					\new GrandStaff \with { \smallGroupDistance } <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\DonaViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\DonaViolinoII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = "vla"
						\DonaViola
					}
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S"
						\new Voice = "Soprano" { \dynamicUp \DonaSopranoNotes }
					}
					\new Lyrics \lyricsto Soprano \DonaSopranoLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \DonaAltoNotes }
					}
					\new Lyrics \lyricsto Alto \DonaAltoLyrics

					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \DonaTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \DonaTenoreLyrics

					\new Staff {
						\set Staff.instrumentName = "B"
						\new Voice = "Basso" { \dynamicUp \DonaBassoNotes }
					}
					\new Lyrics \lyricsto Basso \DonaBassoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\DonaOrgano
					}
				>>
				\new FiguredBass { \DonaBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 105 }
		}
	}
}
