% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "project.cls",
%     version         = "0.0",
%     date            = "27 February 2016",
%     codetable       = "UTF-8",
%     keywords        = "LaTeX, Template, Research Project",
%     docstring       = "A LaTeX Template class for a Research Project."
% --------------------------------------------------------------------
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{project}[2016/2/27]
%todo: delete draft option
%todo: add correct BCOR
\LoadClass[
  draft=true,
  a4paper,
  english,
  fontsize=12pt,
  twoside=true,
  open=right,
  numbers=autoendperiod,
  BCOR=4mm,
  DIV=12,
  titlepage=firstiscover,
  ]{scrreprt}
%
% General stuff
\RequirePackage[utf8]{inputenc}
%
% Setup Hyperref
\RequirePackage{hyperref}
\hypersetup{
  pdfusetitle,
  bookmarksnumbered,
  pdfstartview={FitH},
  linktoc=all,
  %colorlinks,
  citecolor=DarkRed,
  filecolor=black,
  linkcolor=black,
  urlcolor=SteelBlue,
  pdfpagemode={UseOutlines},
}
%
% For the creation of an index
% \RequirePackage{makeidx}
% \makeindex
%
% Include Images
\RequirePackage{graphicx}
\RequirePackage{float}
% \RequirePackage{epstopdf}
%
% Colors
\RequirePackage{xcolor}
\include{mycolors}
%
% Fonts and symbols
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{bbm}
%
% User defined Theorems
\RequirePackage{amsthm}
%
% bibliography, references with (References as title)
%\RequirePackage[square, comma, numbers, sort&compress]{natbib}
\renewcommand\bibname{References}
%
% Plotting and Drawing
\RequirePackage{tikz}
\usetikzlibrary{calc, fadings, decorations.pathreplacing}
\RequirePackage{pgfplots}
\RequirePackage{pgfplotstable}
\usetikzlibrary{external}
\tikzexternalize[prefix=cache/]
%
\pgfplotstableset{col sep=comma, header=false}
\def\sharedplotwidth{8}
\def\singleplotwidth{9}
\def\largeplotwidth{10}
\pgfplotsset{%
  width=\singleplotwidth cm,
  compat=newest,
  enlargelimits=false}
%
% Provide better cycle lists, add them as default
% by using "cycle list name=..." to pgfplotsset
\pgfplotscreateplotcyclelist{custom}{
  {color=DarkRed},
  {color=LightRed},
  {color=DarkOrange},
  {color=LightOrange},
  {color=MidYellow},
  {color=LightBlue},
  {color=MiddleBlue},
  {color=SkyBlue},
  {color=SeaBlue},
}
\pgfplotscreateplotcyclelist{rdbu}{
  {color=RdBu-11-1},
  {color=RdBu-11-2},
  {color=RdBu-11-3},
  {color=RdBu-11-4},
  {color=RdBu-11-5},
  {color=RdBu-11-7},
  {color=RdBu-11-8},
  {color=RdBu-11-9},
  {color=RdBu-11-10},
  {color=RdBu-11-11},
}
\pgfplotscreateplotcyclelist{set2}{
  {color=Set2-8-1},
  {color=Set2-8-2},
  {color=Set2-8-3},
  {color=Set2-8-4},
  {color=Set2-8-5},
  {color=Set2-8-6},
  {color=Set2-8-7},
  {color=Set2-8-8},
}
\pgfplotscreateplotcyclelist{marklist}{%
  {color=DarkOrange, mark=x},
  {color=MiddleBlue, mark=+},
  {color=DarkRed, mark=o},
  {color=MidYellow, mark=square},
  {color=LightRed, mark=triangle},
}
%
% Tables
\RequirePackage{tabularx}
\newcolumntype{Y}{>{\centering\arraybackslash}X}
\RequirePackage{booktabs}
%
% Algorithms
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
%
% Ifthenelse decisions
\RequirePackage{ifthen}
%
% Fix spacing with \left and \right
\let\originalleft\left
\let\originalright\right
\renewcommand{\left}{\mathopen{}\mathclose\bgroup\originalleft}
\renewcommand{\right}{\aftergroup\egroup\originalright}
%
% include package and the command for the titlepage
\RequirePackage{titlepage}
\include{titleinfo}
%
% include all mathematical definitions and commands
\include{commands}
%
% include all tikz drawing commands
\include{tikzcommands}
