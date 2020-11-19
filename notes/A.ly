% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

AltoIncipit = \markup {
	"Alto" \hspace #-16.8 \score {
		\new Staff \with {
			\remove Time_signature_engraver
		} {
			\clef alto s4 \bar empty
		}
		\layout { }
	} \hspace #-1.8
}

KyrieAltoNotes = {
	\relative c' {
		\clef treble
		\key b \major \time 3/4 \autoBeamOff \tempoKyrie
		R2.
		\mvTr f4.\pE^\tutti f8 es es
		d4 b r
		b4. g'8 es c'
		a4 b r %5
		a8.\fE f16 f4 r
		b8. f16 f4 r8 f
		f4 f r8 g
		f4 f r
		\mvTr f4.\pE^\solo e8 f g %10
		b8.([ as16)] as4 \mvTr f\fE^\tutti
		g as e
		f8.([ g16)] as4 r
		R2.
		r4 r c %15
		as g f
		es8.([ d16)] c4 r
		\mvTr fis4.\pE^\solo a8 d,4
		e4. g8 c, f
		g4 f8 e f g %20
		f8.([ e16)] e4 r
		g8. e16 c4 r8 b'
		b8.([ g16)] g8 b a g
		f d16 d c4.( e8)
		f4 r8 \mvTr e\fE^\tutti f g %25
		a([ f)] c e16 e f8 g
		a([ f)] c e f g
		a4 c h
		d cis d8([ b)]
		g8.([ e16)] e4 r8 f %30
		g d16 d c4.( e8)
		f4 r r
		R2.*2
		\mvTr f4.\pE^\solo f8 f f %35
		c4 c \mvTr f\fE^\tutti
		d' c e,
		f8.([ c16)] c4 r
		\mvTr g'2\pE^\solo g8 g
		es4 d \mvTr g\fE^\tutti %40
		g g fis
		g8.([ d16)] d4 r
		as'4. g8 f es
		d4 es r
		ges4. f8 es d %45
		c4 d r8 f
		f8.([ a16)] a4 r8 b
		f8.([ c'16)] c4 f,
		g g g
		f2.~ %50
		f
		f4 r r
		R2.*2
		f4.\pE f8 es es %55
		d4 b r
		b4. g'8 es c'
		a4 b r
		a8.\fE f16 f4 r
		b8. f16 f4 r8 f %60
		f4 f r8^\critnote g
		f4 f r
		\mvTr d'4.\pE^\solo h8 g d
		f8.([ es16)] es4 r
		R2. %65
		r4 r r8 f
		g4 es f
		g( a) b8 f
		g([ ges)] f a g c
		b8.([ a16)] a4 r %70
		f8. a16 c4 r8 a
		b([ a)] b fis g as
		g g16 g f4.( a8)
		b4 r8 \mvTr f\fE^\tutti f f
		f8.([ g16)] f8 f16 f f8 f %75
		f8.([ g16)] f8 f f f
		f4 f e
		g fis g8([ es)]
		c8.([ a'16)] a4\fermata r8 b
		g g16 g f4.( a8) %80
		b4 r r
		f8.\ff d16 d4 r
		b'8. f16 f4 r
		d'8. b16 b4 r
		c,4\pp c2 %85
		b r4
		R2.\fermataMarkup \bar "|." %87 finis
	}
}

KyrieAltoLyrics = \lyricmode {
	Ky -- ri -- e e -- %2
	lei -- son,
	Ky -- ri -- e e --
	lei -- son, %5
	Ky -- ri -- e,
	Ky -- ri -- e e --
	lei -- son, e --
	lei -- son.
	Ky -- ri -- e e -- %10
	lei -- son, e --
	lei -- son, e --
	lei -- son,

	e -- %15
	lei -- son, e --
	lei -- son.
	Ky -- ri -- e,
	Ky -- ri -- e e --
	lei -- son, Chri -- ste e -- %20
	lei -- son,
	Ky -- ri -- e e --
	lei -- son, Chri -- ste e --
	lei -- son, e -- lei --
	son. Chri -- ste e -- %25
	lei -- son, Ky -- ri -- e e --
	lei -- son, Chri -- ste e --
	lei -- son, e --
	lei -- son, e --
	lei -- son, e -- %30
	lei -- son, e -- lei --
	son.

	Ky -- ri -- e e -- %35
	lei -- son, e --
	lei -- son, e --
	lei -- son,
	Chri -- ste e --
	lei -- son, e -- %40
	lei -- son, e --
	lei -- son,
	Ky -- ri -- e e --
	lei -- son,
	Ky -- ri -- e e -- %45
	lei -- son, e --
	lei -- son, e --
	lei -- son, e --
	lei -- son, e --
	lei -- %50

	son.

	Ky -- ri -- e e -- %55
	lei -- son,
	Ky -- ri -- e e --
	lei -- son,
	Ky -- ri -- e,
	Ky -- ri -- e e -- %60
	lei -- son, e --
	lei -- son.
	Ky -- ri -- e e --
	lei -- son,
	%65
	e --
	lei -- son, e --
	lei -- son, e --
	lei -- son, Chri -- ste e --
	lei -- son, %70
	Ky -- ri -- e e --
	lei -- son, Chri -- ste e --
	lei -- son, e -- lei --
	son. Chri -- ste e --
	lei -- son, Ky -- ri -- e e -- %75
	lei -- son, Chri -- ste e --
	lei -- son, e --
	lei -- son, e --
	lei -- son, e --
	lei -- son, e -- lei -- %80
	son.
	Ky -- ri -- e,
	Ky -- ri -- e,
	Ky -- ri -- e
	e -- lei -- %85
	son. %86 finis
}

GloriaAltoNotes = {
	\relative c' {
		\clef treble
		\key b \major \time 4/4 \autoBeamOff \tempoGloria
		\mvTr b'4\f^\tuttiE b8 b c4 c
		es2 d
		g,( a)
		b r
		c4. a8 f4 r %5
		d'4. b8 f4 r
		es' d c b
		a f r2
		R1
		f2\pE r %10
		f4 es des c
		des f2 f4
		ges2 es
		r4 f2 f4
		ges4. es8 c4 r %15
		r2 r4 des
		es2. es4
		des r des des
		f2. f8 f
		f4 r f des %20
		b2. b4
		c4 r r2
		r4 b'\fE c c
		es2 d4 d
		g,2 a %25
		b4 r f f
		a f r2
		r4 f f f
		a f r2
		r4 f2\pE f4 %30
		a4. a8 b4 r
		r f2 f4
		a2 b4 r
		r a2\fE b4
		g2 g4 a %35
		b b c a
		b r b r
		b f b d
		f2 as,
		g4 b b b %40
		b2 f
		d4 r r2
		R1*3 %45
		d4.\pE d8 d4 r
		f4. d8 d4 r
		b'2 b4 f
		d es r2
		es f %50
		es( b'4) b
		b1(\fE
		ces2) ges4 ges
		es1
		f4^\critnote r r2 %55
		R1*8 %63
		r4 b,\pE b b
		d2 es4 r %65
		r b b b
		d4. d8 es4 r
		r f2\fE es4
		c2 f4 f
		g g as f %70
		g4^\critnote r r2
		R1*11 %82
		r4 f\pE f es
		es( d) c r
		r f f es %85
		es4. d8 c4 r
		r h'2\fE c4
		as2 f4 d
		es as g g
		es r r2 %90
		R1*3
		\mvTr es'2\pE^\solo d8([ es)] d([ es)]
		es4.( fis,8) fis4 r %95
		a2. d4
		c8([ a)] b!4 r2
		es2 d4 b
		g'2 f4 r
		f2 es8([ d)] c([ b)] %100
		a4 c r2
		r4 f,^\tutti f f
		a2 b4 r
		r f f f
		a4. a8 b4 r %105
		r a2\fE b4
		g2 g4 a
		b b c a
		b r b r
		d1\fermata %110
		d2 g,4 g
		c2 f,4 f
		g b b f
		f2 r
		b,\pE b4 b %115
		b2 b
		d d4 d
		es4. b8 b4 r
		es2 es4 es
		d d f f %120
		f f a a
		b2\fE c
		h c4 g
		a2 b4 f
		g b b f %125
		f r f r
		b2 r4 b
		g g f f
		f r b r
		b2 r4 a %130
		b g es f
		b,2 r
		R1*4 %136
		R1\fermataMarkup \bar "||" %137 finis
	}
}

GloriaAltoLyrics = \lyricmode {
	Glo -- ri -- a in ex --
	cel -- sis
	De --
	o,
	glo -- ri -- a, %5
	glo -- ri -- a
	in ex -- cel -- sis
	De -- o, %8

	et, %10
	et in ter -- ra
	pax, et in
	ter -- ra
	pax ho --
	mi -- ni -- bus. %15
	Lau --
	da -- mus
	te, be -- ne --
	di -- ci -- mus
	te, ad -- o -- %20
	ra -- mus
	te,
	glo -- ri -- fi --
	ca -- mus, lau --
	da -- mus %25
	te, ad -- o --
	ra -- mus,
	glo -- ri -- fi --
	ca -- mus,
	be -- ne -- %30
	di -- ci -- mus,
	ad -- o --
	ra -- mus,
	te lau --
	da -- mus, glo -- %35
	ri -- fi -- ca -- mus
	te, te,
	te, glo -- ri -- fi --
	ca -- mus
	te, glo -- ri -- fi -- %40
	ca -- mus
	te.

	Gra -- ti -- as, %46
	gra -- ti -- as
	a -- gi -- mus
	ti -- bi
	pro -- pter %50
	ma -- gnam
	glo --
	ri -- am
	tu --
	am. %55

	Te ad -- o -- %64
	ra -- mus, %65
	te be -- ne --
	di -- ci -- mus,
	te lau --
	da -- mus, glo --
	ri -- fi -- ca -- mus %70
	te.

	Te ad -- o -- %83
	ra -- mus,
	te be -- ne -- %85
	di -- ci -- mus,
	te lau --
	da -- mus, glo --
	ri -- fi -- ca -- mus
	te. %90

	Do -- mi -- ne %94
	De -- us, %95
	A -- gnus
	De -- i,
	Fi -- li -- us
	Pa -- tris,
	\xE Fi -- li -- us %100
	Pa -- tris. \x
	Te ad -- o --
	ra -- mus,
	te be -- ne --
	di -- ci -- mus, %105
	te lau --
	da -- mus, glo --
	ri -- fi -- ca -- mus
	te, te,
	te, %110
	te, te lau --
	da -- mus, glo --
	ri -- fi -- ca -- mus
	te,
	te ad -- o -- %115
	ra -- mus,
	te be -- ne --
	di -- ci -- mus,
	te, te lau --
	da -- mus, te lau -- %120
	da -- mus, te glo --
	ri -- fi --
	ca -- mus, lau --
	da -- mus, glo --
	ri -- fi -- ca -- mus %125
	te, te,
	te, glo --
	ri -- fi -- ca -- mus
	te, te,
	te, glo -- %130
	ri -- fi -- ca -- mus
	te. %132 finis
}

QuiTollisAltoNotes = {
	\relative c' {
		\clef treble
		\key g \minor \time 3/4 \autoBeamOff \tempoQuiTollis
			\set Score.currentBarNumber = #138
		\partial 8 r8 R2.*7 %144
		\mvTrr es4.\pp^\tutti d8 c b %145
		a8.([ b16)] a4 r
		f'4. es8 d c
		h8.([ c16)] h4 r
		r f'8 f f8.([ es16)]
		d4 r r %150
		R2.*7 %157
		\mvTr g4\pE^\tuttiE g8 g g g
		g2 as4
		b2 as4 %160
		g as r
		f4. f8 f f
		fes4( es) h
		c2( des4)
		c r r %165
		R2.*8 %173
		f4.^\tuttiE e8 f g
		g8.([ as16)] as4 r %175
		g4. fis8 g a
		a8.([ b16)] b4 r
		r es,8.([ d16)] d4
		r d8 d d4
		d r r %180
		r8 f!4 es8 d c
		h4( c) a'!
		g2.
		g4 r r\fermata \bar "||" %184 finis
	}
}

QuiTollisAltoLyrics = \lyricmode {
	Mi -- se -- re -- re %145
	no -- bis,
	mi -- se -- re -- re
	no -- bis,
	mi -- se -- re --
	re. %150

	Su -- sci -- pe de -- pre -- %158
	ca -- ti --
	o -- nem %160
	no -- stram,
	de -- pre -- ca -- ti --
	o -- nem
	no --
	stram. %165

	Mi -- se -- re -- re %174
	no -- bis, %175
	mi -- se -- re -- re
	no -- bis,
	no -- bis,
	mi -- se -- re --
	re, %180
	no -- bis mi -- se --
	re -- re
	no --
	bis. %184 finis
}

QuoniamAltoNotes = {
	\relative c' {
		\clef treble
		\key b \major \time 4/4 \autoBeamOff \tempoQuoniam
			\set Score.currentBarNumber = #185
		\partial 8 r8 R1*4 %188
		\mvTr a'4\fE^\tutti a8 a b4 f
		g8 g f4 f r %190
		R1*2
		a4 a8 a b8. f16 f8 g
		g g f8. f16 f4 r
		R1*7 %201
		b4 a16([ g)] f([ e)] f8.([ c16)] c4
		b' a16([ g)] f([ e)] f8. a16 c8 a
		f4 g8 a b8. f16 f4
		f8 g f([ e)] f4 r %205
		R1*4
		r8 f f b a4 f %210
		R1
		r8 f f b a8. f16 f4
		R1*5 %217
		r2 r8 d b d
		f8.([ g16)] f4 r8 d b d
		f8. g16 f4 r8 f b b %220
		b4 h8 h c( g4) a8
		b e, f8.([ es16)] d4 r
		R1*2
		r8 f f a c8.([ a16)] f4 %225
		r8 f f b d8. b16 f4
		r8 a b c16 d c8 b a g
		\tempoCumSancto f f r4 r2
		R1*2 %230
		f4 d8 b b'8. b16 g8 g16([ f)]
		es([ f)] es d c8 f d b r4
		r8 d'16[ c] b[ c b a] g[ a g f] e[ c d e]
		f8 a r4 r8 b16[( a] g[ a g f]
		es8) g r4 r8 a16[( g] f[ g f es] %235
		d8) f r4 r2
		R1
		g4 f!8 d d'8. d16 b8 b16([ a)]
		g([ a)] g([ f)] e8 a16 a f4 d
		r r8 g4( fis16[ g] a4) %240
		d,8 b'16[ a] g[ a g f] es8[ c'16 b] a[ b a g]
		f8[ d'16 c] b[ c b as] g4 r
		R1*2
		r4 b2 g8 es %245
		es'8. es16 c8 c16([ b)] as([ b)] as g f8 b
		g es r4 r2
		r r8 g16([ f] es[ f es d]
		c8) c' r4 r8 f,16[( es] d[ es d c]
		b8) b' r4 r8 b16[ a] g[ a g f] %250
		es[ f es d] c8[ d16 es] f[ g f es] d8[ es16 f]
		g8 b4 g es8 r4
		R1
		r2 r4 g
		es8 c a'8. a16 f8 d b'8. b16 %255
		g8 es c' c16 c as8 f d'4
		b r r2
		d4 b8 g es'8. es,16 es4
		c' a8 f16 f d'4 d,
		b'( g8) es c'4 c, %260
		r4 r8 g'( a) b r4
		r f d8 b b'8. b16
		g4 r r8 f f16([ g)] f es
		d4 d r8 \once \slurDashed b'~ b16[ c b as]
		g[ as g f] es[ f es d] c8 c' r4 %265
		r f, d8 b b'8. b16
		g8 g16([ f)] es([ f)] es d c8 c f4
		b, r r r8 g'16([ f]
		es[ d c b] a4) b r
		r8 g'4( a16[ b] c4) c, %270
		r8 f4 g16[ a] b4 es,
		c' f, d' g,~
		g8[ a16 b] c4 f, f~
		f8 f f4 d r
		r8 f f f f8. f16 f4 %275
		r8 f f f f8. f16 f4
		r8 es f f16 f f8 f f4
		f r r8 f f f
		f8. f16 f4 r8 f f f
		f8. f16 f4 r8 es'16([ d)] c([ d)] c b %280
		a([ b)] a([ g)] f([ g)] f([ es)] d8 f f4
		f a b r\fermata \bar "|." %282 finis
	}
}

