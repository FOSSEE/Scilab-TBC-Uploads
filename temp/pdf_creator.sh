$ cat changedir.sh
#!/bin/bash


if [ -f TEX_final.pdf ]
then
	rm TEX_final.pdf
fi

./latex_test.sh $1 $2 $3 $4
pdflatex TEX_final.tex > log.txt
pdflatex TEX_final.tex >> log1.txt
pdflatex TEX_final.tex >> log1.txt
pdflatex TEX_final.tex >> log1.txt

rm log1.txt
