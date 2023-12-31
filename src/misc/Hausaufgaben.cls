\NeedsTeXFormat{LaTeX2e}
% \ProvidesClass{HA}[:)]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

%%%%%%%%%%%%%%%% Packages %%%%%%%%%%%%%%%%

\RequirePackage{geometry}  % page formats
\RequirePackage{fancyhdr}  % fancy header and footer lines 
\RequirePackage{xifthen}
\RequirePackage{xstring}  % string
\RequirePackage{amsmath}  % advanced math 
\RequirePackage{mathtools}  % better looking math
\RequirePackage[no-math]{fontspec}  % custom fonts ! need XELATEX
\RequirePackage[warnings-off={mathtools-colon,mathtools-overbracket}, mathrm=sym]{unicode-math}
\RequirePackage[ngerman]{babel}  % language support ngerman
\RequirePackage{array}  % special math thing
\RequirePackage{csquotes}  % better quots
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{float}  % better svg file handling
\RequirePackage{graphicx}  % external grafics
\RequirePackage{hyperref}  % links
\RequirePackage{listings}  % better code snippts
\RequirePackage{multicol}  % something with collums
\RequirePackage[usetransparent=false]{svg}  % svg support
\RequirePackage[most]{tcolorbox}  % for boxes
\RequirePackage{tikz}  % draw it yourself if you can
\RequirePackage{wrapfig}  % figure in text
\RequirePackage{xcolor}  % colors
\RequirePackage{xhfill}  % 
\RequirePackage{booktabs}
\RequirePackage{setspace}
\RequirePackage{anyfontsize}
\RequirePackage{epigraph}
\RequirePackage{etoolbox}
\RequirePackage{siunitx}

%%%%%%%%%%%%%%%% Counters %%%%%%%%%%%%%%%%

\newcounter{AnzahlStudenten}%
\newcounter{TeilaufgabenZustand}

\newcounter{ANummer}
\setcounter{ANummer}{1}
\newcounter{LNummer}
\setcounter{LNummer}{1}

%%%%%%%%%%%%%%%% Booleans %%%%%%%%%%%%%%%%

\newboolean{AllSans}
\newboolean{Parskip}
\newboolean{Logo}
\newboolean{NameZuLang}

