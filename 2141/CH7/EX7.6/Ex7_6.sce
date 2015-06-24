
clc
//initialisation of variables
T1=500 //R
T2=2000 //R
P1=30 //lbf/in^2
P2=20 //lbf/in^2
M=32.00 //ft
S2=11.515*log(T2/T1)
s1=2*172*(1/sqrt(T2-1/sqrt(T1)))
s=-1530*[(1/T2-1/T1)]
s3=-1.986*log(P2/P1)
//CALCULATIONS
S=S2-s1+s+s3//Btu/lb mole R
S2=S/M//Btu/lbm-R
//RESULTS
printf('The change in entropy per =% f Btu/lbm',S2)
