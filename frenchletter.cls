%%
% class: frenchletter
% author: Olivier CHURLAUD
% license: WTFPL
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{frenchletter}[2016/08/15 French Letter format]
\LoadClass{article}

\thispagestyle{empty}

\def\setDate{\today}
\def\setPlace{Paris}
\def\setSignature{Your Name}
\def\setObject{}
\def\setAdressTo{}
\def\setAdressFrom{}

\newcommand{\addressTo}[1]{\def\setAddressTo{\noindent\hfill \begin{minipage}{0.4\linewidth}#1\end{minipage}\par}}

\newcommand{\addressFrom}[1]{\def\setAddressFrom{\noindent \begin{minipage}{0.4\linewidth}#1\end{minipage}\par}}

\renewcommand{\date}[1]{\def\setDate{#1}}
\newcommand{\place}[1]{\def\setPlace{#1}}
\newcommand{\signature}[1]{\def\setSignature{#1}}

\def\topdate{\noindent\hfill \begin{minipage}{0.4\linewidth}\setPlace,~\setDate\end{minipage}\par}

\newcommand{\object}[1]{\def\setObject{#1}}
\newcommand{\opening}[1]{#1\par}
\newcommand{\closing}[1]{#1\par}

\setlength{\parindent}{2em}
\setlength{\parskip}{1em}

\AtBeginDocument{
    \ifx\setAddressFrom\empty
    \else
        \setAddressFrom
    \fi
    \ifx\setAddressTo\empty
    \else
        \setAddressTo
    \fi

    \vfill

    \ifx\setObject\empty
    \else
        \noindent Objet: \setObject \par
        \vspace{1em}
    \fi

    \topdate
    \vspace{2em}
    }

\AtEndDocument{
    \vspace{3em}
    \begin{flushright}
        \setSignature
    \end{flushright}

    \vfill
    }
