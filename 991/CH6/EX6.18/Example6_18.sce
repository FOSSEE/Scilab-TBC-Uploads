//Example 6.18.
clc
format(6)
IB=15*10^-6
beta=150
IC=beta*IB
IC1=IC*10^3
disp(IC1,"The collector current, IC(mA) = beta * IB = ")
IE=IC+IB
IE1=IE*10^3
disp(IE1,"The emitter current, IE(mA) = IC + IB = ")
format(7)
alpha=beta/(1+beta)
disp(alpha,"Common-base current gain, alpha = beta/(1+beta) = ")