QuoniamAltoLyrics = \lyricmode {
	Tu so -- lus san -- ctus, %189
	so -- lus san -- ctus, %190

	tu so -- lus Do -- mi -- nus, tu %193
	so -- lus Do -- mi -- nus,

	tu so -- lus san -- ctus, %202
	tu so -- lus Do -- mi -- nus, tu
	so -- lus al -- tis -- si -- mus,
	Je -- su Chri -- ste. %205

	Tu so -- lus san -- ctus, %210

	tu so -- lus Do -- mi -- nus,

	tu so -- lus %218
	san -- ctus, tu so -- lus
	Do -- mi -- nus, so -- lus al -- %220
	tis -- si -- mus, Je -- su,
	Je -- su Chri -- ste,

	tu so -- lus san -- ctus, %225
	tu so -- lus Do -- mi -- nus,
	al -- tis -- si -- mus, Je -- su, Je -- su
	Chri -- ste.

	Cum San -- cto Spi -- ri -- tu in %231
	glo -- ri -- a De -- i Pa -- tris,
	a -- _ _ _
	_ men, a --
	men, a -- %235
	men,

	cum San -- cto Spi -- ri -- tu in
	glo -- ri -- a De -- i Pa -- tris,
	a -- %240
	men, a -- _ _ _
	_ _ men,

	cum San -- cto %245
	Spi -- ri -- tu in glo -- ri -- a De -- i
	Pa -- tris,
	a --
	men, a --
	men, a -- _ %250
	_ _ _ _
	_ _ _ men,

	cum
	San -- cto Spi -- ri -- tu in glo -- ri -- %255
	a, in glo -- ri -- a De -- i Pa --
	tris,
	cum San -- cto Spi -- ri -- tu
	in glo -- ri -- a De -- i
	Pa -- tris, a -- men, %260
	a -- men,
	cum San -- cto Spi -- ri --
	tu in glo -- ri -- a
	De -- i, a --
	_ _ _ men, %265
	cum San -- cto Spi -- ri --
	tu in glo -- ri -- a De -- i Pa --
	tris, a --
	men,
	a -- men, %270
	a -- _ _ _
	_ _ _ _
	_ men, a --
	men, a -- men,
	cum San -- cto Spi -- ri -- tu, %275
	cum San -- cto Spi -- ri -- tu
	in glo -- ri -- a De -- i Pa --
	tris, cum San -- cto
	Spi -- ri -- tu, cum San -- cto
	Spi -- ri -- tu in glo -- ri -- a %280
	De -- i Pa -- tris, a -- men, a --
	men, a -- men. %282 finis
}

