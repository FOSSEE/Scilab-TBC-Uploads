//Example 1.14: 
clc;
clear;
close;
//given data :
e=1.6*10^-19;// electron charge in coulombs
k=1.38*10^-23;//Boltzmann constant in m^2-kg/s^2-K^-1
T=300;//in Kelvin
Vt=(k*T)/e;//in V
Ir1=10^-10;//in A
Ir2=10^-12;//in A
V21=((Vt)*log10(Ir1/Ir2))*2.3026;//in V
V211=0.5;//in V
V2=(1/2)*(V21+V211);//in V
V1=(1/2)*(V211-V21);//in V
I1=Ir2*exp(V2/Vt)*10^6;//in micro-A
I2=I1;//
format('v',8)
disp(V2,"diode voltage V2 is ,(V)=")
disp(V1,"diode voltage V1 is ,(V)=")
format('v',7)
disp(I1,"diode current is,(micro-A)=")
//diode current is calculated wrong in the textbook
