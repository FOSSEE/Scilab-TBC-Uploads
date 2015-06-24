//calculating lime and soda
//Example 1.9
clc
clear
//For raw water Ca+2,
q1=160//quantity
wt1=40//molecular weight 
M1=100/wt1//multiplication factor
Eq1=M1*q1//CaCO3 equivalents in mg/L
//For Mg+2,
q2=96//quantity
wt2=24//molecular weight 
M2=100/wt2//multiplication factor
Eq2=M2*q2//CaCO3 equivalents in mg/L
//For CO2,
q3=34//quantity
wt3=44//molecular weight 
M3=100/wt3//multiplication factor
Eq3=M3*q3//CaCO3 equivalents in mg/L
//For HCO3-,
q4=403//quantity
wt4=122//molecular weight 
M4=100/wt4//multiplication factor
Eq4=M4*q4//CaCO3 equivalents in mg/L
//For NaAlO2,
q5=20//quantity
wt5=82*2//molecular weight 
M5=100/wt5//multiplication factor
Eq5=M5*q5//CaCO3 equivalents in mg/L
V=300000//Volume of water in litres
L=(74*(Eq2+Eq3+Eq4-Eq5)/100)*(V/1000000)//lime requirement in kg
S=(106*(Eq1+Eq2-Eq4)/100)*(V/1000000)//soda requirement in kg
printf('Thus amount of lime required to soften 250000 litres of water = %3.1f kg\n',L)
printf('and amount of soda required to soften 250000 litres of water = %3.1f kg\n',S)
