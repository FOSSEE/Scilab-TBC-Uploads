//calculating lime and soda
//Example 1.6
clc
clear
//For Ca(HCO3)2,
q1=4.86//quantity
wt1=162//molecular weight 
M1=100/wt1//multiplication factor
Eq1=M1*q1//CaCO3 equivalents in mg/L
//For Mg(HCO3)2,
q2=7.3//quantity
wt2=146//molecular weight 
M2=100/wt2//multiplication factor
Eq2=M2*q2//CaCO3 equivalents in mg/L
//For CaSO4,
q3=6.8//quantity
wt3=136//molecular weight 
M3=100/wt3//multiplication factor
Eq3=M3*q3//CaCO3 equivalents in mg/L
//For MgCl2,
q4=5.7//quantity
wt4=95//molecular weight 
M4=100/wt4//multiplication factor
Eq4=M4*q4//CaCO3 equivalents in mg/L
//For MgSO4,
q5=9//quantity
wt5=120//molecular weight 
M5=100/wt5//multiplication factor
Eq5=M5*q5//CaCO3 equivalents in mg/L
//SiO2 and NaCl neglected
V=25000//Volume of water in litres
L=74*(Eq1+(2*Eq2)+Eq4+Eq5)/100//lime requirement in mg/L
L1=L*V/1000000//Lime required for softening 25000 litres in kg
S=106*(Eq3+Eq4+Eq5)/100//soda requirement in mg/L
S1=S*V/1000000//soda required for softening 25000 litres in kg
printf('Thus amount of lime required to soften 25000 litres of water = %2.5f kg\n',L1)
printf('and amount of soda required to soften 25000 litres of water = %2.5f kg\n',S1)
