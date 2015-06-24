//example 17.13
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
D=0.1;
Nu=23.3;
k=0.0313;
Ts=438;//temperature
Tsurr=296;//temperature
sigma=5.67e-8;
epsilon=0.85;//emmisivity
h=Nu*k/D;
q=h*pi*D*(Ts-Tsurr)+epsilon*sigma*pi*D*(Ts^4-Tsurr^4);
disp(q,"heat transfer rate from the pipe in W/m");
clear()

