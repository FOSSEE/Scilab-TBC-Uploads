
//example 3.4
clc; funcprot(0);
// Initialization of Variable
h=-0.171;
A=1;
Tb=300;//temperature
Tf=293;//temperature
W1dot=-60.0;
Qdot=h*A*(Tb-Tf);
disp(Qdot,"the rate of heat transfer in kW");
W2dot=Qdot-W1dot;
disp(W2dot,"the rate of energy transfer in kW");
clear()
