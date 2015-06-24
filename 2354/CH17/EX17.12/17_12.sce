//example 17.12
clc; funcprot(0);
// Initialization of Variable
Nu=65.8;
k=0.028;
As=1.2*1.2;//area
Ts=350;//temperature
Tsurr=300;//temperature
sigma=5.67e-8;
epsilon=0.25;//emmisivity
h=Nu*k/0.3;
Pe=h*As*(Ts-Tsurr)+epsilon*sigma*As*(Ts^4-Tsurr^4);
disp(Pe,"allowable electrical power in W");
clear()