CredoAltoNotes = {
	\relative c' {
		\clef treble
		\key b \major \time 2/2 \autoBeamOff \tempoCredo
		\mvTr f4\f^\tutti f8 f f4 f
		f2 f
		f4 f8 f f4 f
		f2 f4 f
		f2 b %5
		b b,4 b
		b2( a)
		b r
		f'4 f f f8 f
		f4. f8 f2 %10
		g4 g g g
		f4. f8 f2
		f a4 a
		b2 f
		f( g) %15
		f r
		R1*2
		f4 f f f
		f4. f8 f2 %20
		f d
		e f
		f g4 d
		e g f f
		f2( e4) e %25
		f2 r
		f2. f4
		f2 e
		a a4 a
		a2 a %30
		a2. a4
		g( b) a g
		f2( e4) e
		d2 r
		R1*3 %37
		d2 d4 d
		es2 es
		d d4 d %40
		es4. es8 es2
		d4( f) b2
		b f4 f
		f f f2
		f r %45
		f4. f8 f4 es
		d g g g
		g g g g
		g2 g
		fis g %50
		a g4 g
		es2 e
		d r
		r4 fis( g) g
		g( f) es c %55
		d2. d4
		g2 r
		R1*2
		g2 r4 g %60
		g2 g4 es
		d2. fis4
		g2^\critnote r
		d f!4 b
		b( g) g g %65
		f2.( a4)
		b2 r4 f
		g2 a4 d,
		es2 f4. f8
		f2 f4 f %70
		f f r f
		f2.( b4)
		a2 a4 f
		b2 d4 b
		f2 r4 f %75
		d( g) g f
		f( es) es es
		c( f) f es
		es( d) d f
		es2 f4 b %80
		b2 b4 g
		f2.( es4)
		d f f2
		f4 f f2
		f4 f f2 %85
		f4 f f2
		d r
		R1*2 \bar "|" %89 finis
	}
}

