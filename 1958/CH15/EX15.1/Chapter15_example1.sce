clc
clear
//Input data
E=5000//Intensity of electric field in N/C
d=0.02//Distance in m
e=(1.6*10^-19)//Charge of the electron in C
m=(9.1*10^-31)//Mass of the electron in kg

//Calculations
v=sqrt(2*e*E*d/m)/10^6//Speed of the electron in m/s *10^6

//Output
printf('Speed of the electron is %3.2f *10^6 m/s',v)