\newcommand{\AllSans}[1]{
	\setboolean{AllSans}{#1}
}

\newcommand{\Parskip}[1]{
	\setboolean{Parskip}{#1}
}

\newcommand{\Logo}[1]{
	\setboolean{Logo}{#1}
}

\newcommand{\@NameZuLang}[1]{
	\setboolean{NameZuLang}{#1}
}

%%%%%%%%%%%%%%%% Variables %%%%%%%%%%%%%%%%

\newcommand*{\@VornameEins}{}%
\newcommand{\SetVornameEins}[1]{\gdef\@VornameEins{%
		#1%
	}}%

\newcommand*{\@VornameZwei}{}%
\newcommand{\SetVornameZwei}[1]{\gdef\@VornameZwei{%
		#1%
	}}%

\newcommand*{\@VornameDrei}{}%
\newcommand{\SetVornameDrei}[1]{\gdef\@VornameDrei{%
		#1%
	}}%

\newcommand*{\@VornameVier}{}%
\newcommand{\SetVornameVier}[1]{\gdef\@VornameVier{%
		#1%
	}}%

\newcommand*{\@VornameFuenf}{}%
\newcommand{\SetVornameFuenf}[1]{\gdef\@VornameFuenf{%
		#1%
	}}%

\newcommand*{\@NachnameEins}{}%
\newcommand{\SetNachnameEins}[1]{\gdef\@NachnameEins{%
		#1%
	}}%

\newcommand*{\@NachnameZwei}{}%
\newcommand{\SetNachnameZwei}[1]{\gdef\@NachnameZwei{%
		#1%
	}}%

\newcommand*{\@NachnameDrei}{}%
\newcommand{\SetNachnameDrei}[1]{\gdef\@NachnameDrei{%
		#1%
	}}%

\newcommand*{\@NachnameVier}{}%
\newcommand{\SetNachnameVier}[1]{\gdef\@NachnameVier{%
		#1%
	}}%

\newcommand*{\@NachnameFuenf}{}%
\newcommand{\SetNachnameFuenf}[1]{\gdef\@NachnameFuenf{%
		#1%
	}}%

\newcommand*{\@MatrikelnummerEins}{}%
\newcommand{\SetMatrikelnummerEins}[1]{\gdef\@MatrikelnummerEins{%
		#1%
	}}%

\newcommand*{\@MatrikelnummerZwei}{}%
\newcommand{\SetMatrikelnummerZwei}[1]{\gdef\@MatrikelnummerZwei{%
		#1%
	}}%

\newcommand*{\@MatrikelnummerDrei}{}%
\newcommand{\SetMatrikelnummerDrei}[1]{\gdef\@MatrikelnummerDrei{%
		#1%
	}}%

\newcommand*{\@MatrikelnummerVier}{}%
\newcommand{\SetMatrikelnummerVier}[1]{\gdef\@MatrikelnummerVier{%
		#1%
	}}%

\newcommand*{\@MatrikelnummerFuenf}{}%
\newcommand{\SetMatrikelnummerFuenf}[1]{\gdef\@MatrikelnummerFuenf{%
		#1%
	}}%

\newcommand*{\@ModulKurz}{}%
\newcommand{\SetModulKurz}[1]{\gdef\@ModulKurz{%
		#1%
	}}%

\newcommand*{\@ModulLang}{}%
\newcommand{\SetModulLang}[1]{\gdef\@ModulLang{%
		#1%
	}}%

\newcommand*{\@Aufgabenblatt}{}%
\newcommand{\SetAufgabenblatt}[1]{\gdef\@Aufgabenblatt{%
		#1%
	}}%

\newcommand*{\@DefaultLabel}{}%
\newcommand{\SetDefaultLabel}[1]{\gdef\@DefaultLabel{%
		#1%
	}}%

\newcommand*{\@FontMath}{}%
\newcommand{\SetFontMath}[1]{\gdef\@FontMath{%
		#1%
	}}%

\newcommand*{\@FontSans}{}%
\newcommand{\SetFontSans}[1]{\gdef\@FontSans{%
		#1%
	}}%

\newcommand*{\@FontSerif}{}%
\newcommand{\SetFontSerif}[1]{\gdef\@FontSerif{%
		#1%
	}}%

\newcommand*{\@FontMono}{}%
\newcommand{\SetFontMono}[1]{\gdef\@FontMono{%
		#1%
	}}%

\newcommand*{\@Colors}{}%
\newcommand{\SetColors}[1]{\gdef\@Colors{%
		#1%
	}}%

\newcommand*{\@LogoPath}{}%
\newcommand{\SetLogoPath}[1]{\gdef\@LogoPath{%
		#1%
	}}%

\newcommand*{\@LogoScale}{}%
\newcommand{\SetLogoScale}[1]{\gdef\@LogoScale{%
		#1%
	}}%

\newcommand*{\@Titlespacing}{}%
\newcommand{\SetTitlespacing}[1]{\gdef\@Titlespacing{%
		#1%
	}}%

\newcommand*{\@LogoPlacement}{}%
\newcommand{\SetLogoPlacement}[1]{\gdef\@LogoPlacement{%
		#1%
	}}%

\newcommand*{\@NameLayout}{}%
\newcommand{\SetNameLayout}[1]{\gdef\@NameLayout{%
		#1%
	}}%


\newcommand*{\@InspiwationyawQuote}{}%
\newcommand{\SetInspiwationyawQuote}[1]{\gdef\@InspiwationyawQuote{%
		#1%
	}}%

\newcommand*{\@Quotepewson}{}%
\newcommand{\SetQuotepewson}[1]{\gdef\@Quotepewson{%
		#1%
	}}%


%%%%%%%%%%%%%%%% Commands %%%%%%%%%%%%%%%%

\newcommand{\ifequals}[3]{\ifthenelse{\equal{#1}{#2}}{#3}{}}
\newcommand{\case}[2]{#1 #2} % Dummy, so \renewcommand has something to overwrite...
\newenvironment{switch}[1]{\renewcommand{\case}{\ifequals{#1}}}{}

\newcommand{\BOXC}{\makebox[0pt][l]{$\square$}\raisebox{.15ex}{\hspace{0.1em}$\checkmark$}}  % checked
\newcommand{\BOXU}{\makebox[0pt][l]{$\square$}\raisebox{.15ex}{\hspace{0.1em}}\quad}  % unchecked
\newcommand{\QED}{\null\nobreak\hfill\ensuremath{\square}}  % proved
\newcommand{\VORSTELLEN}{
	Auf 1 & & &\\[3mm]
	Auf 2 & & &\\[3mm]
	Auf 3 & & &\\[3mm]
	Auf 4 & & &\\[3mm]
	Auf 5 & & &
}

\newenvironment{Aufgabe}[2][label = \sffamily\@DefaultLabel]{  % Aufgabentitel
	\newpage
	\section*{\Large\sffamily\mdseries Aufgabe \@Aufgabenblatt.\theANummer \space \large\textit{#2}}
	\setlist[enumerate]{#1}
	\setcounter{TeilaufgabenZustand}{0}
}{
	\ifnum\theTeilaufgabenZustand=1
		\end{enumerate}
	\fi
	\addtocounter{ANummer}{1}
}

\newenvironment{Loesung}[1][label = \sffamily\@DefaultLabel]{  % Lösungstitel
	\section*{\Large\sffamily\mdseries Lösung \@Aufgabenblatt.\theLNummer}
	\setlist[enumerate]{#1}
	\setcounter{TeilaufgabenZustand}{0}
}{
	\ifnum\theTeilaufgabenZustand=1
		\end{enumerate}
	\fi
	\addtocounter{LNummer}{1}
}

\newcommand{\Teilaufgabe}{
	\ifnum\theTeilaufgabenZustand=1
		\item
	\else
		\begin{enumerate}[resume]
			\item
			      \fi
			      \setcounter{TeilaufgabenZustand}{1}
			      }

			      \newcommand{\Aufgabenstellung}{
			      \ifnum\theTeilaufgabenZustand=1
		\end{enumerate}
	\fi
	\setcounter{TeilaufgabenZustand}{2}
}

\newcommand{\SetAnzahlStudenten}[1]{\setcounter{AnzahlStudenten}{#1}}

\newcommand{\SetFontsize}[1]{
	\let\savednewcommand\newcommand
	\let\newcommand\renewcommand
	\makeatletter
	\input{size#1.clo}
	\makeatother
	\let\newcommand\savednewcommand
}

\newcommand{\SetSpacing}[2][1]{
	\ifnum#2=1
		\singlespacing
	\else
		\ifnum#2=2
			\onehalfspacing
		\else
			\ifnum#2=3
				\doublespacing
			\else
				\setstretch{#1}
			\fi
		\fi
	\fi
}

\newcommand{\Titel}{%
	\makeatletter
	\begin{titlepage}%
		\ifthenelse{
			\boolean{Logo}
		}{
			\input{../src/misc/LogoPlacement/\@LogoPlacement.tex}
		}{}
		\begin{center}%
			\vspace*{\@Titlespacing}
			{\Huge\mdseries\sffamily  Aufgabenblatt \@Aufgabenblatt \par}%
			{\large\sffamily \@date \par} % Set date in \large size.
			\vspace{2cm}
			{
				\input{../src/misc/NameLayout/\@NameLayout.tex}
			}%
			\vspace{3cm}

			%\epigraph{\centering\@InspiwationyawQuote}{--- \textup{\@Quotepewson}} setquote

			\vfill
			{\normalsize\sffamily \@ModulLang \par}
			{\normalsize\sffamily\bfseries Universität Hamburg\par}
		\end{center}\par
	\end{titlepage}%
	\makeatother
}

%%%%%%%%%%%%%%%% initialization %%%%%%%%%%%%%%%%

\newcommand{\initColors}{
	\input{../src/colors/\@Colors.tex}
}

\newcommand{\initFont}{
	\makeatletter
	\input{../src/fonts/Math/\@FontMath.tex}
	\input{../src/fonts/Mono/\@FontMono.tex}
	\input{../src/fonts/Sans/\@FontSans.tex}
	\input{../src/fonts/Serif/\@FontSerif.tex}
	\ifthenelse{
		\boolean{AllSans}
	}{
		\renewcommand{\familydefault}{\sfdefault}
	}{}
	\makeatother
}

\newcommand{\initFancy}{
	\makeatletter
	\pagestyle{fancy}
	\fancyhf{}

	\def\@thresh{30}
	\StrLen{\@NachnameEins,\@NachnameZwei}[\@LenNachnamenZwei]
	\StrLen{\@NachnameEins \@NachnameZwei \@NachnameDrei}[\@LenNachnamenDrei]
	\StrLen{\@NachnameEins,\@NachnameZwei, \@NachnameDrei,\@NachnameVier}[\@LenNachnamenVier]
	\StrLen{\@NachnameEins,\@NachnameZwei,\@NachnameDrei,\@NachnameVier,\@NachnameFuenf}[\@LenNachnamenFuenf]

	\fancyhead[L]{
		\begin{switch}{\theAnzahlStudenten}
			\case{2}{
				\ifthenelse{\@LenNachnamenZwei > \@thresh}{
					\sffamily\slshape \@ModulKurz \quad Aufgabenblatt \@Aufgabenblatt
				}{
					\sffamily\slshape Aufgabenblatt \@Aufgabenblatt
				}
			}
			\case{3}{
				\ifthenelse{\@LenNachnamenDrei > \@thresh}{
					\sffamily\slshape \@ModulKurz \quad Aufgabenblatt \@Aufgabenblatt
				}{
					\sffamily\slshape Aufgabenblatt \@Aufgabenblatt
				}
			}
			\case{4}{
				\ifthenelse{\@LenNachnamenVier > \@thresh}{
					\sffamily\slshape \@ModulKurz \quad Aufgabenblatt \@Aufgabenblatt
				}{
					\sffamily\slshape Aufgabenblatt \@Aufgabenblatt
				}
			}
			\case{5}{
				\ifthenelse{\@LenNachnamenFuenf > \@thresh}{
					\sffamily\slshape \@ModulKurz \quad Aufgabenblatt \@Aufgabenblatt
				}{
					\sffamily\slshape Aufgabenblatt \@Aufgabenblatt
				}
			}
		\end{switch}}

	\fancyhead[R]{\slshape
		\begin{switch}{\theAnzahlStudenten}
			\case{2}{\sffamily\@NachnameEins, \@NachnameZwei}
			\case{3}{\sffamily\@NachnameEins \@NachnameZwei \@NachnameDrei}
			\case{4}{\sffamily\@NachnameEins, \@NachnameZwei, \@NachnameDrei, \@NachnameVier}
			\case{5}{\sffamily\@NachnameEins, \@NachnameZwei, \@NachnameDrei, \@NachnameVier, \@NachnameFuenf}
		\end{switch}}

	\fancyhead[C]{
		\begin{switch}{\theAnzahlStudenten}
			\case{2}{
				\ifthenelse{\@LenNachnamenZwei > \@thresh}{}{
					\sffamily\slshape \@ModulKurz
				}
			}
			\case{3}{
				\ifthenelse{\@LenNachnamenDrei > \@thresh}{}{
					\sffamily\slshape \@ModulKurz
				}
			}
			\case{4}{
				\ifthenelse{\@LenNachnamenVier > \@thresh}{}{
					\sffamily\slshape \@ModulKurz
				}
			}
			\case{5}{
				\ifthenelse{\@LenNachnamenFuenf > \@thresh}{}{
					\sffamily\slshape \@ModulKurz
				}
			}
		\end{switch}}

	\fancyfoot[C]{\sffamily\thepage}
	\makeatother
}

\newcommand{\initialize}{
	\ifthenelse{
		\boolean{Parskip}
	}{
		\usepackage[parfill]{parskip}  % natural linebreaks
	}{}
	\initColors
	\initFancy
	\initFont
}