clc
pathname=get_absolute_file_path('8_4_4.sce')
filename=pathname+filesep()+'844.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
A=[1 1;x y]
b=[basis;basis/2]
C=A\b
//Here We solved two linear equations simultaneously
nV=C(1,1)
nL=C(2,1)
H1=5.332
H2=6.340
H3=37.52
H4=42.93
Q=nV*x*H1 + nV*(1-x)*H2 + nL*y*H3 + nL*(1-y)*H4
printf(" \n Heat transferred= %f Kj",Q)
disp("The answer for this problem in Text is wrong")