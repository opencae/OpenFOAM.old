%%
%% `OFbook.cls'
%%
%% このドキュメントクラスは，
%%
%% ページ・エンタープライゼズ（株），
%% \LaTeXe 【マクロ\&クラス】プログラミング基礎解説．
%% 技術評論社，2002．
%%
%% で紹介されている `sample.cls' をもとに，
%% OpenFOAMユーザガイド和訳用に改変したものである．
%%
\NeedsTeXFormat{pLaTeX2e}[2000/11/03]
\ProvidesClass{OFbook}
  [2009/06/17 v1.00 document class for OpenFOAM User Guide translated into Japanese]
\RequirePackage{keyval}
\newif\if@mainmatter \@mainmattertrue
\hour\time \divide\hour by 60\relax
\@tempcnta\hour \multiply\@tempcnta 60\relax
\minute\time \advance\minute-\@tempcnta
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{tombow}{%
        \tombowtrue \tombowdatetrue
        \setlength{\@tombowwidth}{.1\p@}%
        \@bannertoken{%
                \jobname\space:%
                \space\number\year/\two@digits\month/\two@digits\day
                (\two@digits\hour:\two@digits\minute)}
        \maketombowbox}
\DeclareOption{notombow}{\tombowfalse}
\DeclareOption{oneside}{\@twosidefalse}
\DeclareOption{twoside}{\@twosidetrue}
\ExecuteOptions{final,notombow,twoside}
\ProcessOptions\relax
\DeclareFontShape{JY1}{mc}{m}{n}{<-> jis}{}
\DeclareFontShape{JY1}{gt}{m}{n}{<-> jisg}{}
\prebreakpenalty\jis"2147=10000      % 5000   ’
\postbreakpenalty\jis"2148=10000     % 5000   “
\prebreakpenalty\jis"2149=10000      % 5000   ”
\xspcode`+=3
\xspcode`\%=3
\DeclareFontShape{OT1}{cmr}{m}{n}
        {<-6>   cmr5 <6-7>   cmr6  <7-8>   cmr7  <8-9> cmr8
         <9-10> cmr9 <10-12> cmr10 <12-17> cmr12 <17-> cmr17}{}
\DeclareFontShape{OT1}{cmr}{m}{sl}
        {<-9> cmsl8 <9-10>cmsl9 <10-12> cmsl10 <12->cmsl12}{}
\DeclareFontShape{OT1}{cmr}{m}{it}
        {<-8>    cmti7  <8-9> cmti8 <9-10> cmti9
         <10-12> cmti10 <12-> cmti12}{}
\DeclareFontShape{OT1}{cmr}{m}{sc}{<-> cmcsc10}{}
\DeclareFontShape{OT1}{cmr}{m}{ui}{<-> cmu10}{}
\DeclareFontShape{OT1}{cmr}{b}{n}{<-> cmb10}{}
\DeclareFontShape{OT1}{cmr}{bx}{n}
        {<-6>   cmbx5 <6-7>   cmbx6  <7-8> cmbx7
         <8-10> cmbx9 <10-12> cmbx10 <12-> cmbx12}{}
\DeclareFontShape{OT1}{cmr}{bx}{sl}{<-> cmbxsl10}{}
\DeclareFontShape{OT1}{cmr}{bx}{it}{<-> cmbxit10}{}
\DeclareFontShape{OT1}{cmr}{bx}{ui}{<-> sub*cmr/m/ui}{}
\DeclareFontShape{OT1}{cmss}{m}{n}
        {<-9>    cmss8  <9-10> cmss9 <10-12> cmss10
         <12-17> cmss12 <17->  cmss17}{}
\DeclareFontShape{OT1}{cmss}{m}{it}{<-> sub*cmss/m/sl}{}
\DeclareFontShape{OT1}{cmss}{m}{sl}
        {<-9>    cmssi8  <9-10> cmssi9  <10-12> cmssi10
         <12-17> cmssi12 <17->  cmssi17}{}
