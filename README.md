# Análise Exploratória das Ferramentas de Desenvolvimento Nativas dos Navegadores Web

## Repositório do Trabalho de Conclusão de Curso (TCC)

![LaTeX](https://img.shields.io/badge/LaTeX-008080?style=for-the-badge&logo=latex&logoColor=white)
![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)

---

### 📖 Sobre o Projeto

Este repositório contém o desenvolvimento do meu Trabalho de Conclusão de Curso, cujo objetivo é realizar uma análise exploratória e comparativa das **ferramentas de desenvolvimento nativas (DevTools)** dos quatro principais navegadores do mercado no ano de 2025:

* **Google Chrome**
* **Mozilla Firefox**
* **Apple Safari**
* **Microsoft Edge**

O estudo busca identificar, comparar e documentar as funcionalidades de cada conjunto de ferramentas, servindo como um panora geral das ferramentas dos principais navegadores no ano de 2025

O documento é escrito em **LaTeX**, seguindo as normas da ABNT através do pacote **utfpr-abnTeX2**.

---

### 📂 Estrutura do Repositório

O projeto está organizado na seguinte estrutura de diretórios para facilitar a manutenção e a escrita modular do trabalho:

```
.
├── assets/                  # Imagens, figuras e outros recursos estáticos
├── config/                  # Arquivos de configuração (ex: abntex2-opts.cls)
├── src/                     # Diretório principal com os arquivos-fonte .tex
│   ├── pre-textuais/        # Capa, folha de rosto, resumo, etc.
│   ├── textuais/            # Capítulos do TCC (introdução, análise, conclusão)
│   └── pos-textuais/        # Referências (.bib) e apêndices
├── .gitignore               # Arquivos e diretórios ignorados pelo Git
├── main.tex                 # Arquivo LaTeX principal que une o documento
└── README.md                # Este arquivo 
```

---

### 🚀 Como Compilar o Projeto

Para gerar o arquivo PDF do TCC a partir dos arquivos-fonte `.tex`, você precisará de uma distribuição LaTeX instalada em seu sistema (como MiKTeX, TeX Live ou MacTeX).

**Pré-requisitos:**

* Distribuição LaTeX
* Editor de LaTeX (recomenda-se Texmaker, TeXstudio ou VS Code com a extensão LaTeX Workshop)
* Git (para clonar o repositório)

**Passos para Compilação:**

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/seu-usuario/tcc-analise-devtools.git](https://github.com/seu-usuario/tcc-devtools.git)
    ```

2.  **Navegue até o diretório do projeto:**
    ```bash
    cd tcc-devtools
    ```

3.  **Abra o arquivo `main.tex`** no seu editor de LaTeX preferido.

4.  **Compile o projeto.** O processo de compilação geralmente segue a seguinte ordem para garantir que todas as referências cruzadas e a bibliografia sejam corretamente geradas:

    * `pdflatex main.tex`
    * `bibtex main`
    * `pdflatex main.tex`
    * `pdflatex main.tex`

    A maioria dos editores de LaTeX modernos automatiza esse processo com um único comando ou botão (geralmente chamado de "Build & View" ou "Compilação Rápida").

Após a compilação bem-sucedida, o arquivo `main.pdf` será gerado no diretório raiz do projeto.

---

### 👨‍🎓 Autor

* **Lucas Pereira Machado**
* **Email:** [lucasper057@gmail.com](mailto:lucasper057@gmail.com)
* **LinkedIn:** [https://www.linkedin.com/in/lucas-pereira-69a4a6217/](https://www.linkedin.com/in/lucas-pereira-69a4a6217/)
* **GitHub:** [@pereira299](https://github.com/pereira299)

---

### 🎓 Orientador

* **Prof. Ms. Eduardo B. Pezzuti**

---

- **Instituição:** [UTFPR - Universidade Tecnologica Federal do Paraná](www.utfpr.edu.br)
- **Curso:** [TSI - Tecnologia em sistemas para internet](https://tsi.td.utfpr.edu.br/)
- **Ano:** 2025
