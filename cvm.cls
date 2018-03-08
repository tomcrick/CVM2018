\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CVM}[2012/02/10 v0.1 CVM LaTeX English template class]
\LoadClass[10pt,twocolumn,twoside,journal]{article}
\RequirePackage{ifthen}
\usepackage{flushend}
\usepackage{graphicx}
\usepackage[papersize={216mm,285mm},textheight=234mm,left=21mm, right=21mm, top=27mm, columnsep=5.5mm,footskip=9mm]{geometry}
\usepackage[misc]{ifsym}
\usepackage{footmisc}
\usepackage{enumitem}
\usepackage{subfigure}
\usepackage{url}
\usepackage{multirow}
\usepackage[noadjust]{cite}
\usepackage[numbers,sort&compress]{natbib}
\usepackage{amsmath,amsthm}
\usepackage{amssymb,amsfonts}
\usepackage{booktabs}
\usepackage{color}
\usepackage{booktabs}
\usepackage{float}
\usepackage{fancyhdr}
\usepackage{xcolor,stfloats}
\usepackage{comment}
\usepackage{cuted}  %flushend,
\usepackage{epstopdf}
\usepackage{multicol}
\usepackage{algorithmic}
\usepackage{algorithm}



%\usepackage{CJK}      %
%\usepackage[lite,subscriptcorrection,slantedGreek,nofontinfo]{mtpro2}
%\usepackage{times}    %
\RequirePackage{picins}
\RequirePackage{ccaption}
\RequirePackage{calc}


\usepackage[small,bf]{caption}

\setlength{\abovedisplayskip}{2pt plus 1pt minus 1pt}
\setlength{\belowdisplayskip}{3pt plus 2pt minus 2pt}

\setlength{\doublerulesep}{0.5pt}

