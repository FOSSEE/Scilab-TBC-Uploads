clc
clear
//Initialization of variables
x1=1/3
n1=1
n2=2
x2=2/3
p=12.7 //psia
cp1=7.01 //Btu/mole R
cp2=6.94 //Btu/mole R
R0=1.986
T2=460+86.6 //R
T1=460 //R
p0=14.7 //psia
//calculations
p1=x1*p
p2=x2*p
ds1= cp1*log(T2/T1) - R0*log(p1/p0)
ds2= cp2*log(T2/T1) - R0*log(p2/p0)
S=n1*ds1+n2*ds2
//results
printf("Entropy of mixture = %.2f Btu/R",S)
printf("\n the answer given in textbook is wrong. please check using a calculator")
