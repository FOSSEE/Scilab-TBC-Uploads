clc
V=3; //m^3
m=10; //kg
T=300; //K

disp("(i) Using perfect gas equation")
R0=8314;
M=44; 
R=R0/M;
p=m*R*T/V;
disp("Pressure Using perfect gas equation =")
disp(p)
disp("N/m^2")


disp("(ii) Using Van der Waals’ equation")
a=362850; //Nm^4/(kg-mol)^2
b=0.0423; //m^3/(kg-mol)
v=13.2; //m^3/kg-mol

p=R0*T/(v-b) - a/v^2;
disp("Pressure Using Van der Waals’ equation=")
disp(p)
disp("N/m^2")


disp("(iii) Using Beattie Bridgeman equation")

A0=507.2836;
a=0.07132;
B0=0.10476;
b=0.07235;
C=66*10^4;
A=A0*(1-a/v);
B=B0*(1-b/v);
e=C/v/T^3;

p=R0*T*(1-e)/v^2*(v+B) - A/v^2;
disp("Pressure Using Beattie Bridgeman equation = ")
disp(p)
disp("N/m^2")