%%
\renewcommand{\baselinestretch}{1.14}
\renewcommand{\arraystretch}{1.06}
%
%
\newlength\cvm@linespace
\newcommand{\cvm@choosefont}[3]{%
   \setlength{\cvm@linespace}{#1*\real{\baselinestretch}}%
   \fontsize{#1}{\cvm@linespace plus#2 minus #3}\selectfont}
%
% 1 in = 72 bp = 72.27 pt

\newcommand\zihao[1]{%
   \ifthenelse{\equal{#1}{0}}{%
       \cvm@choosefont{42bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{0-}}{%
       \cvm@choosefont{36bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{1}}{%
       \cvm@choosefont{26bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{1-}}{%
       \cvm@choosefont{24bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{2}}{%
       \cvm@choosefont{22bp}{.5pt}{.3pt}}{}%
   \ifthenelse{\equal{#1}{2-}}{%
       \cvm@choosefont{18bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{3}}{%
       \cvm@choosefont{16bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{3-}}{%
       \cvm@choosefont{15bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{4}}{%
       \cvm@choosefont{14bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{4-}}{%
       \cvm@choosefont{12bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{5}}{%
       \cvm@choosefont{10.5bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{5--}}{%
       \cvm@choosefont{10bp}{.3pt}{.2pt}}{}%
   \ifthenelse{\equal{#1}{5-}}{%
       \cvm@choosefont{9bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{6}}{%
       \cvm@choosefont{7.5bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{6-}}{%
       \cvm@choosefont{6.5bp}{.2pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{7}}{%
       \cvm@choosefont{5.5bp}{.1pt}{.1pt}}{}%
   \ifthenelse{\equal{#1}{8}}{%
       \cvm@choosefont{5bp}{.1pt}{.1pt}}{}}
%
%%----- Redefine \tiny \scriptsize \footnotesize\small ----------%%
%%-------------------------\normalsize --------------------------%%
%%---------------\large \Large \LARGE \huge \Huge ---------------%%
%% Refer to ctex
\def\tiny{\zihao{7-}}
\def\scriptsize{\zihao{7}}
\def\footnotesize{\zihao{6-}}
\def\small{\zihao{6}}
\def\normalsize{\zihao{5-}}%
\def\large{\zihao{5}}%
\def\Large{\zihao{4}}%
\def\LARGE{\zihao{3}}%
\def\huge{\zihao{2-}}%
\def\Huge{\zihao{1-}}%
\def\CVMproof{\@ifnextchar[{\@CVMproof}{\@CVMproof[\CVMproofname]}}
\def\@CVMproof[#1]{\par\noindent\hspace{1em}{\textbf #1{\quad}}}
\def\endCVMproof{\hspace*{\fill}~$\blacksquare$\par}
\def\CVMproofname{Proof}
\AtBeginDocument{\def\proof{\@CVMlegacywarn{proof}{CVMproof}\CVMproof}\def\endproof{\endCVMproof}}




\normalsize  %make \baselinestretch take affect
%\renewcommand{\@biblabel}[1]{#1}
\let\@afterindentfalse\@afterindenttrue\@afterindenttrue
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa, #2\fi}]}}
\setlength{\footnotesep}{0pt}
\def\footnoterule{\kern-10\p@ \hrule width .4\columnwidth height 0.4pt \kern 6.6\p@}
%
%%-------- maketitle --------%%
%
%
\renewcommand{\title}[1]{\gdef\cvm@title{{\huge\bf #1}}}
\renewcommand{\author}[1]{\gdef\cvm@author{{\normalsize #1}}}
%\renewcommand{\address}[1]{\gdef\cvm@address{{\footnotesize\it#1}}}
%\newcommand{\email}[1]{\gdef\cvm@email{{\centering\footnotesize (E-mail: #1)}}}
\renewcommand{\abstract}[1]{\gdef\CVM@abstract{{\noindent\small {\bf Abstract}\quad #1}}}
\newcommand{\keyword}[1]{\gdef\CVM@keyword{{\noindent\small {\bf Key words}\quad #1}}}
\newcommand{\doi}[1]{\gdef\CVM@doi{{\noindent\small {\bf DOI}\quad #1}}}
%
%
\renewcommand{\maketitle}{\par
 \begingroup
  \def\thefootnote{}%  the \thanks{} mark type is empty
  \def\footnotemark{}% and kill space from \thanks within author
   \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
   \long\def\@makefntext##1{\parindent 1em\noindent
           \hb@xt@0.5em{%
               \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
   \twocolumn[\@maketitle]%
   \thispagestyle{cvm@firstheadings}%ssl
   \@thanks%
 \endgroup%
 \setcounter{footnote}{0}%
 \global\let\thanks\relax%
 \global\let\maketitle\relax%
 \global\let\@maketitle\relax%
 \global\let\@thanks\@empty%
 \global\let\@author\@empty%
 \global\let\@title\@empty%
 \global\let\title\relax%
 \global\let\author\relax%
 \global\let\and\relax%
%
 \global\let\cncl\relax%
 \global\let\email\relax%
 \global\let\cvm@title\relax%
 \global\let\cvm@author\relax%
 \global\let\cvm@address\relax%
 \global\let\cvm@abstract\relax%
 \global\let\cvm@keyword\relax%
 \global\let\cvm@doi\relax%
%
 \global\let\title\relax%
 \global\let\author\relax%
 \global\let\address\relax%
 \global\let\abstract\relax%
 \global\let\keyword\relax%
 \global\let\doi\relax%
}
%
\def\@maketitle{%
    \let\footnote\thanks%
    \newpage\null% an empty hbox
    \vskip 1.2\baselineskip%
    {\centering%
    {\cvm@title\par}%
    {%\vskip 1.2em%
    \vskip 0.8\baselineskip%
    \begin{tabular}[t]{c}%
    \cvm@author%
    \end{tabular}%
    \vskip 0.3em%
    \par%
    }%
    \vskip 0.2\baselineskip}%
    {\linespread{1.0}\selectfont\cvm@abstract\par%
    \vskip 0.2\baselineskip%
    \cvm@keyword\par%
    \vskip 0.2\baselineskip%
    \cvm@doi\par
    }%
    \vskip 1.5\baselineskip%
}
%
\renewcommand{\refname}{\centering \normalsize\bf References}
%
\newenvironment{acknowledgement}{
    \vspace*{10pt}
    {\noindent\zihao{4}\bfseries Acknowledgements\par}
    \vspace*{10pt}
    \begingroup
    }{
    \par
    \endgroup
}
%
%%---------------- Define biography ----------------%%
\newenvironment{biography}[1][]{
\vskip 0.4\baselineskip%
\zihao{5-}
\parpic{%
\includegraphics[height=3.0cm,width=2.4cm]{#1}}%
}{\vskip 0.4\baselineskip\par}

%% For author who has no photo
\newenvironment{biographynophoto}{\vskip 0.4\baselineskip\zihao{5-}}{\vskip 0.4\baselineskip\par}

%%---------------- Redefine section -----------------%%
\setcounter{secnumdepth}{3}

\renewcommand\thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-1.5ex \@plus -.2ex \@minus -.2ex}%
                                   {1.5ex \@plus.2ex}%
                                   {\color[rgb]{0.5098,0.1921,0.5568} \zihao{4-}\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-1.0ex \@plus -.2ex \@minus -.2ex}%
                                     {1.0ex \@plus .2ex}%
                                     {\zihao{5}\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-0.5ex \@plus -.0ex \@minus -.2ex}%
                                     {0.5ex \@plus .0ex}%
                                     {\zihao{5}\bfseries}}
\renewcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}

\newcommand{\firstheadname}[1]{\gdef\cvm@firstheadname{\zihao{5-} #1}}
\newcommand{\firstfootname}[1]{\gdef\cvm@firstfootname{#1}}
\newcommand{\headevenname}[1]{\gdef\cvm@headevenname{{\zihao{5-} #1}}}
\newcommand{\headoddname}[1]{\gdef\cvm@headoddname{{\zihao{5-} #1}}}
\newcommand{\footevenname}[1]{\gdef\cvm@footevenname{{\zihao{5-} #1}}}
\newcommand{\footoddname}[1]{\gdef\cvm@footoddname{{\zihao{5-} #1}}}

\newcommand{\Author}[3]{\begin{biography}[#1]\zihao{5-} \noindent \textbf{#2~} #3 \end{biography}}
\newcommand{\MakeKeywords}[1]{\noindent\setlength{\hangindent}{57pt}\textcolor[rgb]{0.5078125,0.19140625,0.5546875}{\bf{Keywords~}}{\textrm #1.\par}\vspace{9mm}}
\newcommand{\MakeAbstract}[1]{\noindent\textcolor[rgb]{0.5078125,0.19140625,0.5546875}{\bf Abstract~~}{\textrm #1}\vskip 2mm}
\newcommand{\CvmAck}[1]{\textcolor[rgb]{0.5078125,0.19140625,0.5546875}
    {\subsection*{Acknowledgements~}}
    \noindent{#1}
    \\ \\
    \noindent \zihao{5-} \textcolor[rgb]{0.5078125,0.19140625,0.5546875}{\textbf{Open~Access~}}
    This article is distributed under the terms of the Creative
    Commons Attribution License which permits any use, distribution, and
    reproduction in any medium, provided the original author(s) and the source
    are credited.\\
    \zihao{5} \noindent
    \renewcommand\refname{\zihao{5}\textbf{\textcolor[rgb]{0.5098,0.1921,0.5568}{References}}}
}

\newcommand{\cvmacknowledge}[1]{
    \subsection*{\color[rgb]{0.5098,0.1921,0.5568}Acknowledgements~}
    {#1}
    \\ \\
    \noindent \zihao{5-} \textcolor[rgb]{0.5078125,0.19140625,0.5546875}{\textbf{Open~Access~}}
    This article is distributed under the terms of the Creative
    Commons Attribution License which permits any use, distribution, and
    reproduction in any medium, provided the original author(s) and the source are credited.\\
}

\newcommand{\MakePageStyle}{
    % First header name
    \headoddname{{\zihao{-5}{\PaperTitle}}}
    \hyphenpenalty=50000
    \raggedbottom
    \pagestyle{cvmheadings}
    \pagestyle{cvmfootings}
    \thispagestyle{fancy}
    \fancyhead[L]{\vspace{-16.1mm}\hspace{-23.1mm}
    \begin{tabular}{p{10mm}p{10mm}}
        \includegraphics[scale=1]{head.eps}&
    \end{tabular}\\ \vspace{-22mm} \zihao{5}
    \bf ~Computational Visual Media \\[2mm] ~\firstheader}
    % Foot style
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[R]{\vspace {-4mm}\includegraphics[scale=1]{db.jpg}}
    \footoddname{\hspace{80.5mm}${{\raisebox{0.8mm}{\mbox{\quad \quad \quad \quad \quad
    \quad \quad \quad \quad \quad \quad \quad \hspace {1mm}
    }}}}$~\raisebox{0.22mm}{\begin{tabular}{p{190mm}}
    \includegraphics[scale=1]{sb.jpg}\end{tabular}}}
    \footevenname{\hspace {-7mm}{
    \begin{tabular}{p{190mm}}
        \includegraphics[scale=1]{sb.jpg}~${{\raisebox{1.6mm}{{\mbox{ \textrm{}}}}}}$
    \end{tabular}}}
    % Title style
    \begin{strip} \vskip 10mm
        {\zihao{3}\textbf{\textcolor[rgb]{0.5078125,0.19140625,0.5546875}{\bf \PaperTitle}}}
        \vskip 9mm
        {\bf \zihao{5}\AuthorNames}%\Envelope
        \vskip 5mm
        \textcopyright\ The Author(s) 2018. This article is published with open access at Springerlink.com
    \end{strip} \vskip 3mm  \zihao{6}
    \begin{figure}[b] \vskip -2mm
        \begin{tabular}{p{80.5mm}} \toprule\\ \end{tabular}
        \vskip -3.5mm \noindent \setlength{\tabcolsep}{1pt}
        \begin{tabular}{p{3.5mm}p{80mm}}
            \AuthorAdress
            \multicolumn{2}{l}{\ManuscriptInfo}
        \end{tabular} \vspace {0mm}
    \end{figure}\zihao{5} \mbox{} \makeatother \vskip -4.5mm
    \zihao{5--}
}


\setitemize{itemindent=0em,leftmargin=2em,itemsep=-0.4ex,listparindent=0pt,partopsep=0pt,parsep=0.3ex,topsep=-0.25ex}
\def \mx{\mathbf{x}}
\def \mc{\mathbf{c}}
\def \mL{\mathbf{L}}
\def \ml{\mathbf{l}}
\def \mp{\mathbf{p}}
\def \mq{\mathbf{q}}
\newcommand{\etal}{{\em et al.}}
\renewcommand{\figurename}{Fig.}
\renewcommand{\tablename}{Tab.}
\newcommand{\figref}[1]{Fig.~\ref{#1}}
\newcommand{\tabref}[1]{Tab.~\ref{#1}}
\newcommand{\equref}[1]{Eq. (\ref{#1})}
\newcommand{\algref}[1]{Alg. \ref{#1}}
\newcommand{\secref}[1]{Sec.~\ref{#1}}

\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}

\DeclareCaptionLabelSeparator{threespace}{~\,~}
\captionsetup{labelsep=threespace}%,textfont=bf}

%%------------------cvm@firstheadings begin------------------------------------%%
%\def\ps@cvm@firstheadings{
%   \let\@evenhead\@empty\let\@evenfoot\@empty
%   \let\@oddhead\@empty\let\@oddfoot\@empty
%    \def\@firsthead{%
%        \vbox{%
%            \vskip 3.2mm%
%            \hbox to \textwidth{{\zihao{5-} \hbox{\cvm@firstheadname} \hfill }}%
%%            \vskip 2.0mm%            \hrule width\textwidth height0.63pt\vskip0.85pt \hrule width\textwidth height0.63pt\vskip0.85pt \hrule width\textwidth height0.63pt%
%        }%
%    }
%   \def\@evenfoot{
%   \hbox{\cvm@firstfootname}
%    }
%   \let\@oddhead\@evenhead%
%   \let\@oddfoot\@evenfoot%
%}
%%-----------------cvm@firstheadings end--------------------------------------%%
%%-------------------cvmheadings begin----------------------------------------%%
\def\ps@cvmheadings{
        \def\@evenhead{%
        \vbox{%
            \vskip 3.2mm%
            \hbox to \textwidth {\mbox{\hspace {-2.2mm}} {\zihao{5-} \thepage} \hfill \hbox{\cvm@headevenname}  {\zihao{5-} \mbox{\hspace {-3mm}}}}%
            \vskip 2.0mm%
            \hbox to \textwidth{\noindent\color[rgb]{0.5098,0.1921,0.5568}\rule[2mm]{\textwidth}{1pt}}%
        }}%
    }
        \def\@oddhead{%
        \vbox{%
            \vskip 3.05mm%
            \hbox to \textwidth {{\zihao{5-} \mbox{\hspace {-3mm}} \cvm@headoddname}   \hfill {{\zihao{5-} \thepage} \mbox{\hspace {-0.5mm}}}}%
            \vskip 1.05mm%
            \hbox to \textwidth{\noindent\color[rgb]{0.5098,0.1921,0.5568}\rule[2mm]{\textwidth}{1pt}}}%
        }

  \def\ps@cvmfootings{
\def\@evenfoot{
%  \let\@evenhead\@empty
%\let\@evenfoot\@empty
%  \let\@oddhead\@empty
% \let\@oddfoot\@empty
\vbox{
\vskip -4mm
  \hbox to \textwidth {\mbox{\hspace {0.2mm}} {\zihao{5-} \thepage} \hfill \hbox{\cvm@footevenname}  {\zihao{5-} \mbox{\hspace {15.5mm}}}}
}  }
    \def\@oddfoot{
\vbox{%
            \vskip -5mm%
            \hbox to \textwidth {{\zihao{5-} \mbox{\hspace {-0mm}} \cvm@footoddname}   \hfill {{\zihao{5-} \thepage} \mbox{\hspace {13mm}}}}%
}
  }
      }
%%---------------------headings end------------------------------------------%%




%
%%-------- Set the begin and end method for class -----%%
\AtBeginDocument{%
   \flushend
   \captiondelim{\small} %
   \captionnamefont{\small}%
   \captiontitlefont{\small}%
   }
\AtEndDocument{\clearpage}
\endinput
%%-------- The end of cvm.cls -------------%%
