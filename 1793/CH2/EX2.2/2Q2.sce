clc
//initialisation of variables
//from graph
d= 0.15 //mm
w= 0.17 //mm
a= 0.27 //mm
//calculations
C= a/d
c= w^2/(a*d)
//results
printf ('uniformity coefficient = % f ',C)
printf ('coefficient of gradation = % 2f ',c)
