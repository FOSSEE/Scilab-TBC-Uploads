clc
//initialisation of variables
N= 40 //lbf
mu= 0.1
l= 10 //ft
J= 778 //ft lbf/Btu
//CALCULATIONS
f= mu*N
FW= f*l
n= FW/J
//RESULTS
printf ('No of Btu involved= %.3f ft Btu',n)
