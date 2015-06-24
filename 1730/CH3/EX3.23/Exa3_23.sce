//Exa3.23
clc;
clear;
close;
// given data
// (i) when
I_D=2;// in mA
I_D=I_D*10^-3;// in A
V_D=0.5;// in V
R1=V_D/I_D;
disp("Resistace is : "+string(R1)+" ohm");
// (ii) when
I_D=20;// in mA
I_D=I_D*10^-3;// in A
V_D=0.8;// in V
R2=V_D/I_D;
disp("Resistace is : "+string(R2)+" ohm");
// (ii) when
I_D=-1;// in miu A
I_D=I_D*10^-6;// in A
V_D=-10;// in V
R3=V_D/I_D;// in ohm
R3=R3*10^-6;// in M ohm
disp("Resistace is : "+string(R3)+" M ohm");
