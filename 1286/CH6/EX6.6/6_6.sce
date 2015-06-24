clc
//initialisation
m=2//kg
T=273//k
r=8314.3//j/mol/k
//CALCULATIONS
c=sqrt(3*r*T/m)
Ti=(4*c*c*m/(3*r))
C=Ti-273
//results
printf(' temperature at which rms speed will double is= % 1f c',C)
