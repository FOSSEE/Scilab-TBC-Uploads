clc
//initialisation of variables
b= 4 //in
h= 9 //in
l= 6 //in
Mx= 600 //lb
My= 100 //lb
//CALCULATIONS
Zx= b*h^3/(12*h/2)
Zy= b^3*h/(12*b/2)
S1= Mx*l*12/Zx
S2= My*b*12/Zy
Sb= S1+S2
Sd= -S1-S2
//RESULTS
printf ('Maximum stress= %.1f psi (tension)',Sb)
printf (' \n Maximum stress=%.1f psi (compression)',Sd) 


