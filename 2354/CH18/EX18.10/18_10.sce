//example 18.10
clc; funcprot(0);
// Initialization of Variable
e1=0.8;
e2=0.4;
T1=1200;
T2=500;
A=1;
Jr=(108323+59043)/2;
sigma=5.67e-8;
q1=sigma*(T1^4-T2^4)/((1-e1/e1/A)+1/(A*0.5+(2+2)^-1)+(1-e2)/e2/A);
disp(q1/1000,"the rate of energy supply in kW/m");

Tr=(Jr/sigma)^0.25;
disp(Tr,"temperature in radiating surface in K");
clear()
