//Example 6.11
clc
format(6)
IB=100*10^-6
IC=2*10^-3
beta=IC/IB
disp("(a) To find beta of the transistor ")
disp(beta,"beta = IC / IB =")
alpha=beta/(beta+1)
disp("(b) To find alpha of the transistor")
disp(alpha,"alpha = beta / (1+beta) =")
IE=IB+IC
IE1=IE*10^3
disp("(c) To find emitter current, IE")
disp(IE1,"IE(mA) = IB + IC =")  // answer in the textbook is wrong
disp("(d) To find the new value of beta when delta_IB = 25uA and delta_IC = 0.6mA")
delta_IB=25*10^-6
delta_IC=0.6*10^-3
IB1=IB+delta_IB
IB11=IB1*10^6
IC1=IC+delta_IC
IC11=IC1*10^3
disp(IB11,"Therefore,  IB(uA) = ")
disp(IC11,"            IC(mA) = ")
beta1=IC1/IB1
disp("New value of beta of the transistor,")
disp(beta1,"beta = IC / IB = ")