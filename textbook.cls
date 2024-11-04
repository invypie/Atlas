\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{textbook}

\chardef\f@@r=4
\chardef\f@v@=5

\LoadClass[a4paper]{amsbook}

\numberwithin{section}{chapter}
\numberwithin{figure}{chapter}
\numberwithin{table}{chapter}
\numberwithin{equation}{chapter}

\RequirePackage{microtype}

\RequirePackage[english]{babel}

\RequirePackage{lualatex-math}
\RequirePackage{mathtools}
\RequirePackage{empheq}
\RequirePackage{accents}
\RequirePackage{cancel}
\RequirePackage{xfrac}
\RequirePackage{derivative}
\RequirePackage[parse-numbers = false]{siunitx}

\allowdisplaybreaks

\let\Im\relax
\let\Re\relax

\DeclareMathOperator{\arcsec}{arcsec}
\DeclareMathOperator{\arccsc}{arccsc}
\DeclareMathOperator{\sech}{sech}
\DeclareMathOperator{\csch}{csch}
\DeclareMathOperator{\arsinh}{arsinh}
\DeclareMathOperator{\arcosh}{arcosh}
\DeclareMathOperator{\artanh}{artanh}
\DeclareMathOperator{\arcoth}{arcoth}
\DeclareMathOperator{\arsech}{arsech}
\DeclareMathOperator{\arcsch}{arcsch}
\DeclareMathOperator{\versin}{versin}
\DeclareMathOperator{\vercos}{vercos}
\DeclareMathOperator{\coversin}{coversin}
\DeclareMathOperator{\covercos}{covercos}
\DeclareMathOperator{\haversin}{haversin}
\DeclareMathOperator{\havercos}{havercos}
\DeclareMathOperator{\hacoversin}{hacoversin}
\DeclareMathOperator{\hacovercos}{hacovercos}
\DeclareMathOperator{\arcversin}{arcversin}
\DeclareMathOperator{\arcvercos}{arcvercos}
\DeclareMathOperator{\arccoversin}{arccoversin}
\DeclareMathOperator{\arccovercos}{arccovercos}
\DeclareMathOperator{\archaversin}{archaversin}
\DeclareMathOperator{\archavercos}{archavercos}
\DeclareMathOperator{\archacoversin}{archacoversin}
\DeclareMathOperator{\archacovercos}{archacovercos}

\DeclareMathOperator{\Arg}{Arg}
\DeclareMathOperator{\Im}{Im}
\DeclareMathOperator{\Re}{Re}

\DeclareMathOperator{\proj}{proj}
\DeclareMathOperator{\oproj}{oproj}

\DeclareMathOperator{\cdm}{cdm}
\DeclareMathOperator{\dom}{dom}
\DeclareMathOperator{\img}{img}
\DeclareMathOperator{\rng}{rng}

\DeclareMathOperator{\chr}{char}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\tr}{tr}

\DeclareMathOperator{\Cent}{C}
\DeclareMathOperator{\I}{I}
\DeclareMathOperator{\N}{N}
\DeclareMathOperator{\Nil}{Nil}
\DeclareMathOperator{\Orb}{Orb}
\DeclareMathOperator{\Rad}{Rad}
\DeclareMathOperator{\Span}{Span}
\DeclareMathOperator{\Spec}{Spec}
\DeclareMathOperator{\Stab}{Stab}

\DeclareMathOperator{\A}{A}
\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\C}{C}
\DeclareMathOperator{\D}{D}
\DeclareMathOperator{\Dic}{Dic}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Frob}{Frob}
\DeclareMathOperator{\Gal}{Gal}
\DeclareMathOperator{\GL}{GL}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\Inn}{Inn}
\DeclareMathOperator{\Out}{Out}
\DeclareMathOperator{\Orth}{O}
\DeclareMathOperator{\Q}{Q}
\DeclareMathOperator{\Sym}{S}
\DeclareMathOperator{\SL}{SL}
\DeclareMathOperator{\SO}{SO}
\DeclareMathOperator{\Sp}{Sp}
\DeclareMathOperator{\SU}{SU}
\DeclareMathOperator{\Syl}{Syl}
\DeclareMathOperator{\U}{U}

\DeclareMathOperator{\cl}{cl}
\DeclareMathOperator{\ext}{ext}
\DeclareMathOperator{\intr}{int}

%%%%%

\DeclareMathOperator{\adj}{adj}
\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\supp}{supp}

%%%%%