CredoAltoLyrics = \lyricmode {
	Cre -- do in u -- num
	De -- um,
	Pa -- trem o -- mni -- po --
	ten -- tem, fa --
	cto -- rem %5
	coe -- li et
	ter --
	rae,
	vi -- si -- bi -- li -- um
	o -- mni -- um %10
	et in -- vi -- si --
	bi -- li -- um,
	\xE cre -- do fa --
	cto -- rem,
	cre -- %15
	do. \x

	Et in u -- num %19
	Do -- mi -- num %20
	Je -- sum
	Chri -- stum,
	Fi -- li -- um
	De -- i u -- ni --
	ge -- ni -- %25
	tum,
	et ex
	Pa -- tre,
	ex Pa -- tre
	na -- tum %30
	an -- te
	o -- mni -- a
	sae -- cu --
	la.

	De -- um de %38
	De -- o,
	lu -- men de %40
	lu -- mi -- ne,
	De -- um
	ve -- rum de
	De -- o ve --
	ro, %45
	ge -- ni -- tum non
	fa -- ctum, con -- sub --
	stan -- ti -- a -- lem
	Pa -- tri,
	per quem %50
	o -- mni -- a
	fa -- cta
	sunt,
	per quem
	o -- mni -- a %55
	fa -- cta
	sunt.

	Qui, qui %60
	pro -- pter nos
	ho -- mi --
	nes,
	qui pro -- pter
	no -- stram sa -- %65
	lu --
	tem de --
	scen -- dit, de --
	scen -- dit, de --
	scen -- dit de  %70
	coe -- lis, de
	coe --
	lis, pro -- pter
	nos, pro -- pter
	nos, et %75
	no -- stram sa --
	lu -- tem, et
	no -- stram sa --
	lu -- tem de --
	scen -- dit, de -- %80
	scen -- dit de
	coe --
	lis, de -- scen --
	dit de coe --
	lis, de -- scen -- %85
	dit de coe --
	lis. %87 finis
}

% AltoNotes = {
% 	\relative c' {
% 		\clef treble
%
% 	}
% }
%
% AltoLyrics = \lyricmode {
%
% }
