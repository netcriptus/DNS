%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tg.cls                                                               %
%                                                    início do arquivo %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Preâmbulo da classe                                          %%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{latexbook}

%%% Carregamento de outra classe                                 %%%%%%%

\LoadClass[a4paper,openbib]{book}

%%% Inclusão de pacotes                                          %%%%%%%

\RequirePackage[utf8]{inputenc}
  % Traduz a entrada segundo UTF-8.
\RequirePackage[brazil]{babel}
  % Facilita a tipografia em português do Brasil.
\RequirePackage{bookman}
  % Melhora as fontes padrões.
\RequirePackage{ulem}
  % Melhora os comandos de ênfase.
\RequirePackage{amssymb}
  % Provê um grande conjunto de símbolos para o ambiente matemático.
\RequirePackage{amsthm}
  % Provê recursos especiais para coisas como teoremas e provas.
\RequirePackage{amsmath}
  % Provê recursos adicionais para o ambiente matemático.
\RequirePackage{mathrsfs}
  % Permite o uso do comando \mathscr
\RequirePackage[
  pdftitle={Algoritmos Em Corpos Finitos},
  pdfauthor={Leandro Zatesko},
]{hyperref}
  % Permite comportamentos alternativos de hiperreferências.
\RequirePackage{xspace}
  % Permite gerenciar problemas com espaçamentos incorretos.
\RequirePackage{enumerate}
  % Altera o ambiente enumerate, fornecendo maior generalidade.
\RequirePackage{makeidx}
  % Permite a criação de índices remissivos.
\RequirePackage{calc}
  % Permite a soma de comprimentos em LaTeX
\RequirePackage{ifthen}
  % Permite o uso do comando \ifthenelse

%%% Configurações de página                                      %%%%%%%

\setlength{\marginparpush}{0mm}
\setlength{\textheight}{216mm}
\setlength{\hoffset}{0mm}
\setlength{\voffset}{0mm}
\setlength{\oddsidemargin}{0mm}
\setlength{\topmargin}{0mm}
\setlength{\headsep}{36pt}
\setlength{\footskip}{\headsep+\headheight}
\setlength{\marginparwidth}{1.2in}
\setlength{\marginparsep}{10pt}
\setlength{\evensidemargin}{\marginparsep+\marginparwidth-.5in}
\setlength{\textheight}{\paperheight-2in-\headsep-\headheight}
\setlength{\textwidth}{\paperwidth-1.5in-\marginparsep-\marginparwidth}

\renewcommand{\baselinestretch}{1.1}

%%% Definição de macros para ambientes matemáticos               %%%%%%%

\def\MMe{\mathrm{e}} % constante de Euler
\def\MMi{\mathrm{i}} % constante imaginária
\def\MMd{\mathrm{d}} % diferencial total
\def\MMN{\mathbb{N}} % conjunto dos números naturais
\def\MMZ{\mathbb{Z}} % conjunto dos números inteiros
\def\MMQ{\mathbb{Q}} % conjunto dos números racionais
\def\MMQbar{\overline{\mathbb{Q}}} % conjunto dos números irracionais
\def\MMR{\mathbb{R}} % conjunto dos números reais
\def\MMC{\mathbb{C}} % conjunto dos números complexos
\def\MMp{\mathrm{.}} % ponto de texto
\def\MMv{\mathrm{,}} % vírgula de texto
\def\MMpv{\mathrm{;}} % ponto-e-vírgula de texto
\def\geq{\geqslant} % desigualdade superior
\def\leq{\leqslant} % desigualdade inferior
\def\divd{\backslash} % divisão própria
\def\ndivd{\not{\backslash}} % divisão própria negada
\def\parenteses#1{\left( #1 \right)} % parênteses com tamanho arbitrário
\def\colchetes#1{\left[ #1 \right]} % colchetes com tamanho arbitrário
\def\chaves#1{\left\{ #1 \right\}} % chaves com tamanho arbitrário
\def\cardi#1{\left| #1 \right|} % cardinalidade
\def\chao#1{\left\lfloor #1\right\rfloor} % chão
\def\teto#1{\left\lceil #1\right\rceil} % teto
\def\funcao#1#2#3{#1\colon #2\rightarrow #3} % definição de função
\def\cj#1{\chaves{#1}} % definição explícita de conjunto
\def\cjbar#1#2{\chaves{#1\text{ }\left|\text{ }#2\right.}}
  % conjunto com |
\def\cjpp#1#2{\chaves{#1\colon#2}} % conjunto com :
\def\galois#1{\mathbb{F}_{#1}} % corpo de Galois
\def\cquoc#1#2{{#1}_{{\displaystyle\diagup}_{\displaystyle{#2}}}}
  % conjunto quociente
\def\tcquoc#1#2{^{#1}{\scriptstyle\diagup}_{{#2}}}
  % conjunto quociente para ambientes de texto
\def\um{\underline{1}}
  % elemento neutro multiplicativo de uma estrutura algébrica
\def\zero{\underline{0}}
  % elemento neutro aditivo de uma estrutura algébrica
\def\congmod#1#2#3{#1\equiv #2\quad(\modu #3)}
\def\congmoda#1#2#3{#1&\equiv #2&\quad&(\modu #3)}
  % congruência
\def\gerado#1{\langle #1\rangle} % conjunto gerado
\def\potfatcresc#1#2{{#1}^{\overline{#2}}}
  % potência fatorial crescente
