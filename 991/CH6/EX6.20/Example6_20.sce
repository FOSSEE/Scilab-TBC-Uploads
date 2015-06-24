//Example 6.20.
clc
format(6)
alpha_dc=0.99
ICBO=5*10^-6
IB=20*10^-6
IC=((alpha_dc*IB)/(1-alpha_dc))+(ICBO/(1-alpha_dc))
IC1=IC*10^3
disp(IC1,"IC(mA) = ((alpha_dc*IB)/(1-alpha_dc)) + (ICBO/(1-alpha_dc)) = ")
IE=IB+IC
IE1=IE*10^3
disp(IE1,"Therefore,  IE(mA)= IB + IC = ")