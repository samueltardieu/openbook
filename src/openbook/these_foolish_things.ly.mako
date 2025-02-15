<%page args='part'/>
% if part=='Vars':
<%
	from scripts import attr
	version=attr.Version()
	version['doChords']=True
	version['doVoice']=True
	version['doLyrics']=True
	version['doLyricsmore']=True
	attributes.add_version('Fake', version)
	attributes.set_default_version_name('Fake')

	attributes['title']='These Foolish Things'
	attributes['style']='Jazz'
	# from the fake book
	attributes['composer']=''
	# from the fake book
	attributes['poet']=''
	# from the fake book
	attributes['piece']=''
	# from the fake book
	attributes['copyright']=''
	# from the fake book
	attributes['copyrightextra']=''

	attributes['typesetter']='Mark Veltzer <mark.veltzer@gmail.com>'
	attributes['completion']='1'
	attributes['uuid']='dd563a30-92de-11ee-a078-db6e126556d8'
	attributes['structure']='AABA'
	attributes['structureremark']=''
	attributes['location']='jfb:388'

	attributes['idyoutuberemark1']=''
	attributes['idyoutube1']=''
	attributes['idyoutuberemark2']=''
	attributes['idyoutube2']=''
	attributes['lyricsurl']=''
%>
% endif

% if part=='Doc':
	DONE:
	TODO:
	- added a lyrics url.
	- added the fake book epdf.
	- added the tune structure.
	- wrote down the fake book chords.
	- wrote down the fake book tune.
	- wrote down the fake book lyrics.
	- filled in the meta data from the fake book.
	- check the fake book chords.
	- check the fake book tune.
	- check the fake book lyrics.
	- played the midi to hear that it sounds right.
	- added youtube performances.
	- get another version in here (from where?)
% endif

% if part=='ChordsFake':
\chordmode {
	\startChords
	\startSong

	\repeat volta 2 {

		\myMark "A"
		\startPart
		g2 e:m | a:m7 d:7 | a:m7 d:7.9- | g4 bes:7 a:7 d:7 | \myEndLine
		g2 e:m | a:m7 d:7 | g:6 e:m7 | a:m7 d:7 | \myEndLine
		\endPart

		\myMark "A'"
		\startPart
		g2 e:m | a:m7 d:7 | cis:7.9- fis:7.9- | b:m7 e:7 | \myEndLine
		d1:6 | a:7 | d1*2:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		g4*11:7 b4:7 | e1:7.5+ | \myEndLine
		a1*2:7 | a1:m7 | ees2:7 d2:7 | \myEndLine
		\endPart

		\myMark "A''"
		\startPart
		g2 e:m | a:m7 d:7 | b:7 e:7 | a1:7 | \myEndLine
		g2 e:7 | a:m7 d:7 |

	} \alternative {
		{
			g e:7.9+ | a:7.9- d:7.9- | \myEndLineVoltaNotLast
		}
		{
			ees1 | bes2/d d:7/c | g/b e:7 | a:m7 d:7 | g1*2 | \myEndLineVoltaLast
		}
	}
	\endPart

	\endSong
	\endChords
}
% endif

% if part=='VoiceFake':
{
	\tempo "Allegro" 4 = 130
	\time 2/2
	\key g \major

	\repeat volta 2 {

		%% part "A"
		r8 d e4 g a | b8.[ b16 a8. g16] a8 b4. | b8.[ b16 a8. g16] a8 b4 d,8~ | d1 |
		r8 d e4 g a | b8.[ b16 a8. g16] a8 b4 g8~ | g1~ | g2. r4 |

		%% part "A"
		r8 d e4 g a | b8.[ b16 a8. g16] a8 b4. | d8.[ d16 cis8. b16] cis8 d4 fis,8~ | fis1 |
		b4 a8. gis16 a8 b4. | b8.[ c16 a8. gis16] a8 b4. | a4 b c b | a d d d |

		%% part "B"
		d2~ d8 b4 g8 | a2~ a8.[ b16 c8. cis16] | d4 e d b | c2. b4 |
		e2~ e8 cis4 a8 | b2~ b8 a4 b8 | c4 e e, g | a1 |

		%% part "A"
		r8 d, e4 g a | b8.[ b16 a8. g16] a8 b4. | c8 b4 a8 b4 c | b2. a4 |
		d4 d d2 | e8 e4 e8 b4 b |
	} \alternative {
		{
			g1~ | g2 r |
		}
		{
			g4 g g2 | bes8 bes4 bes8 fis4 fis | d'4 d d2 | e8 e4 e8 b4 b | g1~ | g4 r r2 |
		}
	}
}
% endif

% if part=='LyricsFake':
\lyricmode {

	%% part "A"
	They All Laughed at Chris -- to -- pher Co -- lum -- bus
	when he said the world was round. __
	They All Laughed when Ed -- i -- son re -- cord -- ed sound. __

	%% part "A"
	They All Laughed at Wil -- bur and his broth -- er,
	when they said that man could fly. __
	They told Mar -- co -- ni wire -- less was a pho -- ney;
	it's the same old cry.

	%% part "B"
	They laughed at me __ want -- ing you, __
	said I was reach -- ing for the moon.
	But oh, __ you came through __
	now they'll have to change their tune.

	%% part "A"
	They all said we nev -- er could be hap -- py,
	they laughed at us and how!
	But ho, ho, ho!
	Who's got the last laugh now? __

	%% part "Volta"
	He, he, he!
	Let's at the past laugh,
	Ha, ha, ha!
	Who's got the last laugh now? __
}
% endif

% if part=='LyricsmoreFake':
\lyricmode {

	%% part "A"
	They All Laughed at Rock -- e -- fel -- ler Cen -- ter,
	now they're fight -- ing to get in. __
	They All Laughed at Whit -- ney and his cot -- ton gin. __

	%% part "A"
	They All Laughed at Ful -- ton and his steam -- boat,
	Her -- shey and his choc' -- late bar. __
	Ford and his Liz -- zie kept the laugh -- ers bus -- y;
	that's how peo -- ple are.

	%% part "B"
	They laughed at me __ want -- ing you, __
	said it would be hel -- lo, good -- bye.
	But oh, __ you came through __
	now they're eat -- ing hum -- ble pie.

	%% part "A"
	They all said we'd nev -- er get to -- geth -- er;
	dar -- ling, let's take a bow.
	For ho, ho, ho!
	Who's got the last laugh
}
% endif
