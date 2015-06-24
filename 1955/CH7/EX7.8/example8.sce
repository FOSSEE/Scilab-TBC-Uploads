clc
clear
//input data
N1=1000//The running speed of the pump-1 in rpm
D1=0.3//The impeller diameter of pump-1 in m
Q1=0.02//The discharge of pump-1 in m^3/s
H1=15//The head developed by the pump-1 in m
N2=1000//The running speed of the pump-2 in rpm
Q2=0.01//The discharge of pump-2 in m^3/s

//calculations
D2=(((Q2/Q1)*(N1/N2))^(1/3))*(D1)//Impeller diameter of the pump-2 in m
H2=(((D2/D1)*(N2/N1))^(2))*(H1)//Head developed by the pump-2 in m

//output
printf('(a)Impeller diameter of the pump-2 is %3.3f m\n(b)Head developed by the pump-2 is %3.2f m',D2,H2)
