%%-----------------------------------------------------------------------------
%% The LaTeX Project Public License 
%%-----------------------------------------------------------------------------
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% Further information about abnTeX2 are available on http://www.abntex.net.br/
%%------------------------------------------------------------------------------


% -----------------------------------------------------------------------------
% Universidade Tecnológica Federal do Paraná - UTFPR
%
% Customização da classe abnTeX2 (http://www.abntex.net.br/) para as normas da UTFPR
%
% Projeto: http://tcc.tsi.gp.utfpr.edu.br/paginas/modelos-latex-da-utfpr
%
% Autores: Diego Marczal
% 	       Michael Vornes <https://github.com/mvornes>
%
%------------------------------------------------------------------------------
% Codificação: UTF-8
% LaTeX:  abnTeX2          
% -----------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utfpr-abntex2}[2016/07/07 v1.0]

% Repassa os parâmetros ao abntex2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

\PassOptionsToClass{%
% Opções da classe memoir
    12pt,                     % Tamanho da fonte
    a4paper,                  % Tamanho do papel.
    sumario=tradicional,      % Seleciona o sumário tradicional
% Opções do pacote babel
    brazil,                   % Idioma do documento
}{abntex2}

\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage{makeidx}                                % Produzir índice remissivo de palavras
\RequirePackage{chngcntr}

% -----------------------------------------------------------------------------
% Configurações gerais
% -----------------------------------------------------------------------------

\RequirePackage{pdfpages}
\RequirePackage{lastpage}
\RequirePackage{chngpage}

\def\authorbib#1{\gdef\@authorbib{#1}}%
\def\@authorbib{\@latex@error{No \noexpand\authorbib given}\@ehc}%

\def\titleen#1{\gdef\@titleen{#1}}%
\def\@titleen{\@latex@error{No \noexpand\titleen given}\@ehc}%

\def\advisor#1{\gdef\@advisor{#1}}%
\def\@advisor{\@latex@error{No \noexpand\advisor given}\@ehc}%

\def\coadvisor#1{\gdef\@coadvisor{#1}}%

\def\address#1{\gdef\@address{#1}}%
\def\@address{\@latex@error{No \noexpand\address given}\@ehc}%

\def\addressen#1{\gdef\@addressen{#1}}%
\def\@addressen{\@latex@error{No \noexpand\addressen given}\@ehc}%

\def\university#1{\gdef\@university{#1}}%
\def\@university{\@latex@error{No \noexpand\university given}\@ehc}%

\def\universityen#1{\gdef\@universityen{#1}}%
\def\@universityen{\@latex@error{No \noexpand\universityen given}\@ehc}%

\def\universitycampus#1{\gdef\@universitycampus{#1}}%
\def\@universitycampus{\@latex@error{No \noexpand\universitycampus given}\@ehc}%

\def\universityunit#1{\gdef\@universityunit{#1}}%
\def\@universityunit{\@latex@error{No \noexpand\universityunit given}\@ehc}%

\def\program#1{\gdef\@program{#1}}%
\def\@program{\@latex@error{No \noexpand\program given}\@ehc}%

\def\programen#1{\gdef\@programen{#1}}%
\def\@programen{\@latex@error{No \noexpand\programen given}\@ehc}%

\def\course#1{\gdef\@course{#1}}%
\def\@course{\@latex@error{No \noexpand\course given}\@ehc}%

\def\depositshortdate#1{\gdef\@depositshortdate{#1}}%
\def\@depositshortdate{\@latex@error{No \noexpand\depositshortdate given}\@ehc}%

\def\approvaldate#1{\gdef\@approvaldate{#1}}%
\def\@approvaldate{\@latex@error{No \noexpand\approvaldate given}\@ehc}%


%CC
\def\licenca#1{\gdef\@licenca{#1}}%
\def\@licenca{\@latex@error{No \noexpand\licenca given}\@ehc}%

\def\goal#1{\gdef\@goal{#1}}%
\def\@goal{\@latex@error{No \noexpand\goal given}\@ehc}%

\def\degree#1{\gdef\@degree{#1}}%
\def\@degree{\@latex@error{No \noexpand\degree given}\@ehc}%

\def\degreetype#1{\gdef\@degreetype{#1}}%
\def\@degreetype{\@latex@error{No \noexpand\degreetype given}\@ehc}%

