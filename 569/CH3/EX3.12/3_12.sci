// calculate the power loss and relative error 
clc;
I=64*10^-3;
R=3200;
P=(I^2)*R;
disp(P,'Power(W)=')
Re=2*0.75+0.2;
disp(Re,'Relative error (%)=')