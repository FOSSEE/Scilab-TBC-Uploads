clc
clear

//Input data
v1=8 //Intial volume in litres
P1=0.7 //Intial pressure in MPa
v2=7.8 //Final volume in litres
P2=2.7 //Final pressure in MPa

//Calculation
k=(P2-P1)/(log(v1/v2)) //Bulk modulus of elasticity of a liquid in MPa

//Output
printf('Bulk modulus of elasticity of a liquid is %3.3f MPa',k)
