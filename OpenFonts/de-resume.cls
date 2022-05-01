% Intro Options
\ProvidesClass{de-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Scale=0.9, Color=primary, Path = fonts/montserrat/,BoldItalicFont=Montserrat-BoldItalic,BoldFont=Montserrat-Regular,ItalicFont=Montserrat-Italic]{Montserrat-Regular}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/montserrat/]{Montserrat-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/montserrat/]{Montserrat-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\centering{
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/oswald/]{Oswald-Light}\selectfont #1 
\fontspec[Path = fonts/oswald/]{Oswald-Light}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/montserrat/]{Montserrat-Medium}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0pt}}
\vspace{-15pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}
\newcommand{\subsectionsep}{\vspace{8pt}}
\newcommand{\locationsep}{\vspace{6pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/oswald/]{Oswald-Light}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/oswald/]{Oswald-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/oswald/]{Oswald-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

\newcommand{\runsubexperience}[1]{
\color{subheadings}\fontspec[Path = fonts/oswald/]{Oswald-MediumItalic}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/montserrat/]{Montserrat-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/oswald/]{Oswald-Regular}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

