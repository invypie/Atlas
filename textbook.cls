\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{textbook}

\chardef\f@@r=4
\chardef\f@v@=5

\LoadClass[a4paper]{amsbook}

\numberwithin{section}{chapter}
\numberwithin{equation}{chapter}
\numberwithin{figure}{chapter}
\numberwithin{table}{chapter}

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

\DeclareMathOperator{\Im}{Im}
\DeclareMathOperator{\Re}{Re}

\DeclareMathOperator{\card}{card}

\DeclareMathOperator{\diag}{diag}

\DeclareMathOperator{\im}{im}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\spn}{span}
\DeclareMathOperator{\tr}{tr}

\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Hom}{Hom}

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

\DeclarePairedDelimiterX\oldabs[1]\lvert\rvert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldnorm[1]\lVert\rVert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldfloor[1]\lfloor\rfloor{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldceil[1]\lceil\rceil{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldnint[1]\lfloor\rceil{\ifblank{#1}{\:\cdot\:}{#1}}

\DeclarePairedDelimiter\oldbra\langle\rvert
\DeclarePairedDelimiter\oldket\lvert\rangle
\DeclarePairedDelimiterX\oldbraket[3]\langle\rangle{\ifblank{#2}{#1\delimsize\vert\mathopen{}#3}{#1\delimsize\vert\mathopen{}#2\delimsize\vert\mathopen{}#3}}
\DeclarePairedDelimiterX\oldketbra[2]\lvert\rvert{#1\delimsize\rangle\delimsize\langle\mathopen{}#2}

\DeclarePairedDelimiterX\oldrfrac[2]..{#1\delimsize\slash\mathopen{}#2}

\DeclarePairedDelimiterXPP\oldeval[3]{}.\rvert{\ifblank{#2}{}{_{#2}}\ifblank{#3}{}{^{#3}}}{#1}

\DeclarePairedDelimiterX\oldset[2]\lbrace\rbrace{\ifblank{#2}{#1}{#1\:\delimsize\vert\:\mathopen{}#2}}

\NewDocumentCommand\abs{O{}o}{\IfNoValueTF{#2}{\oldabs*{#1}}{\oldabs[#1]{#2}}}
\NewDocumentCommand\norm{O{}o}{\IfNoValueTF{#2}{\oldnorm*{#1}}{\oldnorm[#1]{#2}}}
\NewDocumentCommand\floor{O{}o}{\IfNoValueTF{#2}{\oldfloor*{#1}}{\oldfloor[#1]{#2}}}
\NewDocumentCommand\ceil{O{}o}{\IfNoValueTF{#2}{\oldceil*{#1}}{\oldceil[#1]{#2}}}
\NewDocumentCommand\nint{O{}o}{\IfNoValueTF{#2}{\oldnint*{#1}}{\oldnint[#1]{#2}}}

\NewDocumentCommand\bra{om}{\IfNoValueTF{#1}{\oldbra*{#2}}{\oldbra[#1]{#2}}}
\NewDocumentCommand\ket{om}{\IfNoValueTF{#1}{\oldket*{#2}}{\oldket[#1]{#2}}}
\NewDocumentCommand\braket{omO{}m}{\IfNoValueTF{#1}{\oldbraket*{#2}{#3}{#4}}{\oldbraket[#1]{#2}{#3}{#4}}}
\NewDocumentCommand\ketbra{omm}{\IfNoValueTF{#1}{\oldketbra*{#2}{#3}}{\oldketbra[#1]{#2}{#3}}}

\NewDocumentCommand\rfrac{omm}{\IfNoValueTF{#1}{\oldrfrac*{#2}{#3}}{\oldrfrac[#1]{#2}{#3}}}

\NewDocumentCommand\eval{omO{}O{}}{\IfNoValueTF{#1}{\oldeval*{#2}{#3}{#4}}{\oldeval[#1]{#2}{#3}{#4}}}

\NewDocumentCommand\set{omO{}}{\IfNoValueTF{#1}{\oldset*{#2}{#3}}{\oldset[#1]{#2}{#3}}}

\def\eu{\symup{e}}
\def\iu{\symup{i}}
\def\piu{\symup{\pi}}
\def\gammau{\symup{\gamma}}

\def\coloniff{\DOTSB\;:\Longleftrightarrow\;}
\def\iffcolon{\DOTSB\;\Longleftrightarrow:\;}

\RequirePackage{booktabs}
\RequirePackage{multirow}

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
    \hskip -\arraycolsep
    \let\@ifnextchar\new@ifnextchar
    \array{#1}%
}

\RenewExpandableDocumentCommand\cline{d()m}{\IfNoValueTF{#1}{\@cline#2\@nil}{\addlinespace[0ex]\cmidrule[\arrayrulewidth](#1){#2}\addlinespace[-\belowrulesep]}}

\NewExpandableDocumentCommand\matrixcell{mmO{c}m}{\multicolumn{#1}{#3}{\multirow{#2}{*}{\scalebox{\ifnum#1>#2 #2\else#1\fi}{\scalebox{\ifnum#1=\@ne \@ne\else\ifnum#2=\@ne \@ne\else0.5\fi\fi}{\(#4\)}}}}}

\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}

\theoremstyle{definition}
\newtheorem{definition}{Definition}
\newtheorem{example}{Example}

\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage[inline]{enumitem}

\setlist[enumerate, 1]{label = (\arabic*)}

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

% \setmainfont{STIXTwoText}

\RequirePackage{unicode-math}

\unimathsetup{
    math-style      = ISO,
    bold-style      = ISO,
    partial         = upright,
    warnings-off    = {mathtools-colon, mathtools-overbracket}
}

\setmathfont{NewCMMath-Book}[StylisticSet = 2]
\setmathfont{NewCMMath-Book}[StylisticSet = 3, range = bb]
\setmathfont{NewCMMath-Book}[StylisticSet = 1, range = {scr, bfscr}]

% \setmathfont{STIXTwoMath}[StylisticSet = 8]
% \setmathfont{STIXTwoMath}[StylisticSet = 1, range = {scr, bfscr}]

\RequirePackage{hyperref}

\endinput