\def\documenttype#1{\gdef\@documenttype{#1}}%
\def\@documenttype{\@latex@error{No \noexpand\documenttype given}\@ehc}%

\def\documenttypeen#1{\gdef\@documenttypeen{#1}}%
\def\@documenttypeen{\@latex@error{No \noexpand\documenttypeen given}\@ehc}%

\def\degreearea#1{\gdef\@degreearea{#1}}%
\def\@degreearea{\@latex@error{No \noexpand\degreearea given}\@ehc}%

%% Definições de variáveis
\newcommand{\TipoDeDocumento}[1]{\providecommand{\imprimirtipodedocumento}{#1}}%% Tipo de documento
\newcommand{\DocumentType}[1]{\providecommand{\printdocumenttype}{#1}}%% Document type
\newcommand{\NivelDeFormacao}[1]{\providecommand{\imprimirniveldeformacao}{#1}}%% Nível de formação
\newcommand{\FormationLevel}[1]{\providecommand{\printformationlevel}{#1}}%% Formation level
\newcommand{\TituloDoDocumento}[1]{\providecommand{\imprimirtitulododocumento}{#1}}%% Título do documento
\newcommand{\DocumentTitle}[1]{\providecommand{\printdocumenttitle}{#1}}%% Document title
\newcommand{\TituloEmMultiplasLinhas}[1]{\providecommand{\imprimirtituloemmultiplaslinhas}{#1}}%% Título em multiplas linhas
\newcommand{\DescricaoDoDocumento}[1]{\providecommand{\imprimirdescricaododocumento}{#1}}%% Descrição do documento
\newcommand{\TituloDaFichaCatalografica}[1]{%% Título da ficha catalográfica
  \providecommand{\imprimirtitulodafichacatalografica}{#1}%%
}
\newcommand{\TextoDeAprovacao}[1]{\providecommand{\imprimirtextodeaprovacao}{#1}}%% Texto de aprovação
\newcommand{\AvisoDeAprovacao}[1]{\providecommand{\imprimiravisodeaprovacao}{#1}}%% Aviso de aprovação
\newcommand{\NumeroDaTeseOuDissertacao}[1]{\providecommand{\imprimirnumerodateseoudissertacao}{#1}}%% Número da tese ou dissertação
\newcommand{\NumeroDaPublicacao}[1]{\providecommand{\imprimirnumerodapublicacao}{#1}}%% Número da publicação
\newcommand{\NumeroDaFichaCatalografica}[1]{%% Número da ficha catalográfica
  \providecommand{\imprimirnumerodafichacatalografica}{#1}%%
}
\newcommand{\CDDOuCDU}[1]{\providecommand{\imprimircddoucdu}{#1}}%% CDD ou CDU
\newcommand{\TituloPretendido}[1]{\providecommand{\imprimirtitulopretendido}{#1}}%% Título pretendido
\newcommand{\NomeDoAutor}[1]{\providecommand{\imprimirnomedoautor}{#1}}%% Nome completo do(a) autor(a)
%\newcommand{\SobrenomeDoAutor}[1]{\providecommand{\imprimirsobrenomedoautor}{#1}}%% Sobrenome do(a) autor(a)
%\newcommand{\PrenomeDoAutor}[1]{\providecommand{\imprimirprenomedoautor}{#1}}%% Prenome do(a) autor(a)
\newcommand{\AtribuiOutroAutor}[1]{%% Insere ou remove outro(a) autor(a)
  \ifthenelse{\equal{\imprimirtipodedocumento}{Trabalho de Conclusão de Curso}}%% Verificação do tipo de documento
    {\providecommand{\imprimiratribuioutroautor}{#1}}%% Insere ou remove outro(a) autor(a)
    {\providecommand{\imprimiratribuioutroautor}{false}}%% Remove outro(a) autor(a)
}
\newcommand{\NomeDoOutroAutor}[1]{\providecommand{\imprimirnomedooutroautor}{#1}}%% Nome completo do(a) outro(a) autor(a)
\newcommand{\SobrenomeDoOutroAutor}[1]{\providecommand{\imprimirsobrenomedooutroautor}{#1}}%% Sobrenome do(a) outro(a) autor(a)
\newcommand{\PrenomeDoOutroAutor}[1]{\providecommand{\imprimirprenomedooutroautor}{#1}}%% Prenome do(a) outro(a) autor(a)
\newcommand{\AtribuicaoOrientador}[1]{\providecommand{\imprimiratribuicaoorientador}{#1}}%% Atribuição "orientador(a)"
\newcommand{\TituloDoOrientador}[1]{\providecommand{\imprimirtitulodoorientador}{#1}}%% Título do(a) orientador(a)
\newcommand{\NomeDoOrientador}[1]{\providecommand{\imprimirnomedoorientador}{#1}}%% Nome completo do(a) orientador(a)
\newcommand{\SobrenomeDoOrienador}[1]{\providecommand{\imprimirsobrenomedoorientador}{#1}}%% Sobrenome do(a) orientador(a)
\newcommand{\PrenomeDoOrientador}[1]{\providecommand{\imprimirprenomedoorientador}{#1}}%% Prenome do(a) orientador(a)
\newcommand{\AtribuiCoorientador}[1]{\providecommand{\imprimiratribuicoorientador}{#1}}%% Insere ou remove o(a) coorientador(a)
\newcommand{\AtribuicaoCoorientador}[1]{\providecommand{\imprimiratribuicaocoorientador}{#1}}%% Atribuição "coorientador(a)"
\newcommand{\TituloDoCoorientador}[1]{\providecommand{\imprimirtitulodocoorientador}{#1}}%% Título do(a) coorientador(a)
\newcommand{\NomeDoCoorientador}[1]{\providecommand{\imprimirnomedocoorientador}{#1}}%% Nome completo do(a) coorientador(a)
\newcommand{\SobrenomeDoCoorienador}[1]{\providecommand{\imprimirsobrenomedocoorientador}{#1}}%% Sobrenome do(a) coorientador(a)
\newcommand{\PrenomeDoCoorientador}[1]{\providecommand{\imprimirprenomedocoorientador}{#1}}%% Prenome do(a) coorientador(a)
\newcommand{\Institution}[1]{\providecommand{\printinstitution}{#1}}%% Institution name
\newcommand{\Cidade}[1]{\providecommand{\imprimircidade}{#1}}%% Nome da cidade (câmpus)
\newcommand{\Diretoria}[1]{\providecommand{\imprimirdiretoria}{Diretoria de #1}}%% Diretoria
\newcommand{\Departamento}[1]{\providecommand{\imprimirdepartamento}{#1}}%% Nome do departamento
\newcommand{\Curso}[1]{\providecommand{\imprimircurso}{#1}}%% Nome do curso
\newcommand{\Course}[1]{\providecommand{\printcourse}{#1}}%% Course name
\newcommand{\AreaDeConcentracao}[1]{\providecommand{\imprimirareadeconcentracao}{#1}}%% Nome da área de concentração
\newcommand{\TituloDoResponsavelTCC}[1]{\providecommand{\imprimirtitulodoresponsaveltcc}{#1}}%% Título do(a) responsável pelos TCC
\newcommand{\NomeDoResponsavelTCC}[1]{%% Nome completo do(a) responsável pelos TCC
  \providecommand{\imprimirnomedoresponsaveltcc}{#1}%%
}
\newcommand{\AtribuicaoCoordenador}[1]{\providecommand{\imprimiratribuicaocoordenador}{#1}}%% Atribuição "coordenador(a)" do curso
\newcommand{\TituloDoCoordenador}[1]{\providecommand{\imprimirtitulodocoordenador}{#1}}%% Título do(a) coordenador(a) do curso
\newcommand{\NomeDoCoordenador}[1]{\providecommand{\imprimirnomedocoordenador}{#1}}%% Nome completo do(a) coordenador(a) do curso
\newcommand{\SiglaDoPPG}[1]{\providecommand{\imprimirsigladoppg}{#1}}%% Logo do programa de pós-graduação
\newcommand{\MembroAIgualOrientador}[1]{\providecommand{\imprimirmembroaigualorientador}{#1}}%% Membro A igual ao(à) orientador(a)
\newcommand{\MembroA}[1]{\providecommand{\imprimirmembroa}{#1}}%% Nome completo do membro A
\newcommand{\TituloDoMembroA}[1]{\providecommand{\imprimirtitulodomembroa}{#1}}%% Título do membro A
\newcommand{\InstituicaoDoMembroA}[1]{\providecommand{\imprimirinstituicaodomembroa}{#1}}%% Nome da instituição do membro A
\newcommand{\MembroB}[1]{\providecommand{\imprimirmembrob}{#1}}%% Nome completo do membro B
\newcommand{\TituloDoMembroB}[1]{\providecommand{\imprimirtitulodomembrob}{#1}}%% Título do membro B
\newcommand{\InstituicaoDoMembroB}[1]{\providecommand{\imprimirinstituicaodomembrob}{#1}}%% Nome da instituição do membro B
\newcommand{\MembroC}[1]{\providecommand{\imprimirmembroc}{#1}}%% Nome completo do membro C
\newcommand{\TituloDoMembroC}[1]{\providecommand{\imprimirtitulodomembroc}{#1}}%% Título do membro C
\newcommand{\InstituicaoDoMembroC}[1]{\providecommand{\imprimirinstituicaodomembroc}{#1}}%% Nome da instituição do membro C
\newcommand{\MembroD}[1]{\providecommand{\imprimirmembrod}{#1}}%% Nome completo do membro D
\newcommand{\TituloDoMembroD}[1]{\providecommand{\imprimirtitulodomembrod}{#1}}%% Título do membro D
\newcommand{\InstituicaoDoMembroD}[1]{\providecommand{\imprimirinstituicaodomembrod}{#1}}%% Nome da instituição do membro D
\newcommand{\MembroE}[1]{\providecommand{\imprimirmembroe}{#1}}%% Nome completo do membro E
\newcommand{\TituloDoMembroE}[1]{\providecommand{\imprimirtitulodomembroe}{#1}}%% Título do membro E
\newcommand{\InstituicaoDoMembroE}[1]{\providecommand{\imprimirinstituicaodomembroe}{#1}}%% Nome da instituição do membro E
\newcommand{\AtribuiMembroF}[1]{\providecommand{\imprimiratribuimembrof}{#1}}%% Insere ou remove o membro F
\newcommand{\MembroF}[1]{\providecommand{\imprimirmembrof}{#1}}%% Nome completo do membro F
\newcommand{\TituloDoMembroF}[1]{\providecommand{\imprimirtitulodomembrof}{#1}}%% Título do membro F
\newcommand{\InstituicaoDoMembroF}[1]{\providecommand{\imprimirinstituicaodomembrof}{#1}}%% Nome da instituição do membro F
\newcommand{\AtribuiMembroG}[1]{\providecommand{\imprimiratribuimembrog}{#1}}%% Insere ou remove o membro G
\newcommand{\MembroG}[1]{\providecommand{\imprimirmembrog}{#1}}%% Nome completo do membro G
\newcommand{\TituloDoMembroG}[1]{\providecommand{\imprimirtitulodomembrog}{#1}}%% Título do membro G
\newcommand{\InstituicaoDoMembroG}[1]{\providecommand{\imprimirinstituicaodomembrog}{#1}}%% Nome da instituição do membro G
\newcommand{\Dia}[1]{\providecommand{\imprimirdia}{#1}}%% Dia com número de dígitos exatos
\newcommand{\MesPorExtenso}[1]{\providecommand{\imprimirmesporextenso}{#1}}%% Mês por extenso
\newcommand{\Ano}[1]{\providecommand{\imprimirano}{#1}}%% Ano com quatro dígitos
\newcommand{\NumeroDePalavrasChave}[1]{\providecommand{\imprimirnumerodepalavraschave}{#1}}%% Número de palavras-chave (máximo 5)
\newcommand{\PalavraChaveA}[1]{\providecommand{\imprimirpalavrachavea}{\lowercase{#1}}}%% Palavra-chave A
\newcommand{\PalavraChaveB}[1]{\providecommand{\imprimirpalavrachaveb}{\lowercase{{#1}}}}%% Palavra-chave B
\newcommand{\PalavraChaveC}[1]{\providecommand{\imprimirpalavrachavec}{\lowercase{#1}}}%% Palavra-chave C
\newcommand{\PalavraChaveD}[1]{\providecommand{\imprimirpalavrachaved}{\lowercase{#1}}}%% Palavra-chave D
\newcommand{\PalavraChaveE}[1]{\providecommand{\imprimirpalavrachavee}{\lowercase{#1}}}%% Palavra-chave E
\newcommand{\NumeroDeKeywords}[1]{\providecommand{\imprimirnumerodekeywords}{#1}}%% Número de keywords (máximo 5)
\newcommand{\KeywordA}[1]{\providecommand{\imprimirkeyworda}{\lowercase{#1}}}%% Keyword A
\newcommand{\KeywordB}[1]{\providecommand{\imprimirkeywordb}{\lowercase{#1}}}%% Keyword B
\newcommand{\KeywordC}[1]{\providecommand{\imprimirkeywordc}{\lowercase{#1}}}%% Keyword C
\newcommand{\KeywordD}[1]{\providecommand{\imprimirkeywordd}{\lowercase{#1}}}%% Keyword D
\newcommand{\KeywordE}[1]{\providecommand{\imprimirkeyworde}{\lowercase{#1}}}%% Keyword E
\newcommand{\imprimirppgoudepartamento}{%% Programa de pós-graduação ou departamento
  \ifthenelse{\equal{\imprimirtipodedocumento}{Tese}\or\equal{\imprimirtipodedocumento}{Dissertação}}%% Tese ou dissertação
  {Programa de Pós-Graduação em \imprimircurso}%% Programa de pós-graduação
  {\imprimirdepartamento}%% Departamento
}
% Retira o espaço extra desnecessário nas frases
\frenchspacing



% Texto padrão antes do número das páginas

% Define as listas de item compactas (sem espaçamento entre os itens)
\setlist{noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt}


% Define a numeração das equações de forma sequencial
\counterwithout{equation}{chapter}

% -----------------------------------------------------------------------------
% Comandos de dados
% -----------------------------------------------------------------------------


\newcommand{\fonteTexto}[1]{\renewcommand{\familydefault}{#1}}

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Subtítulo do trabalho
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

% Comandos de dados - Instituição do orientador
\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}

% Comandos de dados - Instituição do coorientador
\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}

% Comandos de dados -  Tipo de trabalho acadêmico (trabalho de conclusão de curso, tese, dissertação ou projeto de qualificação)
\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}

% Comandos de dados - Título Acadêmico a ser alcançado (Bacharel, Tecnólogo)
\providecommand{\imprimirtituloAcademico}{}
\newcommand{\tituloAcademico}[1]{\renewcommand{\imprimirtituloAcademico}{#1}}

% Comandos de dados - Título em Inglês
\providecommand{\imprimirautorcitacao}{}
\newcommand{\autorcitacao}[1]{\renewcommand{\imprimirautorcitacao}{#1}}

% Comandos de dados - Nome autor para citação
\providecommand{\imprimirtitleabstract}{}
\newcommand{\titleabstract}[1]{\renewcommand{\imprimirtitleabstract}{#1}}

% Comandos de dados - Área de concentração com Rótulo
\newcommand{\imprimirareaconcentracaoRotulo}{\'Area de concentra\c{c}\~ao: }
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}

% Comandos de dados - linha de pesquisa
\newcommand{\imprimirlinhapesquisaRotulo}{Linha de pesquisa: }
\providecommand{\imprimirlinhapesquisa}{}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}

% Comandos de dados - Texto da folha de aprovação
\providecommand{\imprimirtextopadraofolhadeaprovacao}{}
\newcommand{\textopadraofolhadeaprovacao}[1]{\renewcommand{\imprimirtextopadraofolhadeaprovacao}{#1}}

% Comandos de dados - Logomarca da instituição
\providecommand{\imprimirlogoinstituicao}{}
\newcommand{\logoinstituicao}[2]{\renewcommand{\imprimirlogoinstituicao}{\includegraphics[width={#1}\textwidth]{#2}}}

% -----------------------------------------------------------------------------
% Estilo de elementos
% -----------------------------------------------------------------------------

% Elementos pré-textuais
\renewcommand{\pretextual}
{%
    \pagenumbering{gobble}
    \aliaspagestyle{chapter}{empty}
    \pagestyle{empty}
    \aliaspagestyle{cleared}{empty}
    \aliaspagestyle{part}{empty}
}

% Configura layout para elementos textuais
\renewcommand{\textual}
{%
    \pagenumbering{arabic} % A numeração das páginas é em algarismos arábicos, inciando em 1
    \pagestyle{abntheadings}
    \aliaspagestyle{chapter}{abntchapfirst}
    \nouppercaseheads
    \bookmarksetup{startatroot}
}

% Configura layout para elementos pós-textuais
\renewcommand{\postextual}
{%
    \chapterstyle{abnt}
    \phantompart
}

% -----------------------------------------------------------------------------
% Objetos flutuantes
% -----------------------------------------------------------------------------

% Comando que trata a fonte nos objetos flutuantes
\renewcommand{\fonte}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \centering\small{Fonte: #1}
}

% Comando que trata as notas nos objetos flutuantes
\renewcommand{\nota}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \begin{tabular}{l p{.85\textwidth}}%
        Nota: & #1
    \end{tabular}
}

% -----------------------------------------------------------------------------
% Parágrafos
% -----------------------------------------------------------------------------

% Tamanho da indentação do parágrafo
\setlength{\parindent}{1.5cm}

% Espaçamento entre um parágrafo e outro
\setlength{\parskip}{0.0cm}

% -----------------------------------------------------------------------------
% Fontes
% -----------------------------------------------------------------------------

% Redefinição de fontes
\renewcommand{\ABNTEXchapterfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

% -----------------------------------------------------------------------------
% Sumário
% -----------------------------------------------------------------------------

% Travessão no sumário para apêndices e anexos
\renewcommand{\cftchapteraftersnum}{\hfill\textendash\hfill}

% Insere espaço entre os itens do sumário de diferentes capítulos
\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}

% -----------------------------------------------------------------------------
% Listas
% -----------------------------------------------------------------------------

% Define os títulos das listas
\addto\captionsbrazil{%
% Ajusta nomes padrões do babel
    \renewcommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
    \renewcommand{\listadesimbolosname}{LISTA DE S\'{I}MBOLOS}
    \renewcommand{\listfigurename}{LISTA DE FIGURAS}
    \renewcommand{\listtablename}{LISTA DE TABELAS}
    \renewcommand{\indexname}{\'{I}NDICE REMISSIVO}
% Ajusta nomes usados com a macro \autoref
    \renewcommand{\pageautorefname}{p\'agina}
    \renewcommand{\sectionautorefname}{Se\c{c}\~ao}
    \renewcommand{\subsectionautorefname}{Subse\c{c}\~ao}
    \renewcommand{\subsubsectionautorefname}{Subsubse\c{c}\~ao}
    \renewcommand{\paragraphautorefname}{Subse\c{c}\~ao}
}

% Cria a lista de quadros
\newcommand{\listofquadrosname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}

% -----------------------------------------------------------------------------
% Capa
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\imprimircapa}{
    \begin{capa}
        \begin{center}
		\begin{SingleSpacing}
            		\large\MakeUppercase{\imprimirinstituicao} \\
	    		\abntex@ifnotempty{\imprimirdepartamento}
            		{
                		\MakeUppercase{\imprimirdepartamento} \\
            		}
           		\large\MakeUppercase{\imprimirprograma} \\
		\end{SingleSpacing}
        \end{center}
        \vspace{60pt}
	\begin{center}
		\large\MakeUppercase{\imprimirautor}\\
	\end{center}
	\vspace{120pt}
        \begin{center}
            \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}
            \abntex@ifnotempty{\imprimirsubtitulo}
	    {%
                {\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}
            }
        \end{center}
	\vspace{120pt}
	\begin{center}
		\large\MakeUppercase{\imprimirprojeto}
	\end{center}
	\vfill
        \begin{center}
		\begin{SingleSpacing}
            		\large\MakeUppercase{\imprimirlocal}\\
            		\large\MakeUppercase{\imprimirdata}
		\end{SingleSpacing}
    	\end{center}

    \end{capa}

}
\makeatother

% -----------------------------------------------------------------------------
% Folha de rosto
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\imprimirfolhaderosto}
{%
    \setcounter{page}{2}
    \begin{center}
        \large\MakeUppercase{\imprimirautor}\\
    \end{center}

    \vspace*{96pt}

    \begin{center}
        \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}
        \abntex@ifnotempty{\imprimirsubtitulo}
	{%
        	{\ABNTEXchapterfont \large \imprimirsubtitulo:}
        }
    \end{center}

    \vspace*{60pt}

    \abntex@ifnotempty{\imprimirpreambulo}
    {%
        \SingleSpacing
        \begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
            & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
            \abntex@ifnotempty{\imprimirareaconcentracao}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirlinhapesquisa}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirorientador}
            {%
                & \small\imprimirorientadorRotulo & \imprimirorientador \\
                & & \small\imprimirinstOrientador \\ & & \\
            }
            \abntex@ifnotempty{\imprimircoorientador}
            {%
                & \small\imprimircoorientadorRotulo & \imprimircoorientador \\
                & & \small\imprimirinstCoorientador
            }
        \end{tabular}
    }

    \vspace*{\fill}

    \begin{center}
	\begin{SingleSpacing}
            \large\MakeUppercase{\imprimirlocal}\\
            \large\MakeUppercase{\imprimirdata}
	\end{SingleSpacing}
    \end{center}
}
\makeatother

% -----------------------------------------------------------------------------
% Folha de aprovação
% -----------------------------------------------------------------------------
\makeatletter
\newcommand{\imprimirfolhadeaprovacao}
{
    \cleardoublepage
	\thispagestyle{empty}
	\begin{adjustwidth}{-.5cm}{}
		\begin{center}
			\singlespacing
			\large\textbf{\allcaps{\@author}}\\
		\end{center}
		%\vspace{30mm}
		\vspace{15mm}
		\begin{center}
			\large\textbf{\allcaps{\@title}}\par
		\end{center}
		%\vspace{60pt}
		\vspace{10mm}
		\hfill\begin{minipage}{.5\textwidth}
				\singlespacing
				\hyphenpenalty=10000
				\@goalfulltext\par
		\end{minipage}
		%\vspace{15mm}
		\vspace{10mm}
		\begin{center}
		    {\large Data de aprovação: \@approvaldate}
		    \vspace{0,6cm}
		    \printevalboard
		\end{center}
		\vfill
		\begin{center}
			\textbf{\allcaps{\@address}}\par
			\textbf{\@depositshortdate}\par
		\end{center}
	\end{adjustwidth}
}
\makeatother

% -----------------------------------------------------------------------------
% Dedicatória
% -----------------------------------------------------------------------------
\renewenvironment{dedicatoria}[1][]
{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\dedicatorianame}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}

% ----------------------------------------------------------------------------
% Epígrafe
% ----------------------------------------------------------------------------
\renewenvironment{epigrafe}[1][]
{%
    \ifthenelse{\equal{#1}{}}
    {%
        \PRIVATEbookmarkthis{\epigraphname}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}

\newcommand{\approvalpage}{
    \cleardoublepage
	\thispagestyle{empty}
	\begin{adjustwidth}{-.5cm}{}
		\begin{center}
			\singlespacing
			\large\textbf{\allcaps{\@author}}\\
		\end{center}
		%\vspace{30mm}
		\vspace{15mm}
		\begin{center}
			\large\textbf{\allcaps{\@title}}\par
		\end{center}
		%\vspace{60pt}
		\vspace{10mm}
		\hfill\begin{minipage}{.5\textwidth}
				\singlespacing
				\hyphenpenalty=10000
				\@goalfulltext\par
		\end{minipage}
		%\vspace{15mm}
		\vspace{10mm}
		\begin{center}
		    {\large Data de aprovação: \@approvaldate}
		    \vspace{0,6cm}
		    \printevalboard
		\end{center}
		\vfill
		\begin{center}
			\textbf{\allcaps{\@address}}\par
			\textbf{\@depositshortdate}\par
		\end{center}
	\end{adjustwidth}
}

\newcommand{\incluirlistadequadros}{%% Definição do comando para inclusão da lista de quadros
  \pdfbookmark[0]{\listtabframedname}{lod}%% Marcador
  \begin{Spacing}{1.5}%% Espaçamento simples entre linhas
    \listoftabframeds*%% Impressão da lista de quadros
  \end{Spacing}
  \cleardoublepage%% Página de verso
}

\newcommand{\incluirlistadeilustracoes}{%% Definição do comando para inclusão da lista de ilustrações
  \pdfbookmark[0]{\listfigurename}{lof}%% Marcador
  \begin{Spacing}{1.5}%% Espaçamento simples entre linhas
    \listoffigures*%% Impressão da lista de figuras
  \end{Spacing}
  \cleardoublepage%% Página de verso
}

