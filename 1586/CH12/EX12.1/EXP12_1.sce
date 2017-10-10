clc;funcprot(0);//EXAMPLE 12.1
// Initialisation of Variables
r1=0.111;......//Rate of copper in min^-1 at 135 degree celsius
r2=0.004;.......//Rate of copper in min^-1 at 88 degree celsius
T1=408;.......//Temperature in K
T2=361;.......//Temperature in K
R=1.987;......//Gas constant
Q=20693;.......//Change in Rates
slope=(log(r1)-log(r2))/((1/T1)-(1/T2));....//Slope of the straight line ploted ln(Growth rate) as a function of 1=T,
A=r1/(exp(-Q/(R*T1)));.....//Constant
disp(A,"Constant A=")
disp(slope,"Slpoe of the straight line -Q/R")
