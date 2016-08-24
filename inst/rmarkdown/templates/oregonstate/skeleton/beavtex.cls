\newcommand{\filename}{beavtex}
\newcommand{\fileversion}{v1.1}
\newcommand{\filedate}{2013/12/05}

%-------------------------------------------------------------------------------
% BeavTeX
% Oregon State University Thesis Class
%
% Neville Mehta <neville@lifetime.oregonstate.edu>:
%   Added algorithm listing
%   Fixed appendix listings to only include main headings
%   Line breaks for underlined text (e.g., for a long title on the abstract page)
%   Minor formatting changes (approved by the Graduate School)
%   Compatibility with hyperref
%
% Adapted from the version by Deling Ren (deling_ren@lifetime.oregonstate.edu)
% 	In accordance (hopefully) to the OSU graduate school thesis guide (referred to
% 	as T.G.): http://oregonstate.edu/dept/grad_school/current/thesis.html
%   Changes from John Metta's version: tons and tons of change.
%   Several definition generators are defined.
%   Now (mostly) complies LaTeX2e package writer's guide.
%   Most commands are LaTeX rather than TeX now.
%   Options added.
%
% Adapted from John Metta's BeavTeX class
%   John Metta (prev. name: Pennington) 
%   <john.pennington@lifetime.oregonstate.edu>
% Originally thesis.sty
%---------------------------------------------------------------------------------
%   Dec 2013: Edited by Rick Treinen
%
%   TOC made to include dots for sections, not only chapters
%
%   Added: \usepackage{rotating} to thesis.tex to allow the rotation of figures and charts on a page, using the {sidewaysfigure} command
%
%   Added: \usepackage{tablefootnote} to thesis.tex to allow footnotes in the tabular environment, using the \tablefootnote command
%
% -------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{\filename}[\filedate\space\fileversion\space BeavTeX: OSU thesis class]

\RequirePackage{setspace}
\RequirePackage{ifthen}
\RequirePackage[normalem]{ulem}
\newcommand{\ulinewithbreaks}[1]{\expandafter\uline\expandafter{#1}}

% BeavTeX symbol
\newcommand{\beavtex}{$\rm{B^{\kern-.1em\textsc{e}}\ \kern-.6em_{\textsc{a}}\kern-.4em\textsc{v}}$\kern-.3em\TeX}

% -------------------------------------------------------------------------------
% beavtex is a modified (default 12pt) book style. it accepts these options:

% [10pt], [11pt], and [12pt]. These options are passed to book class. The
% default is 12pt.

% [1.5in], [1.7in]. These two options set the left margin. Default is 1.7
% inches.

% [onehalf], [double]. These two options set the line spacing. Default is
% double.

% [preprint], [submission]. When [preprint] is set, it is assumed that the
% thesis is printed double-sided, opens right (so that every chapter begins on
% an odd page). Date is included in the header, along with the word "Draft". In
% the submission version, it is assumed that the document will be printed
% single-sided. Default is submission.
    
% [seploa]. When [seploa] is set, the appendices do not appear in the main table
% of contents (except for the entry "appendices" itself). Rather, they are
% listed in the list of appendices. According to T.G., you need this if you have
% more than five appendices. It is not set by default.
% -------------------------------------------------------------------------------
\newcommand{\bookclass}{book}

% Font size, this option is passed to book class. T.G. : use regular, 10- to 12-
% point size for text. Default is 12pt.
\newcommand{\@ftsize}{}
\DeclareOption{10pt}{\renewcommand{\@ftsize}{10pt}}
\DeclareOption{11pt}{\renewcommand{\@ftsize}{11pt}}
\DeclareOption{12pt}{\renewcommand{\@ftsize}{12pt}}

% Left side margin. 
% [1.5in], [1.7in]
% T.G. : the left margin must be at least 1.5 inches (recommend 1.7). default is
% 1.7, unless [1.5in] is specified.
\newcommand{\@lmarwidth}{}
\newcommand{\@smarwidth}{}
\newcommand{\@texwidth}{}

\DeclareOption{1.5in}{%
  \renewcommand{\@lmarwidth}{.5in}%
  \renewcommand{\@smarwidth}{.0in}%
  \renewcommand{\@texwidth}{6.0in}%
}
\DeclareOption{1.7in}{%
  \renewcommand{\@lmarwidth}{.7in}%
  \renewcommand{\@smarwidth}{.0in}%
  \renewcommand{\@texwidth}{5.8in}%
}

% One and half or double spacing?
% [onehalf], [double]
% T.G. : use either double or 1.5 line spacing for the body of text. default is
% double, unless [onehalf] is specified.
\newcommand{\@spacing}{}
\DeclareOption{onehalf}{\renewcommand{\@spacing}{\onehalfspacing}}
\DeclareOption{double}{\renewcommand{\@spacing}{\doublespacing}}
\AtEndOfClass{\@spacing}

% Draft or final version?
% [preprint], [submission]
% Default is submission.
\newif\if@preprint

\DeclareOption{preprint}{\@preprinttrue}
\DeclareOption{submission}{\@preprintfalse}

% [seploa]
\newif\if@seploa
\@seploafalse
\DeclareOption{seploa}{\@seploatrue}

% Other options are passed to the book class.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\bookclass}}

