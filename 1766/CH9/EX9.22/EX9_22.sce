clc;funcprot(0);//Example 9.22
//Initilisation of Variables
A=0.6;....//Side of cube in m
T=1000;.....//Gas temparature in K
Pg=0.8;....//Partial pressure in atm
Ph2o=0.2*Pg;....//Water vapoure pressure containing in furnance
R=5.67*10^-8;.....//Stefens boltsman constant 
//calculations
L=0.7*A;....//Characterstic length in m
eh2o=0.09;....//Emissivity of water vapour from the chart for Ph2oL&T values
P1=(Ph2o+Pg)/2;....//in atm
Ch2o=1;....//Common correction factor of water vapour from the chart for Ph2oL&T values
eg=eh2o*Ch2o;....//Emissivity of gas at T
Q=A*eg*R*T^4;....//Heat transfer in kW/m^2
disp(Q/A,"Emissive power of gas in kW/m^2:")
