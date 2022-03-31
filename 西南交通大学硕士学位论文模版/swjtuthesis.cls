%%
%% This is file `swjtuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% swjtuthesis.dtx  (with options: `class')
%% 
%% Copyright (C) 2018-2019 by GeosciMan <geosciman@163.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.2 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%%     http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of
%% LaTeX version 1999/12/01 or later.
%% 

%% This class file have been updated by Shuai Chang (Aero Asukara) for his final thesis. Copyright 2022, All Rights Reversed 

\NeedsTeXFormat{LaTeX2e}
%[1999/12/01]
\ProvidesClass{swjtuthesis}[2022/03/31 v2.1.0 SWJTU thesis template]
\newif\if@swjtu@doctor
\newif\if@swjtu@master
\newif\if@swjtu@bachelor
\newif\if@swjtu@professional
\newif\if@swjtu@english
\newif\if@swjtu@numerical
\newif\if@swjtu@super
\newif\if@swjtu@pdf
\DeclareOption{doctor}{\@swjtu@doctortrue\@swjtu@masterfalse\@swjtu@bachelorfalse}
\DeclareOption{master}{\@swjtu@doctorfalse\@swjtu@mastertrue\@swjtu@bachelorfalse}
\DeclareOption{bachelor}{\@swjtu@doctorfalse\@swjtu@masterfalse\@swjtu@bachelortrue}
\DeclareOption{professional}{\@swjtu@professionaltrue}
\DeclareOption{chinese}{\@swjtu@englishfalse}
\DeclareOption{english}{\@swjtu@englishtrue}
\DeclareOption{print}{\@swjtu@pdffalse}
\DeclareOption{pdf}{\@swjtu@pdftrue}
\DeclareOption{super}{\@swjtu@numericaltrue\@swjtu@supertrue}
\DeclareOption{numbers}{\@swjtu@numericaltrue\@swjtu@superfalse}
\DeclareOption{authoryear}{\@swjtu@numericalfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ExecuteOptions{doctor,chinese,print,super}
\ProcessOptions\relax
\newif\if@swjtu@addtocspace
\if@swjtu@bachelor
    \@swjtu@addtocspacetrue
\fi
\if@swjtu@english
  \PassOptionsToClass{scheme=plain}{ctexbook}
\fi
\if@swjtu@pdf
  \PassOptionsToClass{oneside}{book}
\fi
\PassOptionsToPackage{no-math}{fontspec}
\LoadClass[UTF8, a4paper, openany, zihao=-4]{ctexbook}[2018/03/15]
\RequirePackage{etoolbox}
\@ifclasslater{ctexbook}{2015/05/14}{}{%
    \ClassError{swjtuthesis}{%
        Requiring ctex 2.0 or later version!\MessageBreak
        Please update the package using your\MessageBreak
        TeX package manager or from CTAN
    }{%
        See swjtuthesis.pdf for more detailed update guide.
    }
}
\setmainfont{Times New Roman}
\setsansfont{Times New Roman}
%\setsansfont{Arial}
\setmonofont{Courier New}
\RequirePackage{hyperref}
\hypersetup{
    bookmarksopen=true,
    bookmarksnumbered=true,
    bookmarksopenlevel=1,
    CJKbookmarks=true,
    pdfborder=0 0 0,
    unicode=true,
    linktoc=all,
}
\if@swjtu@pdf
    \hypersetup{
        colorlinks=true,
        allcolors=blue,
    }
\fi
\AtBeginDocument{
    \hypersetup{
        pdftitle={\swjtu@title},
        pdfauthor={\swjtu@author}
    }
}
\RequirePackage{xparse}
\NewDocumentCommand\setfontsize{mo}{\IfValueTF{#2}{\fontsize{#1}{#2}}{\fontsize{#1}{2\dimexpr#1}}\linespread{1}\selectfont\relax}
\newcommand\zhspace[1][1]{\hspace{#1\ccwd}}
\newcommand\swjtu@underline[2][6em]{%
    \hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt\relax
}
\def\swjtu@define@term#1{
    \expandafter\gdef\csname #1\endcsname##1{
        \expandafter\gdef\csname swjtu@#1\endcsname{##1}
    }
    \csname #1\endcsname{}
}
\swjtu@define@term{professionaltype}
\swjtu@define@term{title}
\swjtu@define@term{mainName}
\swjtu@define@term{enMainName}
\swjtu@define@term{classifiedindex}
\swjtu@define@term{UDC}
\swjtu@define@term{secrettext}
\swjtu@define@term{grade}
\swjtu@define@term{author}
\swjtu@define@term{discipline}
\swjtu@define@term{Ddiscipline}
\swjtu@define@term{major}
\swjtu@define@term{supervisor}
\swjtu@define@term{cosupervisor}
\swjtu@define@term{date}
\swjtu@define@term{Ddate}
\swjtu@define@term{enprofessionaltype}
\swjtu@define@term{entitle}
\swjtu@define@term{enclassifiedindex}
\swjtu@define@term{enUDC}
\swjtu@define@term{ensecrettext}
\swjtu@define@term{engrade}
\swjtu@define@term{enauthor}
\swjtu@define@term{endiscipline}
\swjtu@define@term{enmajor}
\swjtu@define@term{ensupervisor}
\swjtu@define@term{encosupervisor}
\swjtu@define@term{endate}
\swjtu@define@term{endegree}
\date{\zhnumsetup{time=Chinese}\zhtoday}
\endate{\CTEX@todayold}
\if@swjtu@english
  \renewcommand\figurename{Fig.}
  \newcommand\swjtu@notesname{\textbf{Notes}: }
  \newcommand\swjtu@acknowledgementsname{Acknowledgements}
  \newcommand\swjtu@publicationsname{Publications}
  \newcommand\swjtu@notationname{Notation}
\else
  \renewcommand\listfigurename{图目录}
  \renewcommand\listtablename{表目录}
  \newcommand\swjtu@notesname{\textbf{注}：}
  \newcommand\swjtu@acknowledgementsname{致谢}
  \newcommand\swjtu@conclusionname{结论与展望}
  \newcommand\swjtu@publicationsname{攻读硕士学位期间发表的论文及科研成果}
  \newcommand\swjtu@notationname{符号说明}
  \def\equationautorefname~#1\null{公式~(#1)\null}%
  \def\footnoteautorefname{脚注}%
  \def\itemautorefname~#1\null{第~#1~项\null}%
  \def\figureautorefname{图}%
  \def\tableautorefname{表}%
  \def\partautorefname~#1\null{第~#1~部分\null}%
  \def\appendixautorefname{附录}%
  \def\chapterautorefname~#1\null{第~#1~章\null}%
  \def\sectionautorefname~#1\null{第~#1~节\null}%
  \def\subsectionautorefname~#1\null{第~#1~小节\null}%
  \def\subsubsectionautorefname~#1\null{第~#1~小小节\null}%
  \def\paragraphautorefname~#1\null{第~#1~段\null}%
  \def\subparagraphautorefname~#1\null{第~#1~小段\null}%
  \def\theoremautorefname{定理}%
  \def\pageautorefname~#1\null{第~#1~页\null}%
\fi
\RequirePackage{geometry}
\geometry{
    paper=a4paper,
    top=2.54cm, bottom=2.54cm,
    left=2.6cm, right=2.6cm,
    headheight=0.8cm, headsep=0.45cm,
    footskip=.79cm}
    
\RequirePackage{fancyhdr}
\def\headrule{{%
  \if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
  \hrule\@height\footrulewidth\@width\headwidth\vskip0.65pt%
  \hrule\@height\headrulewidth\@width\headwidth\vskip-\headrulewidth\vskip-4pt
}}
%
\def\footrule{{%
  \if@fancyplain\let\footrulewidth\plainfootrulewidth\fi
  \vskip-\footruleskip\vskip-\footrulewidth
  \hrule\@height\headrulewidth\@width\headwidth\vskip0.65pt%
  \hrule\@height\footrulewidth\@width\headwidth\vskip\footruleskip
}}

\renewcommand{\headrulewidth}{0.6pt}
\renewcommand{\footrulewidth}{1.75pt}
\if@swjtu@bachelor
  \fancypagestyle{swjtu@headings}{%
    \fancyhf{}%
    \fancyhead[C]{\setfontsize{9\bp@}西南交通大学硕士研究生学位论文}%
    \fancyfoot[C]{\setfontsize{9\bp@}\thepage}}%
\else
  \fancypagestyle{swjtu@headings}{%
    \fancyhf{}%
    \fancyhead[R]{\setfontsize{12\bp@}\sffamily{第 \thepage 页}}
    \fancyhead[C]{\setfontsize{12\bp@}\sffamily{西南交通大学硕士研究生学位论文}}
%    \fancyfoot[C]{\setfontsize{10.5\bp@}\thepage}
    }%
\fi
\fancypagestyle{swjtu@notation}{\fancyfoot{}}
\pagestyle{swjtu@headings}
\patchcmd\chaptermark{#1}{\protect\spacetitle{#1}}{}{}
\renewcommand*{\cleardoublepage}{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\g@addto@macro\frontmatter{%
  \if@swjtu@bachelor
    \pagenumbering{gobble}%
  \else
    %\pagenumbering{Roman}%
    \pagenumbering{Roman}
  \fi}
\renewcommand\mainmatter{%
  \if@swjtu@bachelor
    \clearpage
  \else
    \cleardoublepage
    \pagenumbering{arabic}%
  \fi
  \@mainmattertrue
}
\renewcommand\chapter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \global\@topnum\z@
    \@afterindenttrue
    \if@swjtu@bachelor
      \if@mainmatter
        \ctexset{chapter/format = \centering\sffamily\setfontsize{10\bp@}}
      \else
        \ctexset{chapter/format = \centering\sffamily\setfontsize{10\bp@}}
      \fi
      \if@swjtu@addtocspace
        \addtocontents{toc}{\protect\addvspace{12\bp@}}%
      \fi
    \fi
    \secdef\@chapter\@schapter
}


\RequirePackage{pifont}
\def\swjtu@textcircled#1{%
  \ifnum\value{#1} >9
    \ClassError{swjtuthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}
  \fi
  \ding{\the\numexpr\value{#1}+191\relax}}
\RequirePackage{xstring}
\newcommand\spacetitle[1]{%
  \StrLen{#1}[\titlelength]%
  \if@swjtu@bachelor
    \if@mainmatter\relax\else
      \ifnum\titlelength=2\ziju{1}\else
        \ifnum\titlelength=4\ziju{0.5}%
        \fi
      \fi
    \fi
  \else
    \ifnum\titlelength=2\ziju{2}\else
      \ifnum\titlelength=3\ziju{1}\else
        \ifnum\titlelength=4\ziju{0.5}%
        \fi
      \fi
    \fi
  \fi#1}
\setcounter{secnumdepth}{5}
\ctexset{
    chapter = {
        format      = \centering\sffamily\bfseries\setfontsize{18\bp@},
        nameformat  = {},
        titleformat = \spacetitle,
        number      = \thechapter,
        aftername   = \hspace{\ccwd},
        beforeskip  = -14.4\bp@, % 24bp - 31bp
        afterskip   = 14.4\bp@, % 18bp - 10bp
        % fixskip   = true, % will be used in future version
    },
    section = {
        format     = \sffamily\setfontsize{15\bp@},
        aftername  = \hspace{\ccwd},
        beforeskip = 7.2\bp@,
        afterskip  = 7.2\bp@,
    },
    subsection = {
        format     = \sffamily\setfontsize{14\bp@},
        aftername  = \hspace{\ccwd},
        %indent     = 2\ccwd,
        beforeskip = 7.2\bp@,
        afterskip  = 7.2\bp@,
    },
    subsubsection = {
        format     = \sffamily\setfontsize{12\bp@},
        number     = \arabic{subsubsection},
        aftername  = )\hspace{\ccwd},
        indent     = 2\ccwd,
        beforeskip = \z@,
        afterskip  = \z@,
        numberformat += (,
    },
    paragraph = {
        format     = \sffamily\setfontsize{12\bp@},
        number     = (\arabic{paragraph}),
        aftername  = \hspace{\ccwd},
        %indent     = 3\ccwd,
        beforeskip = \z@,
        afterskip  = \z@,
        runin      = false,
    },
    subparagraph = {
        format     = \sffamily\setfontsize{12\bp@},
        number     = \swjtu@textcircled{subparagraph},
        aftername  = \hspace{\ccwd},
        %indent     = 3\ccwd,
        beforeskip = \z@,
        afterskip  = \z@,
        runin      = false,
    },
}
\if@swjtu@bachelor
    \setcounter{secnumdepth}{4}
    \ctexset{
        chapter={
            format = \centering\sffamily\setfontsize{16\bp@},
            number = \chinese{chapter},
        },
        section = {
            format = \centering\sffamily\setfontsize{15\bp@},
            name   = {第,节},
            number = \chinese{section},
        },
        subsection = {
            format    = \sffamily\setfontsize{14\bp@},
            number    = \chinese{subsection},
            aftername = {、},
        },
        subsubsection = {
            format    = {\rmfamily\setfontsize{12\bp@}},
            number    = \arabic{subsubsection},
            aftername = {.\ },
            indent    = \ccwd,
        },
        paragraph = {
            format    = {\rmfamily\setfontsize{12\bp@}},
            name      = {(,)},
            number    = \arabic{paragraph},
            aftername = {\ },
            indent    = 2\ccwd,
        },
        subparagraph = {
            format    = {},
            name      = {},
            indent    = 2\ccwd,
        },
    }
\fi
\newcounter{swjtu@pdfbookmark}
\NewDocumentCommand\swjtu@chapter{o m}{%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \addtocounter{swjtu@pdfbookmark}\@ne
  \IfValueTF{#1}{%
    \pdfbookmark[0]{#1}{swjtuchapter.\theswjtu@pdfbookmark}%
    \chaptermark{#1}%
  }{%
    \pdfbookmark[0]{#2}{swjtuchapter.\theswjtu@pdfbookmark}%
    \chaptermark{#2}%
  }%
  \chapter*{#2}}
\renewcommand\maketitle{%
    \newgeometry{
        top=2.54cm, bottom=2.54cm,
        left=2.6cm, right=2.6cm,
        headheight=0.8cm, headsep=0.45cm,
        footskip=0.8cm}
    \pagenumbering{gobble}
    \pdfbookmark[0]{扉页}{facepage}
    \make@face \cleardoublepage
    \pdfbookmark[0]{封面}{titlepage}
    \make@cntitle \cleardoublepage
    \pdfbookmark[0]{Title page}{entitlepage}
    \make@entitle \cleardoublepage
    \pdfbookmark[0]{原创性声明}{statement}
     \make@statement \cleardoublepage
     \pdfbookmark[0]{贡献声明}{contributions}
     \make@contributions \cleardoublepage
    \restoregeometry
    \if@swjtu@bachelor\relax\else
        \if@swjtu@pdf\relax\else%
%            \pdfbookmark[0]{原创性声明}{statement}
%            \make@statement \cleardoublepage
%            \pdfbookmark[0]{贡献声明}{contributions}
%            \make@contributions \cleardoublepage
        \fi
    \fi
}
\if@swjtu@doctor
  \if@swjtu@professional
    \newcommand\swjtu@thesisname{专业博士学位论文}%
  \else
    \newcommand\swjtu@thesisname{博士学位论文}%
  \fi
  \newcommand\swjtu@enthesisname{A dissertation for doctor's degree}%
\else
  \if@swjtu@master
    \if@swjtu@professional
      \newcommand\swjtu@thesisname{专业硕士学位论文}
    \else
      \newcommand\swjtu@thesisname{硕士学位论文}
    \fi
    \newcommand\swjtu@enthesisname{A dissertation for master's degree}
  \else
    \newcommand\swjtu@thesisname{学士学位论文}
    \newcommand\swjtu@enthesisname{A dissertation for bachelor's degree}
  \fi
\fi
\newcommand\swjtu@supervisorline{%
  \ifx\swjtu@encosupervisor\@empty%
    Supervisor: \swjtu@ensupervisor%
  \else%
    Supervisors: \swjtu@ensupervisor, \swjtu@encosupervisor%
  \fi}
\RequirePackage{tikz}
\newcommand\vpostext[2]{%
    \tikz[remember picture,overlay]%
        \node [yshift=-#1] at (current page.north) [below,align=flush center]%
            {\parbox{\textwidth}{\centering#2}};}
            
\newcommand\make@face{%
    \begin{titlepage}%
%        \tikz[remember picture,overlay]%
%            \node [yshift=-2.54cm] at (current page.north) [below,align=flush center]%
%                {\parbox{\textwidth}{\raggedright\songti\setfontsize{10.5\bp@}\swjtu@classifiedindex}};%
%                {\parbox{\textwidth}{\raggedleft\songti\setfontsize{10.5\bp@}\swjtu@secrettext}}%
%        \tikz[remember picture,overlay]%
%            \node [yshift=-3.1cm] at (current page.north) [below,align=flush center]%
%                {\parbox{\textwidth}{\raggedright\songti\setfontsize{10.5\bp@}\swjtu@UDC}};%
%        \if@swjtu@professional
%          \vpostext{6.3cm}{\sffamily\setfontsize{28\bp@}\ziju{-0.09}\swjtu@thesisname}%
%          \vpostext{9cm}{\setfontsize{26\bp@}\swjtu@professionaltype}%
%          \vpostext{16.3cm}{\sffamily\textbf\setfontsize{22\bp@}\swjtu@title}%
%        \else
%          %\vpostext{6.3cm}{\sffamily\setfontsize{28\bp@}\swjtu@thesisname}%
%          \vpostext{6.0cm}{\songti\ziju{0.5}\bfseries\setfontsize{22\bp@}\swjtu@title}%
%        \fi
        \tikz[remember picture,overlay]
            \node [yshift=-12cm] at (current page.north)
            [below,align=flush center] {{\heiti\setfontsize{18\bp@}论文题目：}\underline{\heiti\setfontsize{18\bp@}\swjtu@mainName}};
        \tikz[remember picture,overlay]%
            \node [yshift=-16cm] at (current page.north)%
            [below,align=flush center] {%
                \setfontsize{18\bp@}%
                \begin{tabular}{@{}l@{}l@{}}%
                    \textsf{{\heiti 学位类别：}} & \swjtu@underline[10em]{\kaishu\swjtu@Ddiscipline}\\
                    \textsf{{\heiti 学科专业：}} & \swjtu@underline[10em]{\kaishu\swjtu@major} \\%
                    \textsf{{\heiti 年\hspace{2em}级：}} & \swjtu@underline[10em]{\kaishu\swjtu@grade} \\%
                    \textsf{{\heiti 研\hspace{0.5em}究\hspace{0.5em}生：}} & \swjtu@underline[10em]{\kaishu\swjtu@author} \\%
                    \textsf{{\heiti 指导教师：}} & \swjtu@underline[10em]{\kaishu\swjtu@supervisor} \\%
                \end{tabular}};%
          \vpostext{24cm}{\kaishu\setfontsize{16\bp@}[30\bp@]\swjtu@Ddate}%
    \end{titlepage}}             
            
\newcommand\make@cntitle{%
    \begin{titlepage}%
        \tikz[remember picture,overlay]%
            \node [yshift=-2.54cm] at (current page.north) [below,align=flush center]%
                {\parbox{\textwidth}{\raggedright\songti\setfontsize{10.5\bp@}\swjtu@classifiedindex}};%
                {\parbox{\textwidth}{\raggedleft\songti\setfontsize{10.5\bp@}\swjtu@secrettext}}%
        \tikz[remember picture,overlay]%
            \node [yshift=-3.1cm] at (current page.north) [below,align=flush center]%
                {\parbox{\textwidth}{\raggedright\songti\setfontsize{10.5\bp@}\swjtu@UDC}};%
        \if@swjtu@professional
          \vpostext{6.3cm}{\sffamily\setfontsize{28\bp@}\ziju{-0.09}\swjtu@thesisname}%
          \vpostext{9cm}{\setfontsize{26\bp@}\swjtu@professionaltype}%
          \vpostext{16.3cm}{\sffamily\textbf\setfontsize{22\bp@}\swjtu@title}%
        \else
          %\vpostext{6.3cm}{\sffamily\setfontsize{28\bp@}\swjtu@thesisname}%
          \vpostext{6.0cm}{\songti\ziju{0.5}\bfseries\setfontsize{22\bp@}\swjtu@title}%
        \fi
        \tikz[remember picture,overlay]
            \node [yshift=-12cm] at (current page.north)
            [below,align=flush center] {\underline{\heiti\setfontsize{22\bp@}\swjtu@mainName}};
        \tikz[remember picture,overlay]%
            \node [yshift=-16cm] at (current page.north)%
            [below,align=flush center] {%
                \setfontsize{16\bp@}%
                \begin{tabular}{@{}l@{}l@{}}%
                    \textsf{{\songti 年\hspace{4em}级}} & \swjtu@underline[10em]{\swjtu@grade} \\%
                    \textsf{{\songti 姓\hspace{4em}名}} & \swjtu@underline[10em]{\swjtu@author} \\%
                    \textsf{{\songti 申请学位级别}} & \swjtu@underline[10em]{\swjtu@discipline}\\
                    \textsf{{\songti 专\hspace{4em}业}} & \swjtu@underline[10em]{\swjtu@major} \\%
                    \textsf{{\songti 指\hspace{0.6em}导\hspace{0.6em}老\hspace{0.6em}师}} & \swjtu@underline[10em]{\swjtu@supervisor} \\%
                \end{tabular}};%
          \vpostext{24cm}{\setfontsize{16\bp@}[30\bp@]\swjtu@date}%
    \end{titlepage}}
    
    
    
\newcommand\make@entitle{%
    \begin{titlepage}%
        \tikz[remember picture,overlay]%
            \node [yshift=-2.54cm] at (current page.north) [below,align=flush center]%
                {\parbox{\textwidth}{\raggedright\setfontsize{10.5\bp@}\swjtu@enclassifiedindex}};%
        \tikz[remember picture,overlay]%
            \node [yshift=-3.1cm] at (current page.north) [below,align=flush center]%
                {\parbox{\textwidth}{\raggedright\fangsong\setfontsize{10.5\bp@}\swjtu@enUDC}};%
        %\vpostext{4.9cm}{\sffamily\setfontsize{26\bp@}[30\bp@]\swjtu@enthesisname}%
        \if@swjtu@professional
          \vpostext{6.2cm}{\setfontsize{16\bp@}\swjtu@enprofessionaltype}%
          \vpostext{15cm}{\sffamily\bfseries\setfontsize{26\bp@}[30\bp@]\swjtu@entitle}%
        \else
          \vpostext{6.0cm}{\setfontsize{18\bp@}[30\bp@]\swjtu@entitle}%
        \fi
%        \tikz[remember picture,overlay]
%            \node [yshift=-12cm] at (current page.north)
%            [below,align=flush center] {\setfontsize{22\bp@}\swjtu@enMainName};
        \vpostext{10.0cm}{\setfontsize{22\bp@}[30\bp@]\swjtu@enMainName}
        \tikz[remember picture,overlay]%
            \node [yshift=-16cm] at (current page.north)%
            [below,align=flush center] {%
                \setfontsize{16\bp@}[30\bp@]%
                \begin{tabular}{@{}l@{ }l@{}}%
                    \multicolumn{1}{r}{\textsf{Grade:}} & \swjtu@grade \\%
                    \multicolumn{1}{r}{\textsf{Candidate:}} & \swjtu@enauthor \\%
                    \multicolumn{1}{r}{\textsf{Academic Degree Applied for:}} & \swjtu@endiscipline \\
                    \multicolumn{1}{r}{\textsf{Speciality:}} & \swjtu@enmajor \\%
                    \multicolumn{1}{r}{\textsf{Supervisor:}} & \swjtu@ensupervisor \\
                \end{tabular}};%
             \vpostext{24cm}{\setfontsize{16\bp@}[30\bp@]\swjtu@endate}%
    \end{titlepage}}
    
    
\newcommand{\swjtu@declaretext} {
本人在学位论文中所做的主要工作或贡献如下：

在这里写一写你的贡献。

}

\newcommand{\swjtu@authorization}{
本学位论文作者完全了解学校有关保留、使用学位论文的规定，同意学校保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。本人授权西南交通大学可以将本论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复印手段保存和汇编本学位论文。
}

\newcommand\make@statement{
\begin{titlepage}
    \vspace*{-0.15cm}
    \begin{center}
      \setfontsize{16\bp@}\textbf{{\heiti 西南交通大学\\学位论文版权使用授权书}}
    \end{center}
    \vskip 1cm

    \swjtu@authorization\par
    \vskip 3.5cm
    本学位论文属于
    
    \begin{enumerate}[leftmargin=1.4cm]
       \item 保密$\square$，在$\quad$年解密后适用本授权书；
       \item 不保密$\square$，使用本授权书。
    \end{enumerate}
     
     $\quad$(请在以上方框内打``\checkmark")    

    \vskip 0.5cm

    {\renewcommand{\arraystretch}{2.0}
    \begin{tabular}{p{7cm}p{7cm}}
      学位论文作者签名： & 指导老师签名： \\
      $\quad$ $\quad$日期： & $\quad$ $\quad$日期： \\
    \end{tabular}}

\end{titlepage}
}

\newcommand\make@contributions{
\begin{titlepage}
    \vspace*{-0.15cm}
    \begin{center}
      \setfontsize{16\bp@}\textbf{{\heiti 西南交通大学硕士学位论文主要工作（贡献）声明}}
    \end{center}
    \vskip 0.5cm

    \swjtu@declaretext\par
    \vskip 1cm
    
    本人郑重声明：所呈交的学位论文，是在导师指导下独立进行研究工作所得的成 果。除文中已经注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰 写过的研究成果。对本文的研究做出贡献的个人和集体，均已在文中作了明确说明。 本人完全了解违反上述声明所引起的一切法律责任将由本人承担。
    \vskip 2.5cm
    
    \begin{flushright}
    学位论文作者签名：$\quad$ $\quad$ $\quad$ $\quad$
    \end{flushright}
    \vskip 0.4cm
    \begin{flushright}
    日期：$\quad$ $\quad$ $\quad$ $\quad$ $\quad$ $\quad$ \ \ \ 
    \end{flushright}

\end{titlepage}
}


\newenvironment{abstract}{%
    \if@swjtu@bachelor
        \chapter{中文内容摘要}%
    \else
        \swjtu@chapter{摘要}%
    \fi
  }{}
\newenvironment{enabstract}{%
    \if@swjtu@bachelor
        \chapter[英文内容摘要]{Abstract}
    \else
        \swjtu@chapter[Abstract]{Abstract}
    \fi}{}
\newcommand\keywords[1]{%
  \par\phantom{empty line}\par\noindent\hangindent=4\ccwd\relax%
  \sffamily{关键词}：#1}
\newcommand\enkeywords[1]{%
  \par\phantom{empty}\par\noindent\hangindent=5.3em\relax%
  \textbf{Key Words}: #1}
\renewcommand\tableofcontents{%
    \cleardoublepage%
    \if@swjtu@bachelor\pagenumbering{arabic}\fi
    \swjtu@chapter{\contentsname}%
    \@starttoc{toc}}
\RequirePackage{titletoc}
\newcommand\swjtu@leaders{\titlerule*[0.5pc]{$\cdot$}}
\if@swjtu@bachelor
    \titlecontents{chapter}
        [\z@]
        {\setfontsize{12\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
        {}{\swjtu@leaders\contentspage}
    \titlecontents{section}
        [\ccwd]
        {\setfontsize{12\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
        {}{\swjtu@leaders\contentspage}
    \titlecontents{subsection}
        [2\ccwd]
        {\setfontsize{12\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel、}}
        {}{\swjtu@leaders\contentspage}
\else
    \titlecontents{chapter}  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%目录控制
        [\z@]
        {\addvspace{6\bp@}\sffamily\setfontsize{14\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\unskip\hskip\ccwd\relax}}
        {}{\swjtu@leaders\setfontsize{12\bp@}[20\bp@]\contentspage}
    \titlecontents{section}
        [\ccwd]
        {\setfontsize{12\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
        {}{\swjtu@leaders\setfontsize{12\bp@}[20\bp@]\contentspage}
    \titlecontents{subsection}
        [2\ccwd]
        {\setfontsize{10.5\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
        {}{\swjtu@leaders\setfontsize{12\bp@}[20\bp@]\contentspage}
\fi
\titlecontents{figure}
    [\ccwd]
    {\addvspace{6\bp@}\setfontsize{12\bp@}}
    {\thecontentslabel\hspace*{0.5em}}
    {}{\swjtu@leaders\contentspage}
\titlecontents{table}
    [\ccwd]
    {\addvspace{6\bp@}\setfontsize{12\bp@}}
    {\thecontentslabel\hspace*{0.5em}}
    {}{\swjtu@leaders\contentspage}
    % 为了让图目录另页起，重新定义 \cs{listoffigures}
\renewcommand\listoffigures{%
    \if@swjtu@bachelor\clearpage\else\cleardoublepage\fi
    \swjtu@chapter{\listfigurename}%
    \@starttoc{lof}}
    % 表目录同样
\renewcommand\listoftables{%
    \if@swjtu@bachelor\clearpage\else\cleardoublepage\fi
    \swjtu@chapter{\listtablename}%
    \@starttoc{lot}}
\if@swjtu@bachelor
    \g@addto@macro\frontmatter{\@swjtu@addtocspacefalse}%
    \g@addto@macro\mainmatter{\@swjtu@addtocspacetrue}%
    \g@addto@macro\backmatter{\@swjtu@addtocspacefalse}%
    \g@addto@macro\appendix{\@swjtu@addtocspacefalse}%
\fi
\newenvironment{notation}{%
    \if@swjtu@bachelor\clearpage\else\cleardoublepage\fi
    \thispagestyle{swjtu@notation}
    \ctexset{chapter/format = \centering\rmfamily\setfontsize{12\bp@}}
    \swjtu@chapter{\swjtu@notationname}
    \setfontsize{10.5\bp@}[16\bp@]
    \setlength{\itemsep}{\z@}}{}
\newdimen\bp@ \bp@=1bp
\if@swjtu@bachelor
  \renewcommand\normalsize{%
     \@setfontsize\normalsize{12\bp@}{22\bp@}%
     \abovedisplayskip 0\bp@ \@plus0\bp@ \@minus0\bp@
     \abovedisplayshortskip \z@ \@plus0\bp@
     \belowdisplayshortskip 0\bp@ \@plus0\bp@ \@minus0\bp@
     \belowdisplayskip \abovedisplayskip
     \let\@listi\@listI}
  \normalsize
  \renewcommand\small{%
     \@setfontsize\small{10.5\bp@}{19.25\bp@}%
     \abovedisplayskip 10.5\bp@ \@plus3\bp@ \@minus6\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
     \def\@listi{\leftmargin\leftmargini
                 \topsep 9\bp@ \@plus3\bp@ \@minus5\bp@
                 \parsep 4.5\bp@ \@plus2\bp@ \@minus\bp@
                 \itemsep \parsep}%
     \belowdisplayskip \abovedisplayskip
  }
  \renewcommand\footnotesize{%
     \@setfontsize\footnotesize{9\bp@}{16.5\bp@}
     \abovedisplayskip 9\bp@ \@plus2\bp@ \@minus5\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 6\bp@ \@plus3\bp@ \@minus3\bp@
     \def\@listi{\leftmargin\leftmargini
                 \topsep 6\bp@ \@plus2\bp@ \@minus2\bp@
                 \parsep 3\bp@ \@plus2\bp@ \@minus\bp@
                 \itemsep \parsep}%
     \belowdisplayskip \abovedisplayskip
  }
  \renewcommand\scriptsize{\@setfontsize\scriptsize{7.5\bp@}{13.75\bp@}}
  \renewcommand\tiny{\@setfontsize\tiny{6.5\bp@}{11.92\bp@}}
  \renewcommand\large{\@setfontsize\large{15\bp@}{27.5\bp@}}
  \renewcommand\Large{\@setfontsize\Large{18\bp@}{33\bp@}}
  \renewcommand\LARGE{\@setfontsize\LARGE{22\bp@}{40.33\bp@}}
  \renewcommand\huge{\@setfontsize\huge{24\bp@}{44\bp@}}
  \renewcommand\Huge{\@setfontsize\Huge{26\bp@}{47.67\bp@}}
\else
   \renewcommand\normalsize{%
     \@setfontsize\normalsize{12\bp@}{20\bp@}%
     \abovedisplayskip -7\bp@ \@plus3\bp@ \@minus7\bp@
     %\abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 10.5\bp@ \@plus3\bp@ \@minus7\bp@
     %\belowdisplayskip \abovedisplayskip
     \let\@listi\@listI}
  \normalsize
  \renewcommand\small{%
     \@setfontsize\small{10.5\bp@}{17.5\bp@}%
     \abovedisplayskip 10.5\bp@ \@plus3\bp@ \@minus6\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
     \def\@listi{\leftmargin\leftmargini
                 \topsep 9\bp@ \@plus3\bp@ \@minus5\bp@
                 \parsep 4.5\bp@ \@plus2\bp@ \@minus\bp@
                 \itemsep \parsep}%
     \belowdisplayskip \abovedisplayskip
  }
  \renewcommand\footnotesize{%
     \@setfontsize\footnotesize{9\bp@}{15\bp@}
     \abovedisplayskip 0\bp@ \@plus2\bp@ \@minus5\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 0\bp@ \@plus3\bp@ \@minus3\bp@
     \def\@listi{\leftmargin\leftmargini
                 \topsep 6\bp@ \@plus2\bp@ \@minus2\bp@
                 \parsep 3\bp@ \@plus2\bp@ \@minus\bp@
                 \itemsep \parsep}%
     \belowdisplayskip \abovedisplayskip
  }
  \renewcommand\scriptsize{\@setfontsize\scriptsize{7.5\bp@}{12.5\bp@}}
  \renewcommand\tiny{\@setfontsize\tiny{6.5\bp@}{10.83\bp@}}
  \renewcommand\large{\@setfontsize\large{15\bp@}{25\bp@}}
  \renewcommand\Large{\@setfontsize\Large{18\bp@}{30\bp@}}
  \renewcommand\LARGE{\@setfontsize\LARGE{22\bp@}{36.67\bp@}}
  \renewcommand\huge{\@setfontsize\huge{24\bp@}{40\bp@}}
  \renewcommand\Huge{\@setfontsize\Huge{26\bp@}{43.33\bp@}}
\fi
\setlength{\parindent}{2\ccwd}
\setlength{\parskip}{\z@}
\renewcommand{\baselinestretch}{1.035} %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%行间距
\RequirePackage{upgreek}
\renewcommand\pi{\uppi}
\RequirePackage{amssymb}
\renewcommand\le{\leqslant}
\renewcommand\leq{\leqslant}
\renewcommand\ge{\geqslant}
\renewcommand\geq{\geqslant}
\DeclareMathSizes{10.5bp}{10.5bp}{7.35bp}{5.25bp}
\renewcommand{\topfraction}{.65}
\renewcommand{\bottomfraction}{.65}
\renewcommand\textfraction{.15}
\renewcommand{\floatpagefraction}{.6}
\RequirePackage{caption}
\RequirePackage{calc}
\DeclareCaptionLabelSeparator{zhspace}{\hspace{\ccwd}}
\captionsetup{
    format = hang,
    font = small,
    labelsep = zhspace,
}
\if@swjtu@bachelor\else
    %\captionsetup{font+=bf}
\fi
\captionsetup[figure]{
    position = bottom,
    aboveskip = 0bp,
%    belowskip = {12bp-\intextsep},
    belowskip = -7bp,
    font = small,
}
\captionsetup[table]{
    position = top,
    aboveskip = 0bp,
    belowskip = 0bp,
    font = small,
}
\newcommand\note[1]{%
    \captionsetup{position = bottom, font = small}
    \caption*{\hangindent=2\ccwd\relax\swjtu@notesname\rmfamily#1}}
\renewcommand{\thefootnote}{\swjtu@textcircled{footnote}}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.25\textwidth
  \kern2.6\p@}
\renewcommand\@makefntext[1]{%
  \parindent 2\ccwd%
  \noindent
  \hb@xt@2\ccwd{\hss\@makefnmark}#1}
\if@swjtu@numerical
  \PassOptionsToPackage{sort&compress}{natbib}
\fi
\RequirePackage{natbib}
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\def\tmp@numerical{numerical}
\def\tmp@authoryear{authoryear}
\newcommand\swjtubibstyle[1]{%
  \def\tmp@gbt{#1}%
  \ifx\tmp@gbt\tmp@numerical%
    \bibliographystyle{swjtuthesis-numeric}%
  \else%
    \ifx\tmp@gbt\tmp@authoryear%
      \bibliographystyle{swjtuthesis-author-year}%
    \else%
      \PackageError{swjtuthesis}{Unknown argument #1.}
      {It should be `numerical' or `authoryear'.}
    \fi%
  \fi%
}
\if@swjtu@bachelor
  \if@swjtu@super
    \citestyle{super}
  \else
    \citestyle{numbers}
  \fi
  \bibliographystyle{swjtuthesis-bachelor}%
\else
  \if@swjtu@numerical
    \if@swjtu@super
      \citestyle{super}
    \else
      \citestyle{numbers}
    \fi
    \bibliographystyle{swjtuthesis-numeric}%
  \else
    \citestyle{authoryear}
    \bibliographystyle{swjtuthesis-author-year}%
  \fi
\fi
\patchcmd\NAT@citexnum{%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\NAT@cmt#2\fi
  }{}%
  \NAT@mbox{\NAT@@close}%
}{%
  \NAT@mbox{\NAT@@close}%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\textsuperscript{#2}\fi
  }{}%
}{}{}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
\if*#2*\else#2\NAT@spacechar\fi
\unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
   \else #1\fi\endgroup}
\renewcommand\NAT@citenum%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\patchcmd{\NAT@citex}{%
  \if*#2*\else\NAT@cmt#2\fi
  \if\relax\NAT@date\relax\else\NAT@@close\fi
}{%
  \if\relax\NAT@date\relax\else\NAT@@close\fi
  \if*#2*\else\textsuperscript{#2}\fi
}{}{}
\renewcommand\NAT@cite%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\renewcommand\bibfont{\setfontsize{10.5bp}[20bp]}
\setlength{\bibsep}{\z@}
\setlength{\bibhang}{2\ccwd}
\renewcommand\@biblabel[1]{[#1]\hfill}
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
  \do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
  \do\u\do\v\do\w\do\x\do\y\do\z%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J%
  \do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T%
  \do\U\do\V\do\W\do\X\do\Y\do\Z%
  \do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9\do\0%
}
\renewcommand\bibsection{%
    \@mainmatterfalse
    \chapter{\bibname}%
    \@mainmattertrue
}
\newenvironment{acknowledgements}{%
  \if@swjtu@bachelor
    \swjtu@chapter{\swjtu@acknowledgementsname}%
  \else
    \chapter{\swjtu@acknowledgementsname}%
  \fi
}{}
\newenvironment{conclusion}{%
  \if@swjtu@bachelor
    \swjtu@chapter{\swjtu@acknowledgementsname}%
  \else
    \chapter{\swjtu@conclusionname}%
  \fi
}{}
\newenvironment{publications}{\chapter{\swjtu@publicationsname}}{}
