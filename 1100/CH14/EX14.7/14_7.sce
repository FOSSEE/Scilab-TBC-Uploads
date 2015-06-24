clc
//initialisation of variables
HR=14087 //Btu
HRC=3952 //Btu
x1=0.9
x2=0.05
//Calculations
HR1=x1*HR
HR2=x2*HRC
e=(HR2+HR1)/HR
//Results
printf ('Efficiency = %.3f',e)
