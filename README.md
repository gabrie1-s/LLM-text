# LLM-text

Compile o documento com `make pdf` (requer TeX Live e latexmk).
O resultado é `main.pdf`, incluindo as referências bibliográficas.

Para recompilar automaticamente ao salvar alterações, execute `make watch`
e mantenha o terminal aberto. O monitor acompanha o arquivo principal e suas
dependências, incluindo seções, bibliografia e imagens. Use `Ctrl+C` para parar.

`make clean` remove os arquivos auxiliares e preserva o PDF.
