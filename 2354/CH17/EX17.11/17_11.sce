//example 17.11
clc; funcprot(0);
// Initialization of Variable
k=33.8e-3;
L=0.71;
A=1.02*0.71;//area
Ts=505;//temperature
Tsur=296//temperature
Nu=147;
h=Nu*k/L;
q=h*A*(Ts-Tsur);
disp(q,"heat transfer by convection in W");
qrad=A*5.67e-8*(Ts^4-Tsur^4);
disp(qrad,"heat transfer by radiation in W");
hrad=5.67e-8*(Ts+Tsur)*(Ts^2+Tsur^2);
disp(hrad,"linearized radiation coffecient in W/m^2-K");
clear()
