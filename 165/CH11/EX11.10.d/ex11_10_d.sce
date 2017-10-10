//Example 11.10(d)
clc;
Ko=8.854*10^-12;    //Permitivity of free Space
//Given values of bridge elements
R3=260;
C2=105*10^-12;
R4=1000/%pi;
C4=0.5*10^-6;
f=50;           //frequency in Hz
d=4.5*10^-3;    //Thickness of sheet in m
r=6*10^-2;      //Radius of electrodes
A=%pi*r^2;      //Area of electrodes in sq m
//Value of C1 for Schering's Bridge
C1=C2*R4/R3;
//Power factor
D=2*%pi*f*C4*R4;
//Relative Permitivity
Kr=C1*d/(Ko*A);
disp(C1,'Value of Capacitance is ')
printf('\nPower Factor is %.4f \n',D)
disp(Kr,'Relative permitivity of the sheet')