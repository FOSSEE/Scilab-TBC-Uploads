clc
clear

//Input data
V1=8 //Intial volume in litre
V2=7.8 //Final volume in litre
P1=0.7 //Intial Pressure in MPa
P2=2.7 //Final Pressure in MPa

//Calculations
K=(P2-P1)/(log(V1/V2)) //Bulk modulus of liquid in kPa

//Output
printf('Bulk modulus of liquid is %3.3f kPa',K)
