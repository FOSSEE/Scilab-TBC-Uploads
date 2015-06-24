//Example 6.22.
clc
format(6)
alpha_dc=0.99
ICBO=50*10^-6
IB=1*10^-3
IC=((alpha_dc*IB)/(1-alpha_dc))+(ICBO/(1-alpha_dc))
IC1=IC*10^3
disp("Assume that,  IB = 1 mA")
disp(IC1,"IC(mA) = ((alpha_dc*IB) / (1-alpha_dc)) + (ICBO/(1-alpha_dc)) = ")
IE=IC+IB
IE1=IE*10^3
disp(IE1,"IE(mA) = IC + IB = ")