% These are the default options.
\ExecuteOptions{12pt,1.7in,double,submission}
\ProcessOptions\relax

\if@preprint
\PassOptionsToClass{twoside,openright}{\bookclass}
\else
\PassOptionsToClass{oneside,openany}{\bookclass}
\fi

\PassOptionsToClass{\@ftsize}{\bookclass}

\LoadClass[letterpaper,onecolumn]{\bookclass}

% -------------------------------------------------------------------------------
% Set up page layout.

% \evensidemargin is used when [twoside] is set (by [preprint]).
\setlength{\oddsidemargin}{\@lmarwidth}
\setlength{\evensidemargin}{\@smarwidth}
\setlength{\textwidth}{\@texwidth}
% Other margins. T.G.: all other margins must be at least 1 inch.
\setlength{\topmargin}{0in}
\setlength{\headheight}{.5in}
\setlength{\headsep}{.3in}
\setlength{\footskip}{.5in}

% -------------------------------------------------------------------------------
% Font size for headings. T.G. : headings may be either 14pt only if all
% headings are 14pt. I assume you want them all be 14 pt (at least I do).  For
% 12pt headings, you need:
% \renewcommand{\heading}{\fontsize{12}{14.5}\selectfont}

% Note: commands like \large etc are proportional to normal font size (which can
% be 10, 11 or 12), and should be avoided. Use \heading when you typeset a
% heading.
\newcommand{\heading}{\fontsize{14}{18}\selectfont}

%-------------------------------------------------------------------------------
% Misc commands 

% Redefine the default (plain) pagestyle
\renewcommand{\ps@plain}{%
  \renewcommand{\@oddhead}{%
    \ifnum\value{page}=1\else
    \if@preprint
    \textit{\small Draft}\hfil\@formatdate
    \fi
    \hfil\thepage
    \fi
  }
  \renewcommand{\@evenhead}{%
    \thepage\hfil\@formatdate\hfil\textit{\small Draft}%
  }
  \renewcommand{\@oddfoot}{}
  \renewcommand{\@evenfoot}{}
}

\newcommand{\@formatdate}{%
  \textit{\scriptsize {\number\year/\number\month/\number\day}}%
}

% To clear completely empty pages. It's not really that necessary. The
% submission version is single-sided and won't need this anyway.
\renewcommand{\cleardoublepage}{%
  \clearpage%
  \if@twoside%
  \ifodd\c@page%
  \else\mbox{}\thispagestyle{empty}\newpage%
  \if@twocolumn\mbox{}\newpage\fi\fi\fi%
}

% Authors: use \mainmatter before the main content
\renewcommand{\mainmatter}{%
  \cleardoublepage%
  \@mainmattertrue%
  \pagestyle{plain}
  \setcounter{page}{1}%
  \pagenumbering{arabic}%
}

% T.G. : Figures and tables in the appendices should be listed in separate
% lists. So we will put them in separate files (loaf and loat). Use
% \listofappendixfigures and \listofappendixtables to make the listings.

% Authors: use \appendix before you begin the appendix to generate the appendix
% page and to set up some relevant variables.

\newif\if@appendix

\newcommand{\ext@toc}{toc}

\renewcommand\appendix{%
  \cleardoublepage%
  \@appendixtrue%
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}%
  \renewcommand{\ext@figure}{loaf}%
  \renewcommand{\ext@table}{loat}%
  \if@seploa\def\ext@toc{loap}\fi%
  \addcontentsline{toc}{chapter}{Appendices}%
  \appendixpage%
}

