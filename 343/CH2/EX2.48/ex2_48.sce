clc;
L=0.01;         //Assigning value sto parameters
fr=50;
function v=f(t), y=400*sin(3000*t-10),endfunction;   //Defining functions
function i=f1(t),i=10*sqrt(2)*cos(3000*t-55), endfunction;
V=278.54-%i*49.11;
I=8.191+5.7*%i;
Z=V/I;
R=real(Z);
Xl=3000*L;
Xc=50;
C=1/(2*%pi*fr*Xc);
disp("Ohms",R,"resistance R");
disp("Farad",C,"Capacitance C");