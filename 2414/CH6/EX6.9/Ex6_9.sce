clc;
close();
//page no 200
//prob no. 6.9
//All voltage in V
m=0.6;   //modulation factor
A=100;   //peak carrier level (in V)
Vmax=A*(1+m);
Vmin=A*(1-m);
disp(Vmin,'Vmin:',Vmax,'Vmax:','The maximum and minimum values of positive envelope is')