\DeclareFontShape{OT1}{cmss}{m}{sc}{<-> sub*cmr/m/sc}{}
\DeclareFontShape{OT1}{cmss}{m}{ui}{<-> sub*cmr/m/ui}{}
\DeclareFontShape{OT1}{cmss}{sbc}{n}{<-> cmssdc10}{}
\DeclareFontShape{OT1}{cmss}{bx}{n}{<-> cmssbx10}{}
\DeclareFontShape{OT1}{cmss}{bx}{ui}{<-> sub*cmr/bx/ui}{}
\DeclareFontShape{OT1}{cmtt}{m}{n}
        {<-9> cmtt8 <9-10> cmtt9 <10-12> cmtt10 <12-> cmtt12}{}
\DeclareFontShape{OT1}{cmtt}{m}{it}{<-> cmitt10}{}
\DeclareFontShape{OT1}{cmtt}{m}{sl}{<-> cmsltt10}{}
\DeclareFontShape{OT1}{cmtt}{m}{sc}{<-> cmtcsc10}{}
\DeclareFontShape{OT1}{cmtt}{m}{ui}{<-> ssub*cmtt/m/it}{}
\DeclareFontShape{OT1}{cmtt}{bx}{n}{<-> ssub*cmtt/m/n}{}
\DeclareFontShape{OT1}{cmtt}{bx}{it}{<-> ssub*cmtt/m/it}{}
\DeclareFontShape{OT1}{cmtt}{bx}{ui}{<-> ssub*cmtt/m/it}{}
\DeclareFontShape{OML}{cmm}{m}{it}%
        {<-6>  cmmi5 <6-7>  cmmi6  <7-8> cmmi7
         <8-9> cmmi8 <9-12> cmmi10 <12-> cmmi12}{}
\DeclareFontShape{OML}{cmm}{b}{it}
        {<-6>  cmmib5 <6-7>  cmmib6  <7-8> cmmib7
         <8-9> cmmib8 <9-10> cmmib9 <10-> cmmib10}{}
\DeclareFontShape{OML}{cmm}{bx}{it}{<-> ssub*smm/b/it}{}
\DeclareFontShape{OMS}{cmsy}{m}{n}
        {<-6>  cmsy5 <6-7>  cmsy6  <7-8> cmsy7
         <8-9> cmsy8 <9-10> cmsy9 <10-> cmsy10}{}
\DeclareFontShape{OMS}{cmsy}{b}{n}
        {<-6>  cmbsy5 <6-7>  cmbsy6  <7-8> cmbsy7
         <8-9> cmbsy8 <9-10> cmbsy9 <10-> cmbsy10}{}
\def\textmc#1{\relax\ifmmode\hbox\fi{\mcfamily #1}}
\def\textgt#1{\relax\ifmmode\hbox\fi{\gtfamily #1}}
\def\@{\spacefactor3000\space}
\def\normalsize{%
        \@setfontsize\normalsize\@xipt{17}%
        \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
        \abovedisplayshortskip \z@ \@plus3\p@
        \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
        \belowdisplayskip \abovedisplayskip
        \let\@listi\@listI}
