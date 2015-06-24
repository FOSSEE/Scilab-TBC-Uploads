//Example 6.12.
clc
format(6)
alpha=0.98
ICO=5*10^-6
ICBO=ICO
IB=100*10^-6
IC=((alpha*IB)/(1-alpha))+(ICO/(1-alpha))
IC1=IC*10^3
disp(IC1,"The collector current is, IC(mA) = ((alpha*IB)/(1-alpha))+(ICO/(1-alpha))")
IE=IB+IC
IE1=IE*10^3
disp(IE1,"The emitter current is, IE(mA) = IB + IC = ")