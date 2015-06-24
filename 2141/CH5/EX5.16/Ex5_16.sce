
clc
//initialisation of variables
h=11710//Btu/lbm-mole
M=32 //Btu
T2=2000//R
T1=500 //R
//CALCULATIONS
H=h/M //Btu/lbm
Cp=H/(T2-T1)//Btu/lbm R
//RESULTS
printf('The ideal gas behavior=% f Btu/lbm R',Cp)
