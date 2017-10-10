//ques-25.4
//Calculating kinetic energy of an ideal gas and temperature required
clc
T1=273;//temperature (in K)
n1=1; n2=3;//number of moles
KE=(3/2)*n1*8.314*T1;
T2=KE/((3/2)*8.314*n2);
printf("The kinetic energy of the ideal gas is %.3f kJ/mol and the temperature required for 3 moles of gas is %d K.",KE/1000,T2);
