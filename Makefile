PANDOC_ARGS=--incremental

pres.pdf: pres.md beamerthemeFurtwangen.sty
	pandoc ${PANDOC_ARGS} -o pres.pdf -t beamer --latex-engine=/usr/bin/xelatex pres.md

pres.latex: pres.md beamerthemeFurtwangen.sty
	pandoc ${PANDOC_ARGS} -o pres.latex -t latex --latex-engine=/usr/bin/xelatex pres.md
