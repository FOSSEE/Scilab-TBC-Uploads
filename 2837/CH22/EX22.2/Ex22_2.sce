clc
clear
//Initalization of variables
h3=85.282 //Btu/lb
s2=0.16392
sf=0.16798
//calculations
sfg=sf-0.023954
x3=-(s2-sf)/sfg
h2=78.335 - x3*67.651
h4=26.365 //Btu/lb
h1=h4
ref=h2-h1
work=h3-h2
cp1=ref/work
h2d=78.355
h1d=26.365 //Btu/lb
h3d=87.495 //Btu/lb
ref2=h2d-h1d
work2=h3d-h2d
cp2=ref2/work2
//results
printf("\n Coefficient of performance in wet compression = %.3f",cp1)
printf("\n Coefficient of performance in dry compression = %.3f",cp2)