\DeclareRobustCommand{\biggg}{\bBigg@\thr@@}
\DeclareRobustCommand{\Biggg}{\bBigg@{3.5}}
\DeclareRobustCommand{\bigggg}{\bBigg@\f@@r}
\DeclareRobustCommand{\Bigggg}{\bBigg@{4.5}}
\DeclareRobustCommand{\biggggg}{\bBigg@\f@v@}
\DeclareRobustCommand{\Biggggg}{\bBigg@{5.5}}

\DeclareRobustCommand\bigggl{\mathopen\biggg}
\DeclareRobustCommand\bigggm{\mathrel\biggg}
\DeclareRobustCommand\bigggr{\mathclose\biggg}
\DeclareRobustCommand\Bigggl{\mathopen\Biggg}
\DeclareRobustCommand\Bigggm{\mathrel\Biggg}
\DeclareRobustCommand\Bigggr{\mathclose\Biggg}
\DeclareRobustCommand\biggggl{\mathopen\bigggg}
\DeclareRobustCommand\biggggm{\mathrel\bigggg}
\DeclareRobustCommand\biggggr{\mathclose\bigggg}
\DeclareRobustCommand\Biggggl{\mathopen\Bigggg}
\DeclareRobustCommand\Biggggm{\mathrel\Bigggg}
\DeclareRobustCommand\Biggggr{\mathclose\Bigggg}
\DeclareRobustCommand\bigggggl{\mathopen\biggggg}
\DeclareRobustCommand\bigggggm{\mathrel\biggggg}
\DeclareRobustCommand\bigggggr{\mathclose\biggggg}
\DeclareRobustCommand\Bigggggl{\mathopen\Biggggg}
\DeclareRobustCommand\Bigggggm{\mathrel\Biggggg}
\DeclareRobustCommand\Bigggggr{\mathclose\Biggggg}