\def\potfatdecresc#1#2{{#1}^{\underline{#2}}}
  % potência fatorial decrescente
\def\cleq#1#2{[#1]_{#2}} % classe de equivalência
\def\congmodright#1#2#3{#1\sim #2\quad(\modu #3)}
\def\congmodrighta#1#2#3{#1&\sim #2&\quad&(\modu #3)}
  % relação que define classe lateral à direita
\def\congmodleft#1#2#3{#1\backsim #2\quad(\modu #3)}
\def\congmodlefta#1#2#3{#1&\backsim #2&\quad&(\modu #3)}
  % relação que define classe lateral à esquerda
\def\id{\mathrm{id}} % polinômio identidade
\def\vetor#1{\boldsymbol{#1}} % formatação ISO para vetores
\def\bfmais{\boldsymbol{+}} % adição de vetores
\def\bfvezes{\boldsymbol{\cdot}} % multiplicação de um vetor por um escalar
\def\bfmenos{\boldsymbol{-}} % subtração de vetores
\def\bfzero{\boldsymbol{0}} % vetor nulo
\def\nequiv{\not\equiv} % equivalência negada

\makeatletter
  \def\sen{\mathop{\operator@font sen}\nolimits} % seno
  \def\arcsen{\mathop{\operator@font arcsen}\nolimits} % arco-cosseno
  \def\diam{\mathop{\operator@font diam}} % diâmetro
  \def\cin{\mathop{\operator@font cin}} % cintura
  \def\dist{\mathop{\operator@font dist}} % distância
  \def\ord{\mathop{\operator@font ord}} % ordem
  \def\mmc{\mathop{\operator@font mmc}} % mínimo múltiplo comum
  \def\mdc{\mathop{\operator@font mdc}} % máximo divisor comum
  \def\gr{\mathop{\operator@font gr}} % grau
  \def\modu{\mathop{\operator@font mod}} % módulo unário
\makeatother

  % O LaTeX2e já provê:
  %   \log  \lg      \ln    \lim  \limsup  \liminf  \sin  \arcsin  \det
  %   \cos  \arccos  \cosh  \tan  \arctan  \tanh    \cot  \coth    \sec
  %   \csc  \max     \min   \sup  \inf     \arg     \ker  \dim     \hom
  %   \exp  \Pr      \gcd   \deg  \sinh

%%% Configuração de coisas como teoremas e provas                %%%%%%%

\newtheoremstyle{teoaxicorlem}%
  {}{}{\slshape}{}{\bfseries\scshape}{.}{ }{}
\newtheoremstyle{defnotnom}%
  {}{}{\upshape}{}{\bfseries\scshape}{.}{ }{}

\theoremstyle{teoaxicorlem}
	\newtheorem{Axi}{Axioma}[chapter]
	\newtheorem{Teo}{Teorema}[chapter]
	\newtheorem{Cor}[Teo]{Corolário}
	\newtheorem{Lem}[Teo]{Lema}
	\newtheorem{Prop}[Teo]{Proposição}
	\newtheorem{Propr}[Teo]{Propriedade}
	\newtheorem{Conj}[Teo]{Conjectura}
\theoremstyle{defnotnom}
	\newtheorem{Def}{Definição}[chapter]
	\newtheorem{Not}[Def]{Notação}
	\newtheorem{Nom}[Def]{Nomenclatura}
	\newtheorem{Ex}[Def]{Exemplo}
    \newtheorem{Exe}{Exercício}[chapter]
    \newtheorem{Que}[Exe]{Questão}
	\newtheorem{Obs}[Def]{Observação}

\renewcommand{\qedsymbol}{$\blacklozenge$}

\newenvironment{prova}%
	{\begin{proof}[\scshape Prova.]}%
	{\end{proof}}
\newenvironment{dem}%
	{\begin{proof}[\scshape Demonstração.]}%
	{\end{proof}}
\newenvironment{res}%
	{\begin{proof}[\scshape Resolução.]}%
	{\end{proof}}

%%% Definição de conceitos                                       %%%%%%%

\newcommand{\conceito}[1]{%
  \emph{#1}%
  \index{#1}%
  \mbox{}\marginpar%
  [\raggedright\hspace{0pt}\footnotesize #1\\\vspace{\baselineskip}]%
  {\raggedleft\hspace{0pt}\footnotesize #1\\\vspace{\baselineskip}}%
  \xspace%
}
\newcommand{\Conceito}[2]{%
  \emph{#1}%
  \index{#2}%
  \mbox{}\marginpar%
  [\raggedright\hspace{0pt}\footnotesize #2\\\vspace{\baselineskip}]%
  {\raggedleft\hspace{0pt}\footnotesize #2\\\vspace{\baselineskip}}%
  \xspace%
}

%%% Definição de símbolos                                        %%%%%%%

\newcommand{\simb}[2][]{%
  \ifthenelse{\equal{#1}{}}
    {\addcontentsline{los}{simbolo}%
      {\ensuremath{#2} --- }}
    {\addcontentsline{los}{simbolo}%
      {\ensuremath{#2} --- #1}}
  \ensuremath{#2}}

\makeatletter

\newcommand{\listadesimbolos}{
  \chapter*{Lista de Símbolos}
  {\setlength{\parindent}{0cm}
    \@starttoc{los}}}

\newcommand\l@simbolo[2]{\par #1\ensuremath{\qquad}p.\thinspace#2}

\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tg.cls                                                               %
%                                                       fim de arquivo %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
