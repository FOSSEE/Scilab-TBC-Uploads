clc
clear
//Initialization of variables
n1=8 //Moles of CO2
n2=9 //Moles of H2O
n3=47 //Moles of N2
disp("from table B-10,")
h1=118 //Enthalpy of CO2
h2=104 //Enthalpy of H2O
h3=82.5 //Enthalpy of N2
Q=2203279 //Btu
//calculations
U11=n1*h1+n2*h2+n3*h3
U12=U11+Q
T2=5271 //R
//results
printf("Upon interpolating, T2 = %d R",T2)