\DeclarePairedDelimiterX\@abs[1]\lvert\rvert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\@norm[1]\lVert\rVert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\@floor[1]\lfloor\rfloor{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\@ceil[1]\lceil\rceil{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\@nint[1]\lfloor\rceil{\ifblank{#1}{\:\cdot\:}{#1}}

\DeclarePairedDelimiter\@bra\langle\rvert
\DeclarePairedDelimiter\@ket\lvert\rangle
\DeclarePairedDelimiterX\@braket[3]\langle\rangle{\ifblank{#2}{#1\delimsize\vert\mathopen{}#3}{#1\delimsize\vert\mathopen{}#2\delimsize\vert\mathopen{}#3}}
\DeclarePairedDelimiterX\@ketbra[2]\lvert\rvert{#1\delimsize\rangle\delimsize\langle\mathopen{}#2}

\DeclarePairedDelimiterX\@rfrac[2]..{#1\delimsize\slash\mathopen{}#2}

\DeclarePairedDelimiterXPP\@eval[3]{}.\rvert{\ifblank{#2}{}{_{#2}}\ifblank{#3}{}{^{#3}}}{#1}

\DeclarePairedDelimiterX\@set[2]\lbrace\rbrace{\ifblank{#2}{#1}{#1\:\delimsize\vert\:\mathopen{}#2}}

\NewDocumentCommand\abs{O{}o}{\IfNoValueTF{#2}{\@abs*{#1}}{\@abs[#1]{#2}}}
\NewDocumentCommand\norm{O{}o}{\IfNoValueTF{#2}{\@norm*{#1}}{\@norm[#1]{#2}}}
\NewDocumentCommand\floor{O{}o}{\IfNoValueTF{#2}{\@floor*{#1}}{\@floor[#1]{#2}}}
\NewDocumentCommand\ceil{O{}o}{\IfNoValueTF{#2}{\@ceil*{#1}}{\@ceil[#1]{#2}}}
\NewDocumentCommand\nint{O{}o}{\IfNoValueTF{#2}{\@nint*{#1}}{\@nint[#1]{#2}}}

\NewDocumentCommand\bra{om}{\IfNoValueTF{#1}{\@bra*{#2}}{\@bra[#1]{#2}}}
\NewDocumentCommand\ket{om}{\IfNoValueTF{#1}{\@ket*{#2}}{\@ket[#1]{#2}}}
\NewDocumentCommand\braket{omO{}m}{\IfNoValueTF{#1}{\@braket*{#2}{#3}{#4}}{\@braket[#1]{#2}{#3}{#4}}}
\NewDocumentCommand\ketbra{omm}{\IfNoValueTF{#1}{\@ketbra*{#2}{#3}}{\@ketbra[#1]{#2}{#3}}}

\NewDocumentCommand\rfrac{omm}{\IfNoValueTF{#1}{\@rfrac*{#2}{#3}}{\@rfrac[#1]{#2}{#3}}}

\NewDocumentCommand\eval{omO{}O{}}{\IfNoValueTF{#1}{\@eval*{#2}{#3}{#4}}{\@eval[#1]{#2}{#3}{#4}}}

\NewDocumentCommand\set{omO{}}{\IfNoValueTF{#1}{\@set*{#2}{#3}}{\@set[#1]{#2}{#3}}}

\def\eu{\symup{e}}
\def\iu{\symup{i}}
\def\piu{\symup{\pi}}
\def\gammau{\symup{\gamma}}

\def\coloniff{\DOTSB\;:\Longleftrightarrow\;}
\def\iffcolon{\DOTSB\;\Longleftrightarrow:\;}

\newcommand*\transpose{{\mathpalette\@transpose{}}}
\newcommand*\@transpose[1]{\raisebox{\depth}{\(\m@th#1\intercal\)}}

\DeclareDerivative{\fdv}{\symup{\delta}}
\DeclareDerivative{\adv}{\symup{\Delta}}
\DeclareDifferential{\fdif}{\symup{\delta}}
\DeclareDifferential{\adif}{\symup{\Delta}}

\RequirePackage{booktabs}
\RequirePackage{multirow}

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
    \hskip -\arraycolsep
    \let\@ifnextchar\new@ifnextchar
    \array{#1}%
}

\RenewExpandableDocumentCommand\cline{d()m}{\IfNoValueTF{#1}{\@cline#2\@nil}{\addlinespace[0ex]\cmidrule[\arrayrulewidth](#1){#2}\addlinespace[-\belowrulesep]}}

\NewExpandableDocumentCommand\matrixcell{mmO{c}m}{\multicolumn{#1}{#3}{\multirow{#2}{*}{\scalebox{\ifnum#1>#2 #2\else#1\fi}{\scalebox{\ifnum#1=\@ne \@ne\else\ifnum#2=\@ne \@ne\else0.5\fi\fi}{\(#4\)}}}}}

\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{lemma}{Lemma}[chapter]
\newtheorem{corollary}{Corollary}[chapter]

\theoremstyle{definition}
\newtheorem{definition}{Definition}[chapter]
\newtheorem{example}{Example}[chapter]

\theoremstyle{remark}
\newtheorem{remark}{Remark}[chapter]
\newtheorem{remarks}[remark]{Remarks}
\newtheorem{note}{Note}[chapter]
\newtheorem{notes}[note]{Notes}
\newtheorem*{remark*}{Remark}
\newtheorem*{remarks*}{Remarks}
\newtheorem*{note*}{Note}
\newtheorem*{notes*}{Notes}

\newcommand*\hint[1]{\textit{Hint}: #1}

\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage[inline]{enumitem}

\setlist[enumerate, 1]{label = (\arabic*)}
\setlist[enumerate, 2]{label = (\alph*), ref = (\alph*)}
\setlist[enumerate, 3]{label = (\roman*), ref = (\roman*)}
\setlist[enumerate, 4]{label = (\Alph*), ref = (\Alph*)}

\RequirePackage{fontspec}

\defaultfontfeatures{Renderer = HarfBuzz}

\setmainfont{NewCM10}[
    UprightFont     = *-Book,
    BoldFont        = *-Bold,
    ItalicFont      = *-BookItalic,
    BoldItalicFont  = *-BoldItalic
]
\setsansfont{NewCMSans10}[
    UprightFont     = *-Book,
    BoldFont        = *-Bold,
    ItalicFont      = *-BookOblique,
    BoldItalicFont  = *-BoldOblique
]
\setmonofont{NewCMMono10}[
    UprightFont     = *-Book,
    BoldFont        = *-Bold,
    ItalicFont      = *-BookItalic,
    BoldItalicFont  = *-BoldOblique
]

\RequirePackage{unicode-math}

\unimathsetup{
    math-style      = ISO,
    bold-style      = ISO,
    nabla           = italic,
    partial         = upright,
    warnings-off    = {mathtools-colon, mathtools-overbracket}
}

\setmathfont{NewCMMath-Book}[StylisticSet = 2]
\setmathfont{NewCMMath-Book}[StylisticSet = 3, range = bb]
\setmathfont{NewCMMath-Book}[StylisticSet = 1, range = {scr, bfscr}]

\mathchardef\stdcomma=\mathcode`,
\mathchardef\stdsemicolon=\mathcode`;
\mathcode`,="8000
\mathcode`;="8000
\begingroup\lccode`~=`, \lowercase{\endgroup\def~}{\stdcomma\,}
\begingroup\lccode`~=`; \lowercase{\endgroup\def~}{\stdsemicolon\,}

\RequirePackage{hyperref}

\endinput