% T.G. : An appendix page is required before the appendices.
\newcommand{\appendixpage}{%
  \vspace*{0.3\textheight}
  \begin{center}{\heading APPENDICES}\end{center}%
  \clearpage%
}

% Redefine \@chapter, so that appendices are added in .loap file if [seploa] is
% set. Also, I commented out the lines adding space between figures/tables of
% different chapters. I am not sure yet if it is necessary. The following code
% is pretty much copied from book.cls. If it looks messy, don't blame me :P
\def\@chapter[#1]#2{
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
      \refstepcounter{chapter}
      \typeout{\@chapapp\space\thechapter.}
      \addcontentsline{\ext@toc}{\if@appendix app\else chapter\fi}{\protect\numberline{\thechapter}#1}
    \else
      \addcontentsline{\ext@toc}{chapter}{#1}
    \fi
  \else
    \addcontentsline{\ext@toc}{chapter}{#1}
  \fi
  \chaptermark{#1}
  \addtocontents{\ext@figure}{\protect\addvspace{10\p@}}
  \addtocontents{\ext@table}{\protect\addvspace{10\p@}}
	\ifthenelse{\isundefined{\listofalgorithms}}{}{
  	\addtocontents{\ext@algorithm}{\protect\addvspace{10\p@}}
  }
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]
  \else
    \@makechapterhead{#2}
    \@afterheading
  \fi
}

% T.G. : These elements should be single-spaced: Blocked quotes, bibliography,
% footnotes, endnotes, multiple-line headers, figure titles, listed items
% (optional).

% Bibliography: Redefine the bibliography to make it single-spaced.
\renewcommand{\bibliography}[1]{%
  \if@filesw
    \immediate\write\@auxout{\string\bibdata{#1}}%
  \fi
  \addcontentsline{toc}{chapter}{Bibliography}
  \begin{singlespacing}
  \@input@{\jobname.bbl}
  \end{singlespacing}
}

% Footnotes: they are not effected by linespacing anyway (always single-spaced).
% Multiple-line headers: as long as we use \heading, it's single-spaced.
% Others: I am not sure yet...

% User definitions.
% A definition generator for variables.
% #1: optional default value, if missing, the variable is mandatory. Failing to
% define it will raise a latex error.
% #2: command to define the variable
% \define{somevar} will define a new command \somevar with 1 parameter. It
% stores the contents to a variable \@somevar.

\newcommand{\definevar}[2][-]{%
  \expandafter\def\csname #2\endcsname{%
    \expandafter\gdef\csname @#2\endcsname
  }
  \if#1-
  \csname #2\endcsname{\@latex@error{No #2 defined}\@ehc}
  \else
  \csname #2\endcsname{#1}
  \fi
}

\definevar{title}
\definevar{author}
\definevar{doctype}
\definevar{degree}
\definevar{major}
\definevar{department}
\definevar{advisor}

\definevar[*]{twomajor}
\definevar[*]{twodepartment}
\definevar[*]{coadvisor}

\definevar[Chair]{depthead}
\definevar[Chair]{twodepthead}
\definevar[Department]{depttype}
\definevar[Department]{twodepttype}

\definevar[\today]{submitdate}
\definevar[\the\year]{commencementyear}

\definevar{abstract}
\definevar[*]{nopretext}

% \xxxcontent commands will be generated when we generate definitions for the
% pretext pages. the following definitions provide backward compatibility and
% nicer names.
\newcommand{\acknowledgements}{\ackcontent}
\newcommand{\contributors}{\contricontent}
\newcommand{\preface}{\prefcontent}
\newcommand{\dedication}{\dedcontent}

%-------------------------------------------------------------------------------
% Document parts. See T.G.
%-------------------------------------------------------------------------------
\newcommand{\emptyline}{\mbox{}\newline}

\newcommand{\advisorstring}{%
  \hfill
  \if\@coadvisor * \@advisor
  \else \@advisor\hfill\@coadvisor
  \fi 
  \hfill
}

% Flyleaf, a blankpage
\newcommand{\flyleaf}{\thispagestyle{empty}\phantom{}\newpage}

% Abstract page
\newcommand{\abspage}{
  \pagestyle{empty}
  \begin{doublespacing} 
    \begin{center} 
      {\heading AN ABSTRACT OF THE \MakeUppercase{\@doctype} OF}
    \end{center}
    \begin{flushleft}
      \noindent
      \ulinewithbreaks{\@author} for the degree of \ulinewithbreaks{\@degree} in%
      \if\@twomajor * \ulinewithbreaks{\@major}
      \else
      \ulinewithbreaks{\@major} and \ulinewithbreaks{\@twomajor}
      \fi
      presented on \uline{\@submitdate}.\\
      \emptyline
      \noindent Title: \ulinewithbreaks{\@title}
    \end{flushleft}
    \emptyline
    Abstract approved: \hrulefill \\
    \phantom{Abstract approved:\ }\advisorstring
    \vspace{1em}
  \end{doublespacing}
  \noindent
  \emptyline
  \emptyline
  \@abstract
  \clearpage
}

% Copyright page
\newcommand{\copyrightpage}{
  \begin{singlespacing}
  \thispagestyle{empty}
  \vspace*{10\baselineskip}
  \begin{center}
    ${}^\copyright$Copyright by \@author\\
    \@submitdate \\
    All Rights Reserved
  \end{center}
  \end{singlespacing}
  \clearpage
}

% Title page
\renewcommand{\titlepage}{
    \thispagestyle{empty}
    \begin{center}
      \setlength{\baselineskip}{14.5pt}
      {\heading \@title} \\
      \emptyline by\\ \emptyline
      \@author\\
      \vfill
      A \MakeUppercase{\@doctype}\\ \emptyline
      submitted to\\ \emptyline
      Oregon State University\\
      \vfill
      in partial fulfillment of\\
      the requirements for the\\
      degree of\\ \emptyline
      \@degree
      \vfill
      Presented \@submitdate\\
      Commencement June \@commencementyear
    \end{center}
  \clearpage
}

% Approval page
\newcommand{\approvalpage}{
  \thispagestyle{empty}
  \begin{singlespacing}
    \begin{flushleft}
      \noindent
      \ulinewithbreaks{\@degree} \MakeLowercase{\@doctype} of \ulinewithbreaks{\@author} 
      presented on \uline{\@submitdate}. \\
      \vspace{3em}
      APPROVED:\\
      \vspace{3em}
      \hrulefill \\
      % Major Professor (Co- if there is a coadvisor}
      \if\@coadvisor *
      \else Co-\fi Major Professor, representing \@major \\
      \vspace{3em}
      % Second major professor if exists
      \if\@coadvisor *
      \else\hrulefill \\  Co-Major Professor, representing \@twomajor \\
      \vspace{3em}
      \fi
      \hrulefill \\ 
      % major department head
      \@depthead\ of the \@depttype\ of \@department \\
      \vspace{3em}
      \if\@twodepartment * 
      \else
      % Here is the second Department
      \hrulefill \\ 
      \@twodepthead\ of the \@twodepttype\ of \@twodepartment \\
      \vspace{3em}
      \fi
      \hrulefill \\
      Dean of the Graduate School \\
      \vfill
      I understand that my \MakeLowercase{\@doctype} will become part of the
      permanent collection of Oregon State University libraries. My signature
      below authorizes release of my \MakeLowercase{\@doctype} to any reader
      upon request.
      \vspace{3em} \\
      \hrulefill \\
      \makebox[\textwidth]{\hfill \@author, Author \hfill}
    \end{flushleft}
  \end{singlespacing}
  \clearpage
}

\definevar[*]{dedcontent}
\newcommand{\dedpage}{
  \if \@dedcontent *
  \else
  \thispagestyle{empty}
  \vspace*{10\baselineskip}
  \begin{center}
  \@dedcontent
  \end{center}
  \clearpage
  \fi
}

% A definition generator for general pretext pages.
% #1: short name
% #2: page title
% \definepretextpage{name}{title} generates a command \namepage, \namecontent,
% a internal variable \@namecontent, and an environment \namepageenv.
% Authors: Use \namecontent to define the contents to be displayed. If it is not
% specified, the page will not be produced. You can also change the environment
% by using \renewenvironment{namepageenv}.

\newcommand{\definepretextpage}[2]{%
  \definevar[*]{#1content}
  \expandafter\newcommand\csname #1page\endcsname{%
    \if\csname @#1content\endcsname *
    \else
    \thispagestyle{empty}
    \begin{center}
      {\heading #2}
    \end{center}
    \noindent
    \emptyline
    \csname @#1content\endcsname
    \clearpage
    \fi
  }
}

% Acknowledgements, contribution, dedication, and preface.
\definepretextpage{ack}{ACKNOWLEDGEMENTS}
\definepretextpage{contri}{CONTRIBUTION OF AUTHORS}
\definepretextpage{pref}{PREFACE}

% Format all of the frontmatter
% The commands for optional pages will check if the content is defined. If not,
% the page will not be produced. There is no need to check here.
\newcommand{\pretext}{%
  \pagenumbering{roman}
  
  % Mandatory pages
  \flyleaf           % A. Flyleaf
  \abspage           % B. Abstract
  \copyrightpage     % C. Copyright page
  \titlepage         % D. Title page
  \approvalpage      % E. Approval page

  % Optional pages
  \ackpage           % F. Acknowledgments
  \contripage        % G. Contribution of authors

  % Listings
  \tableofcontents        % H.
  \listoffigures          % I.
  \listoftables           % J

	% Algorithm listing
	\ifthenelse{\isundefined{\listofalgorithms}}{}{
  \expandafter\newcommand\csname ps@loaa\endcsname{
  \renewcommand{\@oddhead}{%
  \parbox{\textwidth}{%
  \centering {\heading LIST OF ALGORITHMS} \\ 
  \uline{Algorithm}\hfill\uline{Page}}}
  \renewcommand{\@oddfoot}{}
  \renewcommand{\@evenfoot}{}}
  \expandafter\newcommand\csname ps@loab\endcsname{%
  \renewcommand{\@oddhead}{%
  \parbox{\textwidth}{%
  \centering {\heading LIST OF ALGORITHMS\ (Continued)} \\ 
  \uline{Algorithm}\hfill\uline{Page}}}
  \renewcommand{\@evenhead}{\@oddhead}
  \renewcommand{\@oddfoot}{}
  \renewcommand{\@evenfoot}{}}
	\renewcommand{\listalgorithmname}{\pagestyle{loab}\thispagestyle{loaa}\vspace{-1.28in}}
  \listofalgorithms
  }

  \listofappendices       % K.
  \listofappendixfigures  % L.
  \listofappendixtables   % M.

  % Optional pages
  \dedpage           % O. Dedication
  \prefpage          % P. Preface
}

\renewcommand{\maketitle}{\if\@nopretext \else\pretext\fi}

% T.G. : A flyleaf is needed at the end of the thesis.
\AtEndDocument{\clearpage \flyleaf}

% Chapter heading. T.G. : all title must be the same size (14 or normal).
\renewcommand{\@makechapterhead}[1]{%
  \vspace*{10\p@}%
  {
    \begin{center}
      \normalfont\heading
      \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter\heading\@chapapp\ \thechapter:\ \fi
      \fi
      \heading #1\par\nobreak
      \vskip 20\p@
    \end{center}
  }
}

% Silent chapter heading (\chapter*).
\renewcommand{\@makeschapterhead}[1]{%
  \vspace*{10\p@}%
  {
    \begin{center}
      \normalfont\heading
      \heading #1\par\nobreak
      \vskip 20\p@
    \end{center}
  }
}

\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \if@appendix \else
      \addcontentsline{\ext@toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
      \fi
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \if@appendix \else
        \addcontentsline{\ext@toc}{#1}{%
         \ifnum #2>\c@secnumdepth \else
           \protect\numberline{\csname the#1\endcsname}%
         \fi
         #7}%
       \fi}%
  \fi
  \@xsect{#5}}

\renewcommand{\section}{\@startsection
  {section}%                   % the name
  {1}%                         % the level
  {0mm}%                       % the indent
  {-\baselineskip}%            % the before skip
  {0.5\baselineskip}%          % the after skip
  {\normalfont\heading}}       % the style

\renewcommand{\subsection}{\@startsection
  {subsection}%                % the name
  {1}%                         % the level
  {0mm}%                       % the indent
  {-\baselineskip}%            % the before skip
  {0.5\baselineskip}%          % the after skip
  {\normalfont\heading}}       % the style

\renewcommand{\subsubsection}{\@startsection
  {subsubsection}%             % the name
  {1}%                         % the level
  {0mm}%                       % the indent
  {-\baselineskip}%            % the before skip
  {0.5\baselineskip}%          % the after skip
  {\normalfont\heading}}       % the style

% Listings. l@kind handles an entry of a "kind" in the listing
% T.G. : No bold faces should appear in the pretext (including the listings, of
% course). This is why l@chapter is being redefined here.
\def\l@chapter#1#2{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %\large
      \advance\leftskip\@tempdima
      \hskip -\leftskip
%     #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par  %Old version without dots in the Chapter part of the TOC
      #1\nobreak\normalfont\leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

% For separate listings of appendices ([seploa] is set), every appendix is
% listed the same as a chapter, otherwise it is like a section. not sure if it's
% the optimal solution. but it looks nice for now.
\def\l@app#1#2{%
  \if@seploa\l@chapter{#1}{#2}
  \else
  {\vskip 4pt {\baselineskip 14.5pt%
    \@dottedtocline{1}{1pc}{2em}{#1}{#2}}}
  \fi
}

\def\l@section#1#2{\vskip 4pt {\baselineskip 14.5pt%
    \@dottedtocline{1}{1pc}{2em}{#1}{#2}} }
\def\l@subsection#1#2{ {\baselineskip 14.5pt%
    \@dottedtocline{2}{4pc}{2.8em}{#1}{#2}}}
\def\l@subsubsection#1#2{{\baselineskip 14.5pt%
    \@dottedtocline{3}{7pc}{3.4em}{#1}{#2}}}
\def\l@figure#1#2{\vskip 9.5pt {\baselineskip 14.5pt%
    \@dottedtocline{1}{1.5em}{2.3em}{#1}{#2}}}
\let\l@table\l@figure

% We want to ignore footnotes in any listing. If this is not what you want,
% change the line starting with \let\footnote in \definelisting
\newcommand{\@ignore}[1]{}

% There are these kinds of listings:
% Table of contents (toc)
% List of figures (lof)
% List of tables (lot)
% List of appendices (loap)
% List of appendix tables (loat)
% List of appendix figures (loaf)

% A definition generator for listings. It generates two page styles (one for the
% first page, one for the rest) and a command.
% #1 : file extension name
% #2 : full name (to appear as the heading of the listing)
% #3 : short name (to appear as the heading on the top of the left column)
% #4 : command name (to be used to make the listing)
\newcommand{\definelisting}[4]{
  % Page style for the first page. If twoside is set, the page is an
  % oddpage. Otherwise, \evenhead is not used anyway.
  \expandafter\newcommand\csname ps@#1a\endcsname{%
    \renewcommand{\@oddhead}{%
      \parbox{\textwidth}{%
        \centering {\heading #2} \\ 
        \uline{#3}\hfill\uline{Page}
      }
    }
    \renewcommand{\@oddfoot}{}
    \renewcommand{\@evenfoot}{}
  }
  % Page style for the following pages
  \expandafter\newcommand\csname ps@#1b\endcsname{%
    \renewcommand{\@oddhead}{%
      \parbox{\textwidth}{%
        \centering {\heading #2\ (Continued)} \\ 
        \uline{#3}\hfill\uline{Page}
      }
    }
    \renewcommand{\@evenhead}{\@oddhead}
    \renewcommand{\@oddfoot}{}
    \renewcommand{\@evenfoot}{}
  }
  % The command itself. I had to use \def rather than \newcommand because we
  % might be redefining \tableofcontents.
  \expandafter\def\csname #4\endcsname{%
    \cleardoublepage
    \pagestyle{#1b}
    \thispagestyle{#1a}
    {\let\footnote\@ignore\@starttoc{#1}}
  }
}

\definelisting{toc}{TABLE OF CONTENTS}{}{tableofcontents}
\definelisting{lof}{LIST OF FIGURES}{Figure}{listoffigures}
\definelisting{lot}{LIST OF TABLES}{Table}{listoftables}
\definelisting{loap}{LIST OF APPENDICES}{}{listofappendices}
\definelisting{loaf}{LIST OF APPENDIX FIGURES}{Figure}{listofappendixfigures}
\definelisting{loat}{LIST OF APPENDIX TABLES}{Table}{listofappendixtables}

\endinput