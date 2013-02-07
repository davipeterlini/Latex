%%
%% This is file `ppgccusf.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ppgccusf.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% A license is needed here too...
%% 

\usepackage[utf8]{inputenc}

\def\filename{ppgccufscar.dtx}
\def\fileversion{v1.0}
\def\filedate{2013/02/04}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ppgccufscar}[\filedate\ \fileversion\ PPGCC USF Dissertations and Thesis]


% Opção para escolher se a monografia é de dissertação (default), quali ou tese.

\providecommand{\PPGtipodoc}{Monografia}
\providecommand{\PPGtipotitulo}{Mestre}
\providecommand{\Btipotitulo}{Bacharel}

\DeclareOption{quali}
{\renewcommand{\PPGtipodoc}{Qualificação}}

\DeclareOption{tese}
{%
\renewcommand{\PPGtipodoc}{Tese}
\renewcommand{\PPGtipotitulo}{Doutor}
}

% Passando todos os parametros desconhecidos por esta classe para a classe abnt. 
% Deve-se carrega-la depois desses comandos.
% Isso é importante para que o usuario possa passar comandos diretamente para a classe abnt.

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abnt}}
\ProcessOptions\relax

%Preambulo
\LoadClass[12pt,a4paper,ruledheader,normalfigtabnum,normaltoc,times,anapnoname]{abnt}


% Colocando a fonte das legendas de figuras, tabelas, etc. como pequena e em negrito.
\RequirePackage[font={small,bf}]{caption}

% Carregando pacote para formatacao das citações e referências
% Conforme a ABNT (norma de 2006 - mas não deve ter mudado muita coisa)
\RequirePackage[alf]{abntcite}
\RequirePackage[english,brazil]{babel}
\RequirePackage{ifthen}

% to stylize the chaptersand headers
\RequirePackage{fncychap}
\RequirePackage{fancyhdr}

% Comando para definir a área de concentração
\providecommand{\PPGareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\PPGareaconcentracao}{#1}}

% Colocando valores padrões para as monografias.
\instituicao{Universidade São Francisco}
\local{Itatiba}
\comentario{\PPGtipodoc\ Monografia apresentada ao Curso de Engenharia de Computação da Universidade São Francisco, como requisito parcial para obtenção do título de \Btipotitulo\ em Engenheiro de Computação.}

% Aquele resuminho embaixo do capitulo
\newenvironment{resumocap}{%
	 \small\itshape
   \begin{list}{}{%
       \setlength{\listparindent}{0cm}%
       \setlength{\itemindent}{\listparindent}%
       \setlength{\rightmargin}{1cm}%
       \setlength{\leftmargin}{1cm}%
       \setlength{\parsep}{0pt}}%
    \item\relax}%
  {\end{list}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       Novos comandos        % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\providecommand{\ABNTinstituicaodetails}{\large Engenharia de Computação}
\newcommand{\instituicaodetails}[1]{\renewcommand{\ABNTinstituicaodetails}{#1}}
\newcommand{\instituicaodetailsformat}

\providecommand{\PPGaprovacaodia}{}
\providecommand{\PPGaprovacaomes}{}
\providecommand{\PPGaprovacaoano}{}

\newcommand{\dataaprovacao}[3]{%
\renewcommand{\PPGaprovacaodia}{#1}
\renewcommand{\PPGaprovacaomes}{#2}
\renewcommand{\PPGaprovacaoano}{#3}
}

% Alterando as fontes

\renewcommand{\instituicaoformat}{\large\MakeUppercase}
\renewcommand{\ABNTchapterfont}{\bfseries}
\renewcommand{\tituloformat}{\Large\bfseries\MakeUppercase}
\newcommand{\tituloformataprovacao}{\Large\bfseries\MakeUppercase}
\renewcommand{\autorformat}{\large\bfseries}
\renewcommand{\autorformatrosto}{\large\bfseries}
\newcommand{\autorformataprovacao}{\scshape\bfseries}
\renewcommand{\orientadorformat}{\large\scshape\bfseries}
\renewcommand{\orientadornameformat}{\orientadorformat}
\renewcommand{\localformat}{\large}
\renewcommand{\dataformat}{\large}

% Alterando estruturas

\renewcommand{\orientador}[2][Orientador]%
  {\renewcommand{\ABNTorientadorname}{#1}%
   \renewcommand{\ABNTorientadordata}{#2}}

\renewcommand{\coorientador}[2][Co-orientador]%
  {\renewcommand{\ABNTcoorientadorname}{#1}%
   \renewcommand{\ABNTcoorientadordata}{#2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%             CAPA              %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\capa} {%
 %replacing \begin{titlepage}
%\if@twocolumn
 % \@restonecoltrue\onecolumn
%\else
%  \@restonecolfalse\newpage
%\fi
\thispagestyle{empty} %não exibir o numero de página
\setcounter{page}\z@  %forma de contagem
% INSTITUIÇÃO E CURSO
%\espaco{0} 
\setlength{\parskip}{0cm}
\ABNTifnotempty{\\ABNTinstituicaodata}%
  {
   \begin{center}
     {\instituicaoformat\ABNTinstituicaodata\par}
     {\instituicaodetailsformat\ABNTinstituicaodetails\par}
   \end{center}
  }
% AUTOR
%\vspace*{0cm}
\espaco{1} 
\ABNTifnotempty{\ABNTautordata}
  {
  \begin{center}
    \autorformat\ABNTautordata\
  \end{center}
  }
\vfill\vfill
% TÍTULO
\ABNTifnotempty{\ABNTtitulodata}
  {
   \begin{center}
     {\tituloformat\ABNTtitulodata\par}
   \end{center}
  }
\vfill\vfill\vfill\vfill
% LOCAL E ANO é necessário ficar na penultima linha da página
\setlength{\parskip}{0cm}
\begin{center}
    \ABNTifnotempty{\ABNTlocaldata}
      {{\localformat\ABNTlocaldata}\par}
    \ABNTifnotempty{\ABNTdatadata}
      {{\dataformat\ABNTdatadata}}
\end{center}
}
% replacing \end{titlepage} by its meaning
%\if@restonecol\twocolumn \else \newpage \fi
%\espaco{\ABNTespacodefault}%Corrige bug 114
% end of \capa

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE ROSTO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\folhaderosto}
{
\begin{titlepage}
%\espaco{1.1}
\ABNTifnotempty{\ABNTautordata}
  {
  \begin{center}
    \autorformatrosto\ABNTautordata
  \end{center}
  }
\vfill\vfill\vfill
\ABNTifnotempty{\ABNTtitulodata}
  {
   \begin{center}
     {\tituloformat\ABNTtitulodata\par}
   \end{center}
  }
\vfill

\ABNTifnotempty{\ABNTcomentariodata}%
  {%
   \vspace{.8cm}
   \hspace{.45\textwidth}
     \begin{minipage}{.55\textwidth}
       \begin{espacosimples}
         {\comentarioformat\ABNTcomentariodata}\par
			   {\ABNTorientadorname :\ }
			   {\ABNTorientadordata}
       \end{espacosimples}
     \end{minipage}
   }
\vspace{.8cm}
\vfill\vfill\vfill
\begin{center}
  \ABNTifnotempty{\ABNTlocaldata}
      {{\localformat\ABNTlocaldata}\par}
    \ABNTifnotempty{\ABNTdatadata}
      {{\dataformat\ABNTdatadata}}
\end{center}
\end{titlepage}

%\ABNTifnotempty{\ABNTorientadordata}%
%  {%
%  \begin{center}
%    {\orientadornameformat\ABNTorientadorname :\ }
%    {\orientadorformat\ABNTorientadordata}
%    \ifthenelse{\equal{\ABNTcoorientadorname}{}}{}{%
%	    \\
%      {\orientadornameformat\ABNTcoorientadorname :\ }
%      {\orientadorformat\ABNTcoorientadordata}
%    }
%  \end{center}
%  }%

}% end of \folhaderosto

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE APROVACAO - NAO TERMINADA.
% USE POR SUA CONTA E RISCO.
% NAO TERMINAMOS PORQUE, PELO MENOS NA EPOCA,
% NAO ERA NECESSARIO.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\examinador}[2]{
 \vspace*{0.3cm}
 \rule{8.9cm}{1pt}
 \small\textsf{#1}
 
 \small\textsf{(#2)}
 \par
}

\let\oldfolhadeaprovacao=\folhadeaprovacao
\let\endoldfolhadeaprovacao=\endfolhadeaprovacao
\renewenvironment{folhadeaprovacao}{%
\begin{oldfolhadeaprovacao}
\ABNTifnotempty{\\ABNTinstituicaodata}%
  {%
   \begin{center}
     {\instituicaoformat\ABNTinstituicaodata\par}
     {\instituicaodetailsformat\ABNTinstituicaodetails\par}
   \end{center}
  }
\ABNTifnotempty{\ABNTtitulodata}%
  {%
   \begin{center}
     {\tituloformataprovacao\ABNTtitulodata\par}
   \end{center}
  }%
\ABNTifnotempty{\ABNTautordata}%
  {%
  \begin{center}
    {\autorformataprovacao\ABNTautordata}
  \end{center}
  }
\vspace{.8cm}
\hspace{.45\textwidth}
	\begin{minipage}{.55\textwidth}
		\begin{espacosimples}
			{\comentarioformat\ABNTcomentariodata}\par
			{\ABNTorientadorname :\ }
			{\ABNTorientadordata}
   	\end{espacosimples}
   	\vspace*{0.5cm}       
   	Aprovado em \PPGaprovacaodia\ de \PPGaprovacaomes\ de \PPGaprovacaoano.
   
   	Membros da banca:

	 	\vspace*{0.5cm}
	
	 	\rule{8.9cm}{1pt}
	
	 	\small\textsf{\ABNTorientadordata}
	
	 	\small\textsf{(\ABNTorientadorname -- DC-UFSCar)}
	 	\par
}
{%
    \end{minipage}
\vspace{.8cm}
%\vfill
\begin{center}
  \ABNTifnotempty{\ABNTlocaldata}
      {{\localformat\ABNTlocaldata}\par}
    \ABNTifnotempty{\ABNTdatadata}
      {{\dataformat\ABNTdatadata}}
\end{center}
\end{oldfolhadeaprovacao}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPITULO - ESTILIZANDO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% todas as paginas com capitulos nao possuem cabecalho
\fancypagestyle{plainheader}{%
\fancyhf{}%
\renewcommand{\headrulewidth}{0pt}%
\renewcommand{\footrulewidth}{0pt}%
}

\newcommand{\sectionline}{%
  \rule[-13pt]{\linewidth}{1pt}\\
  \rule{\linewidth}{3pt}\\
  \rule[25pt]{\linewidth}{1pt}%
}

\makeatletter
  \ChNameVar{%
    %\Huge
    \fontsize{36pt}{38pt}\selectfont%
    \bfseries\raggedleft}
  \ChNumVar{\Huge\raggedleft}
  \ChTitleVar{\LARGE\scshape\bfseries}
  %\ChRuleWidth{3pt}
  \ChNameAsIs
  \renewcommand{\DOCH}{%
    {\CNV\FmN{\@chapapp}\space\thechapter\par\nobreak}}
  \renewcommand{\DOTI}[1]{%
    {\CTV\raggedleft\FmTi{#1}%
    \\[-30pt]%
    %\par%
    %\nobreak
    }
    {\singlespacing \normalsize \sectionline}
    %\vskip 40\p@
  }
  \renewcommand{\DOTIS}[1]{%
    \ifthenelse{\equal{#1}{\refname}}%
    {%
      {\CTV\centering\FmTi{#1}\\[-30pt]}%
      {\singlespacing \normalsize \sectionline \\[-30pt]}%
    }
    {\CTV\centering\FmTi{#1}\par\nobreak}
    %\vskip 40\p@
  }
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%
% resumo
%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\dbconfresumo}{\onehalfspacing\small\parindent0em}

\newcommand{\palavraschave}[1]{\global\def\PPGpalavraschave{#1}}
\newcommand{\keywords}[1]{\global\def\PPGkeywords{#1}}

\let\oldresumo=\resumo
  \let\endoldresumo=\endresumo
  \renewenvironment{resumo}{%
    \begin{oldresumo}%
      \dbconfresumo%
      \begin{list}{}{%
        \setlength{\listparindent}{0cm}%
        \setlength{\itemindent}{\listparindent}%
        \setlength{\rightmargin}{1cm}%
        \setlength{\leftmargin}{\rightmargin}%
        \setlength{\parsep}{0pt}}
        \item\relax%
  }%
  {%
    \end{list}%
    \textbf{Palavras-chave}: \PPGpalavraschave
    \end{oldresumo}%
  }
  
\let\oldabstract=\abstract
  \let\endoldabstract=\endabstract
  \renewenvironment{abstract}{%
    \begin{oldabstract}%
      \dbconfresumo%
      \begin{list}{}{%
        \setlength{\listparindent}{0cm}%
        \setlength{\itemindent}{\listparindent}%
        \setlength{\rightmargin}{1cm}%
        \setlength{\leftmargin}{\rightmargin}%
        \setlength{\parsep}{0pt}}
        \item\relax%
  }%
  {%
    \end{list}
    \textbf{Keywords}: \PPGkeywords
    \end{oldabstract}%
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABLE OF CONTENTS - SUMARIO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\dbputchaptername}[1]{%
%  \ifthenelse{\equal{#1}{\refname}}%
%    {}%
  \if #1 \refname
    \relax
  \else
    \chaptername\ %
  \fi
}

\makeatletter
\def\@chapter[#1]#2%
      {\ifthenelse{\boolean{ABNThypertoc}}{\renewcommand{\theHchapter}{\chaptertype\thechapter}}{}
       \ifnum \c@secnumdepth >\m@ne
         \refstepcounter{chapter}%
         \ABNTchaptermark{#1}% This command MUST came before addcontentsline
         \typeout{\@chapapp\space\thechapter.}%
         \ifthenelse{\boolean{ABNTaftertoc}}
           {\ABNTaddcontentsline{toc}{chapter}%
                   {\dbputchaptername{#1}\protect\numberline{\thechapter\ --}#1}}
           {}
       \else
         \ABNTchaptermark{#1}% This command MUST came before addcontentsline
         \ifthenelse{\boolean{ABNTaftertoc}}%
           {\ABNTaddcontentsline{toc}{chapter}{#1}}%
           {}%
       \fi       
       \if@twocolumn
         \@topnewpage[\@makechapterhead{#2}]%
       \else
         \@makechapterhead{#2}%
         \@afterheading
       \fi\par}
\renewcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \ifthenelse{\boolean{ABNTpagenumstyle}}
        {\renewcommand{\@pnumwidth}{3.5em}}
        {}
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \normalsize\ABNTtocchapterfont
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \MakeUppercase{#1}\nobreak\hfil \nobreak%
      \ifthenelse{\boolean{ABNTpagenumstyle}}
         {%
          \hb@xt@\@pnumwidth{\hss 
            \ifthenelse{\not\equal{#2}{}}{{\normalfont \thinspace#2}}{}}\par
         }
         {%
          \hb@xt@\@pnumwidth{\hss #2}\par
         }
      \penalty\@highpenalty
    \endgroup
  \fi}
%	\let\old@dottedtocline\@dottedtocline
	\renewcommand{\@dottedtocline}[5]{%
	  \ifthenelse{\boolean{ABNTpagenumstyle}}
	     {%
	      {\renewcommand{\@pnumwidth}{2.5em}%
	       \renewcommand{\@tocrmarg}{3.5em}
	       \old@dottedtocline{#1}{#2}{#3}{#4}%
	             {\ifthenelse{\equal{#5}{}}{}{\thinspace#5}}}%
	     }%
	     {\old@dottedtocline{#1}{#2}{#3}{#4}{#5}}%
	}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABELA DE FIGURAS E TAL
% update: tirei isso aqui porque ficou feio =/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\makeatletter
%	\def\addcontentsline#1#2#3{%
%	  \ifthenelse{\equal{#1}{lof}}{%
%	    \addtocontents{#1}{%
%	      \protect\contentsline{#2}{%
%	        \MakeUppercase{\figurename}
%	    		\MakeUppercase{#3}%
%	      }
%	      {\thepage}
%	    }%
%	  }{%
%		  \ifthenelse{\equal{#1}{lot}}{%
%		    \addtocontents{#1}{%
%		      \protect\contentsline{#2}{%
%		        \MakeUppercase{\tablename}
%		    		\MakeUppercase{#3}%
%		      }
%		      {\thepage}
%		    }%
%		  }{%
%			  \ifthenelse{\equal{#1}{lol}}{%
%			    \addtocontents{#1}{%
%			      \protect\contentsline{#2}{%
%			        \MakeUppercase{\lstlistingname}
%			    		\MakeUppercase{#3}%
%			      }
%			      {\thepage}
%			    }%
%			  }{%
%					\addtocontents{#1}{\protect\contentsline{#2}{#3}{\thepage}}
%	  		}%
%			}%
%		}%
%	}
%\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE ABREVIATURA E SIGLAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
	\newcount\@acronym\@acronym0
	\newcommand\acronym[2]{%
	\global\@namedef{PPGCCAcronymDef:\expandafter\the\@acronym}{#1}
	\global\@namedef{PPGCCAcronymDesc:\expandafter\the\@acronym}{#2}
	\global\advance\@acronym by 1
	}
	\newcommand{\listofacronyms}{%
	
	\pretextualchapter{Lista de Abreviaturas e Siglas}
	
	\count2=0
	\@whilenum \count2<\@acronym \do {
	\noindent
	\textbf{\csname PPGCCAcronymDef:\the\count2 \endcsname}
	--
	\csname PPGCCAcronymDesc:\the\count2 \endcsname \newline
	\advance\count2 by 1
	}
	
	}
\makeatother
