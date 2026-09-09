$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1 %O %S';
$sleep_time = 1;
@default_files = ('documento.tex');

# Glossários e siglas do template abnTeX2; BibTeX e índices são nativos do latexmk.
add_cus_dep('glo', 'gls', 0, 'build_glossaries');
add_cus_dep('acn', 'acr', 0, 'build_glossaries');
sub build_glossaries {
    return system('makeglossaries', $_[0]);
}
$clean_ext .= ' acn acr alg glg glo gls glsdefs ist';
