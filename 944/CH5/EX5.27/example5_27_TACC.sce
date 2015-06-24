//example 5.27

clear;
clc;

//Given:
P1=101.3;//Initial Pressure[KPa]
P2=60;//Final Pressure[KPa]
He=31.8;//Enthalpy of vaporization[KJ/mol]
R=8.314;//Universal gas constant[J/K/mol]
T1=353.2;//boiling point of benzene at 101.3KPa[K]

//To find the boiling point of b/enzene at 60KPa
x=(T1^-1)-(R*0.001*log(P2/P1)/He);
T2=x^-1;//Boiling point of benzene at 60KPa
printf("The boiling point of benzene at 60KPa is %f K",T2);