\normalsize
\setbox0\hbox{\char\jis"2121}%"
\setlength\Cht{\ht0}
\setlength\Cdp{\dp0}
\setlength\Cwd{\wd0}
\setlength\Cvs{\baselineskip}
\setlength\Chs{\wd0}
\def\small{%
        \@setfontsize\small\@xpt\@xiipt%
        \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
        \abovedisplayshortskip \z@ \@plus3\p@
        \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
        \belowdisplayskip \abovedisplayskip
        \def\@listi{%
                \leftmargin\leftmargini
                \topsep \z@ \parsep \z@ \itemsep\parsep}}
\def\footnotesize{%
        \@setfontsize\footnotesize\@ixpt{11}%
        \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
        \abovedisplayshortskip \z@ \@plus\p@
        \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
        \belowdisplayskip \abovedisplayskip
        \def\@listi{%
                \leftmargin\leftmargini
                \topsep \z@ \parsep \z@ \itemsep\parsep}}
\def\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\def\tiny{\@setfontsize\tiny\@vipt\@viipt}
\def\large{\@setfontsize\large\@xiipt{17}}
\def\Large{\@setfontsize\Large\@xivpt{21}}
\def\LARGE{\@setfontsize\LARGE\@xviipt{25}}
\def\huge{\@setfontsize\huge\@xxpt{28}}
\def\Huge{\@setfontsize\Huge\@xxvpt{33}}
\def\HUGE{\@setfontsize\HUGE{30}{40}}
\paperheight297mm
\paperwidth210mm
\hoffset\z@ \voffset\z@
\textwidth 42\Cwd
\marginparwidth\z@ \marginparsep\z@
\oddsidemargin\paperwidth
\advance\oddsidemargin by-\textwidth
\oddsidemargin.6\oddsidemargin
\advance\oddsidemargin by-1in
\evensidemargin\paperwidth
\advance\evensidemargin by-\textwidth
\advance\evensidemargin by-2in
\advance\evensidemargin by-\oddsidemargin
\topskip\Cht
\headheight12\p@
\footskip27\p@
\headsep20\p@
\textheight39\baselineskip
\advance\textheight by\topskip
\advance\textheight by\baselineskip
\topmargin\paperheight
\advance\topmargin by-\textheight
\topmargin.5\topmargin
\advance\topmargin by-1in
\advance\topmargin by-\headheight
\advance\topmargin by-\headsep
\footnotesep6.65\p@ % 脚注間は行間隔とほぼ同じ
\@tempdima\baselineskip
\advance\@tempdima by-\Cht
\skip\footins\@tempdima % 行間のアキ程度
\skip\@mpfootins\@tempdima % 本文の脚注と同じに
\floatsep\@tempdima \@plus 2\p@ \@minus\p@ % 行間のアキと少しの伸縮
\textfloatsep\@tempdima \@plus 2\p@ \@minus\p@
\intextsep\@tempdima plus 2\p@ minus\p@
\@fptop\z@ \@plus 1fil
\@fpsep\z@ \@plus 1fil
\@fpbot\z@ \@plus 1fil
\setcounter{topnumber}{2}% 残りは jbook.cls の設定と同様
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{3}
\def\topfraction{.8}
\def\bottomfraction{.8}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\partopsep\z@
\parskip\z@
\parindent1zw
\lineskip\p@
\normallineskip\p@
\def\baselinestretch{}
\@lowpenalty51
\@medpenalty151
\@highpenalty301
\fboxsep3\p@
\fboxrule.4\p@
\def\ps@plain{%
        \let\@mkboth\@gobbletwo
        \let\ps@jpl@in\ps@plain
        \let\@oddhead\@empty
        \let\@oddfoot\@empty
        \let\@evenhead\@oddhead
        \let\@evenfoot\@oddfoot}
\let\ps@jpl@in\ps@plain
\def\ps@headings{%
        \let\ps@jpl@in\ps@plain
        \let\@mkboth\markboth
        \def\@oddhead{\small
                \underline{\hbox to \textwidth{\autoxspacing
                \rightmark\hfil\thepage}}}%
        \def\@oddfoot{\vbox{\hrulefill\vskip.1\baselineskip\small\hfill\OpenFOAM-\@version}}%
        \def\@evenhead{\small
                \underline{\hbox to \textwidth{\autoxspacing
                \thepage\hfil\leftmark}}}%
        \def\@evenfoot{\vbox{\hrulefill\vskip.1\baselineskip\small\OpenFOAM-\@version\hfill}}%
        \def\chaptermark##1{\markboth{%
                \@chapapp\thechapter\@chappos\hskip1zw##1}{}}%
        \def\sectionmark##1{%
                \markright{\thesection\hskip1zw##1}}}
\def\version#1{\gdef\@version{#1}}
\def\@version{\@latex@error{No \noexpand\version given}\@ehc}
\def\maketitle{%
        \cleardoublepage
        \thispagestyle{empty}%
        \setcounter{page}{1}%
        \null\vfill
        \begin{center}%
         {\fontsize{42.5\p@}{\cvs}\selectfont\sffamily\OpenFOAM\par}%
         \vskip1.5\Cvs
         {\LARGE\gtfamily\sffamily オープンソースCFDツールボックス\par}%
         \vfill
         {\LARGE\gtfamily\sffamily \@title\par}%
         \vfill
         {\large Version \@version\par}%
         {\large\@date\par}%
         \vskip\Cvs
         {\large\@author\par}%
         \vfill
        \end{center}%
        \global\let\maketitle\relax
        \global\let\@author\@empty
        \global\let\@date\@empty
        \global\let\@title\@empty
        \global\let\title\relax
        \global\let\author\relax
        \global\let\date\relax
        \global\let\and\relax
        \newpage}
\newcounter{part}
\newcounter{chapter}
\newcounter{section}[chapter]
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\def\thepart{\@Roman\c@part}
\def\thechapter{\@arabic\c@chapter}
\def\thesection{\thechapter.\@arabic\c@section}
\def\thesubsection{\thesection.\@arabic\c@subsection}
\def\thesubsubsection{%
        \thesubsection.\@arabic\c@subsubsection}
\def\@chapapp{\prechaptername}
\def\@chappos{\postchaptername}
\@addtoreset{equation}{chapter}
\def\theequation{\thechapter.\@arabic\c@equation}
\@addtoreset{footnote}{page}
\def\thefootnote{\fnsymbol{footnote}}
\long\def\@makefntext#1{% #1: <footnote text>
        \parindent1zw
        \noindent\hbox to 2zw{\hss\@makefnmark}#1}
\def\footnoterule{%
        \kern-3\p@
        \hrule width .4\columnwidth
        \kern 2.6\p@}
\def\frontmatter{%
  \clearpage
  \@mainmatterfalse}
\def\mainmatter{%
    \cleardoublepage
  \@mainmattertrue}
\def\backmatter{%
  \clearpage
  \@mainmatterfalse}
\def\part{%
        \cleardoublepage% 奇数ページ起こし
        \thispagestyle{empty}% ヘッダ・フッタなし
        \secdef\@part\@spart}
\def\@spart#1{% #1: <heading>
        \null\vskip2cm
        \begin{center}%
                \reset@font\LARGE\bfseries#1%
        \end{center}}
\def\@part[#1]#2{% #1: <optional heading>，#2: <heading>
        \refstepcounter{part}%
        \addcontentsline{toc}{part}{{\thepart}{#1}}%
        \markboth{}{}%
        \null\vskip2cm
        \begin{center}%
                \reset@font\LARGE\bfseries
                \prepartname\thepart\postpartname
                \par\vskip2\baselineskip
                \LARGE\bfseries#2%
        \end{center}}
\def\chapter{%
        \cleardoublepage
        \thispagestyle{jpl@in}%
        \global\@topnum\z@
        \@afterindenttrue
        \secdef\@chapter\@schapter}
\def\@schapter#1{% #1: <heading>
        \@makeschapterhead{#1}%
        \@afterheading}
\def\@makeschapterhead#1{%
        \hbox{}\normalsize
        \vskip2\baselineskip
        \begingroup
                \reset@font\Huge\gtfamily\sffamily\noindent#1%
        \par\endgroup
        \ifdim\prevdepth>-\@m\p@ \vskip-\prevdepth \fi
        \vskip\baselineskip}
\def\@chapter[#1]#2{% #1: <optional heading>，#2: <heading>
        \if@mainmatter
          \refstepcounter{chapter}%
          \typeout{\@chapapp\thechapter\@chappos}%
          \addcontentsline{toc}{chapter}%
            {\protect\numberline{\@chapapp\thechapter\@chappos}#1}%
        \else
          \addcontentsline{toc}{chapter}{#1}%
        \fi
                \chaptermark{#1}%
                \addtocontents{lof}{\protect\addvspace{10\p@}}%
                \addtocontents{lot}{\protect\addvspace{10\p@}}%
        \@makechapterhead{#2}%
        \@afterheading}
\def\@makechapterhead#1{%
        \hbox{}\normalsize
        \vskip2\baselineskip
        \begingroup
                {\Huge\gtfamily\sffamily\noindent\@chapapp\thechapter\@chappos}%
                \par\nobreak
                \vskip\baselineskip
                {\HUGE\gtfamily\sffamily\noindent#1}%
        \par\endgroup
        \ifdim\prevdepth>-\@m\p@ \vskip-\prevdepth \fi
        \vskip\baselineskip
        \vskip\baselineskip}
\setcounter{secnumdepth}{2}
\def\section{%
        \@startsection{section}{1}{\z@}%
        {\Cvs \@plus.5\Cdp \@minus.2\Cdp}% 前アキ
        {.5\Cvs \@plus.3\Cdp}% 後アキ
        {\Large\gtfamily\sffamily\mdseries\raggedright}}
\def\subsection{\@startsection{subsection}{2}{\z@}%
        {\Cvs \@plus.5\Cdp \@minus.2\Cdp}% 前アキ
        {.5\Cvs \@plus.3\Cdp}% 後アキ
        {\large\gtfamily\sffamily\mdseries}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}%
        {.5\Cvs \@plus.3\Cdp \@minus.2\Cdp}% 前アキ
        {1sp \@plus.3\Cdp}% 後アキ
        {\normalsize\gtfamily\sffamily\mdseries}}
\def\OFdeclaration{%
        \def\@makechapterhead##1{%
                \thispagestyle{headings}%
                \centerline{\reset@font\Large\bfseries\noindent##1}%
                \vskip.5\baselineskip}%
        \def\thesection{\@arabic\c@section}%
        \def\@seccntformat##1{\csname the##1\endcsname. }
        \def\section{%
                \@startsection{section}{1}{\z@}%
                {\Cvs \@plus.5\Cdp \@minus.2\Cdp}% 前アキ
                {.5\Cvs \@plus.3\Cdp}% 後アキ
                {\large\bfseries\raggedright}}%
        }
\def\endOFdeclaration{%
        \setcounter{chapter}{0}%
        \setcounter{section}{0}%
        }
\def\appendix{%
        \par
        \setcounter{chapter}{0}%
        \setcounter{section}{0}%
        \def\@chapapp{\appendixname}%
        \def\@chappos{\space}%
        \def\thechapter{\@Alph\c@chapter}}
\setlength\leftmargini  {3\Cwd}
\setlength\leftmarginii {2\Cwd}
\setlength\leftmarginiii{2\Cwd}
\setlength\leftmarginiv {2\Cwd}
\setlength\leftmarginv  {\Cwd}
\setlength\leftmarginvi {\Cwd}
\setlength\labelsep     {\Cwd}
\labelwidth\leftmargini \advance\labelwidth-\labelsep
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\def\@listi{%
        \leftmargin\leftmargini
        \labelwidth\leftmargini \advance\labelwidth-\labelsep
        \parsep \z@
        \topsep .5\baselineskip
        \itemsep\z@\relax}
\let\@listI\@listi
\@listI
\def\@listii{%
        \leftmargin\leftmarginii
        \labelwidth\leftmarginii \advance\labelwidth-\labelsep
        \topsep\z@ \parsep\z@ \itemsep\z@}
\def\@listiii{%
        \leftmargin\leftmarginiii
        \labelwidth\leftmarginiii \advance\labelwidth-\labelsep
        \topsep\z@ \parsep\z@ \partopsep\z@ \itemsep\z@}
\def\@listiv{%
        \leftmargin\leftmarginiv
        \labelwidth\leftmarginiv \advance\labelwidth-\labelsep}
\def\@listv{%
        \leftmargin\leftmarginv
        \labelwidth\leftmarginv \advance\labelwidth-\labelsep}
\def\@listvi{%
        \leftmargin\leftmarginvi
        \labelwidth\leftmarginvi \advance\labelwidth-\labelsep}
\def\theenumi{\@arabic\c@enumi}%      1, 2, 3, ...
\def\theenumii{\@arabic\c@enumii}%    a, b, c, ...
\def\theenumiii{\@roman\c@enumiii}%  i, ii, iii, ...
\def\theenumiv{\@Alph\c@enumiv}%    A, B, C, ...
\def\labelenumi{\theenumi.}%          1., 2., 3., ...
\def\labelenumii{(\theenumii)}%       (a), (b), (c), ...
\def\labelenumiii{\theenumiii.}%      i., ii., iii., ...
\def\labelenumiv{\theenumiv.}%        A., B., C., ...
\def\p@enumi{}%                       デフォルトのまま
\def\p@enumii{\theenumi}
\def\p@enumiii{\theenumi(\theenumii)}
\def\p@enumiv{\p@enumiii\theenumiii}
\def\enumerate{%
        \ifnum \@enumdepth>\thr@@
                \toodeep
        \else
                \advance\@enumdepth\@ne
                \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
                \list{\csname label\@enumctr\endcsname}%
                        {\usecounter{\@enumctr}%
                         \def\makelabel##1{\hss\llap{##1}}}%
        \fi}
\def\endenumerate{\endlist}
\def\labelitemi{\textbullet}
\def\labelitemii{{\normalfont\bfseries\textendash}}
\def\labelitemiii{\textasteriskcentered}
\def\labelitemiv{\textperiodcentered}
\def\itemize{%
        \ifnum \@itemdepth>\thr@@
                \@toodeep
        \else
                \advance\@itemdepth\@ne
                \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
                \expandafter\list\csname\@itemitem\endcsname
                        {\def\makelabel##1{\hss\llap{##1}}}%
        \fi}
\def\enditemize{\endlist}
\def\description{%
        \list{}{%
                \labelwidth\z@
                \itemindent-\leftmargin
                \let\makelabel\descriptionlabel}}
\def\enddescription{\endlist}
\def\descriptionlabel#1{%
        \hspace\labelsep\normalfont\gtfamily\sffamily\mdseries #1}
\def\verse{%
        \let\\\@centercr
        \list{}{%
                \itemsep\z@ \itemindent -2zw
                \listparindent\itemindent
                \rightmargin\leftmargin \advance\leftmargin 2zw}%
        \item\relax}
\def\endverse{\endlist}
\def\quotation{%
        \list{}{%
                \listparindent 1zw
                \itemindent\listparindent
                \rightmargin\z@
                \parsep\z@ \@plus\p@}%
        \item\relax}
\def\endquotation{\endlist}
\def\quote{%
        \list{}{}%
        \item\relax}
\def\endquote{\endlist}
\newcounter{figure}[chapter]
\def\thefigure{\thechapter.\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreak\thefigure}
\def\figure{\@float{figure}}
\def\endfigure{\end@float}
\newcounter{table}[chapter]
\def\thetable{\thechapter.\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreak\thetable}
\def\table{\@float{table}}
\def\endtable{\end@float}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\abovecaptionskip5\p@
\belowcaptionskip5\p@
\long\def\@makecaption#1#2{
        \reset@font\small
        \advance\leftskip20\p@
        \advance\rightskip20\p@
        \vskip\abovecaptionskip
        \sbox\@tempboxa{#1\hskip1zw\relax #2}%
        \ifdim \wd\@tempboxa <\hsize \centering \fi
        #1\hskip1zw\relax #2\par
        \vskip\belowcaptionskip}
\arraycolsep5\p@
\tabcolsep6\p@
\arrayrulewidth.4\p@
\doublerulesep2\p@
\tabbingsep\labelsep
\newif\if@verb@linenum
\newcount\@verb@linenum
\define@key{OFv}{linenum}[\@ne]{%
   \@verb@linenumtrue
   \@verb@linenum#1
   \advance\@verb@linenum-\@ne}%
\def\@verb@linenum@font{\normalfont\tiny}
\define@key{OFv}{baselinestretch}{\def\baselinestretch{#1}}%
\define@key{OFv}{leftskip}{\advance\leftskip#1}%
\define@key{OFv}{weight}{\def\@verb@font@weight{#1}}%
\def\@verb@font@weight{\normalsize}%
\newif\if@verb@visiblespace
\define@key{OFv}{visiblespace}[true]{%
   \@nameuse{@verb@visiblespace#1}}%
\define@key{OFv}{terminal}[]{%
   \@verb@linenumfalse
   \def\@verb@font@weight{\normalsize}%
   \def\baselinestretch{0.8}%
   \advance\leftskip3em}%
\define@key{OFv}{file}[]{%
   \def\@verb@font@weight{\small}%
   \def\baselinestretch{0.8}%
   \advance\leftskip2em}%
\def\OFverbatim{%
   \begingroup
   \trivlist\item\relax
   \leftskip\@totalleftmargin \rightskip\z@skip
   \parindent\z@\parfillskip\@flushglue\parskip\z@skip
   \@@par
   \@tempswafalse
   \def\par{%
     \if@tempswa
       \leavevmode \null \@@par\penalty\interlinepenalty
     \else
       \@tempswatrue
       \ifhmode\@@par\penalty\interlinepenalty\fi
     \fi}%
   \obeylines \verbatim@font
   \@verb@checkoption}
\def\endOFverbatim{%
   \endtrivlist
   \endgroup
   \noindent}
\def\@verb@checkoption{\@testopt\@verb@checkoption@{}}
\begingroup
\catcode`\^^M=\active%
\gdef\@verb@checkoption@[#1]#2^^M{%
   \setkeys{OFv}{#1}%
   \@verb@font@weight
   \def\@verb@space{\if@verb@visiblespace\@xxxii\else\ \fi}%
   \let\do\@makeother \dospecials
   \@verb@loop}%
\endgroup%
\begingroup
\catcode`\^^M=\active%
\catcode`\{=12 \catcode`\}=12 \catcode`\[=1%
\catcode`\]=2  \catcode`\|=0  \catcode`\\=12%
|gdef|@verb@loop#1^^M[%
   |@verb@checkend#1\end{OFverbatim}|@nil%
   |ifx|@verb@left|@empty%
      |@verb@put@line%
      |def|@tempa[|@verb@loop]%
   |else%
      |ifx|@verb@currline|@empty|else |@verb@put@line |fi%
      |def|@tempa[|end[OFverbatim]]%
   |fi%
   |@tempa]%
|gdef|@verb@checkend#1\end{OFverbatim}#2|@nil[%
   |def|@verb@currline[#1]%
   |def|@verb@left[#2]]%
|endgroup%
\newcount\@verb@currpos
\def\@verb@put@line{%
   \noindent \@verb@currpos\z@
   \if@verb@linenum
      \advance\@verb@linenum\@ne
      \expandafter\@verb@put@line@num
   \fi
   \expandafter\@verb@put@line@loop\@verb@currline\@nnil
   \par}
\def\@verb@put@line@num{%
   \llap{%
      \@verb@linenum@font
      \the\@verb@linenum
      \hskip\Cwd}}
\def\@verb@put@line@loop#1{%
   \ifx#1\@nnil\else
      \count@=`#1\relax
      \ifnum `\ =\count@   {\@verb@space}%
      \else                {#1}%
      \fi
      \advance\@verb@currpos\@ne
      \expandafter\@verb@put@line@loop
   \fi}
\def\@pnumwidth{1zw}
\def\@tocrmarg{3zw}
\newdimen\@lnumwidth
\def\toclineskip{\z@ \@plus \z@ \@minus \z@}
\setcounter{tocdepth}{2}
\def\tableofcontents{%
        \chapter*{\contentsname}%
        \@mkboth{\contentsname}{}%
        \addcontentsline{toc}{chapter}{\contentsname}%
        \@starttoc{toc}}
\def\l@part#1#2{% #1: {<number>}{<title>}，#2: <page>
        \addpenalty{-\@highpenalty}%
        \addvspace{\baselineskip}%
        \begingroup
        \parindent\z@
        \rightskip\@pnumwidth
        \parfillskip-\rightskip
        {\edef\part@num{\@firstoftwo#1\@empty\@empty}%
        \protected@edef\part@name{\@secondoftwo#1\@empty\@empty}%
        \leavevmode\large\gtfamily\sffamily\mdseries
        \@lnumwidth=4zw
        \interlinepenalty\@M
        \leftskip\@lnumwidth \advance\leftskip 1zw
        \hskip-\leftskip
        \hbox to\@lnumwidth{%
                \prepartname\hss\part@num\hss\postpartname}%
        \hskip 1zw
        \part@name\nobreak\hfil\nobreak
        \hbox to\@pnumwidth{\hss#2}%
        \par}%
        \nobreak
        \global\@nobreaktrue
        \everypar{\global\@nobreakfalse\everypar{}}%
        \endgroup}
\def\numberline#1{\hbox to\@lnumwidth{#1\hfil}}
\def\l@chapter#1#2{%
        \addpenalty{-\@highpenalty}%
        \addvspace{.5\baselineskip}%
        \begingroup
        \parindent\z@
        \rightskip\@pnumwidth
        \parfillskip-\rightskip
        \leavevmode\gtfamily\sffamily\mdseries
        \setlength\@lnumwidth{4zw}%
        \interlinepenalty\@M
        \advance\leftskip\@lnumwidth \hskip-\leftskip
        #1\nobreak\hfil\nobreak\hbox to\@pnumwidth{\hss#2}\par
        \penalty\@highpenalty
        \endgroup}
\def\l@section       {\@dottedtocline{1}{1zw}{2zw}}
\def\l@subsection    {\@dottedtocline{2}{3zw}{3zw}}
\def\l@subsubsection {\@dottedtocline{3}{6zw}{4zw}}
\def\@dottedtocline#1#2#3#4#5{%
        \ifnum #1>\c@tocdepth \else
                \vskip\toclineskip\relax
                {\leftskip#2\relax
                 \rightskip\@tocrmarg
                 \parfillskip-\rightskip
                 \parindent#2\relax
                 \@afterindenttrue
                 \interlinepenalty\@M
                 \leavevmode
                 \@lnumwidth#3\relax
                 \advance\leftskip\@lnumwidth
                 \hbox{}%
                 \hskip-\leftskip
                 {#4}\nobreak
                 \leaders\hbox to1zw{\hss$\cdot$\hss}\hfill\nobreak
                 \hbox to\@pnumwidth{%
                         \hss\reset@font\rmfamily \normalcolor #5}%
                 \par}%
        \fi}
\def\listoffigures{%
        \chapter*{\listfigurename}%
        \@mkboth{\listfigurename}{}%
        \@starttoc{lof}}
\def\l@figure{\@dottedtocline{1}{1zw}{2zw}}
\def\listoftables{%
        \chapter*{\listtablename}%
        \@mkboth{\listtablename}{}%
        \@starttoc{lot}}
\let\l@table\l@figure
\let\newblock\space
\def\thebibliography#1{%
        \chapter*{\bibname}
        \@mkboth{\bibname}{}%
        \addcontentsline{toc}{chapter}{\bibname}%
        \list{\@biblabel{\theenumiv}}%
                {\settowidth\labelwidth{\@biblabel{#1}}%
                 \leftmargin\labelwidth
                 \advance\leftmargin\labelsep
                 \usecounter{enumiv}%
                 \let\p@enumiv\@empty
                 \def\theenumiv{\@arabic\c@enumiv}}%
        \sloppy
        \clubpenalty4000
        \@clubpenalty\clubpenalty
        \widowpenalty4000
        \sfcode`\.\@m}
\def\endthebibliography{%
        \def\@noitemerr{%
                \@latex@warning{Empty `thebibliography' environment}}%
        \endlist}
\def\@biblabel#1{[#1]}
\def\theindex{%
        \clearpage
        \columnseprule\z@ \columnsep2zw
        \twocolumn[\@makeschapterhead{\indexname}]%
        \@mkboth{\indexname}{}%
        \addcontentsline{toc}{chapter}{\indexname}%
        \thispagestyle{jpl@in}%
        \small
        \parindent\z@
        \parskip\z@\relax
        \let\item\@idxitem}
\def\endtheindex{\onecolumn}
\def\@idxitem{\par\hangindent 4zw}
\def\subitem{\@idxitem \hspace*{2zw}}
\def\subsubitem{\@idxitem \hspace*{3zw}}
\def\indexspace{\par\vskip\baselineskip}
\def\prepartname{第}
\def\postpartname{部}
\def\prechaptername{第}
\def\postchaptername{章}
\def\contentsname{目次}
\def\listfigurename{図目次}
\def\listtablename{表目次}
\def\bibname{参考文献}
\def\indexname{索引}
\def\figurename{図}
\def\tablename{表}
\def\appendixname{付録}
\def\today{%
  \number\year 年
  \number\month 月
  \number\day 日
}
\pagestyle{headings}
\pagenumbering{arabic}
\raggedbottom
\onecolumn
\endinput
%%
%% End of file.
