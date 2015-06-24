//calculating lime-soda and hardness
//Example 1.7
clc
clear
//For Ca(HCO3)2,
q1=40.5//quantity
wt1=162//molecular weight 
M1=100/wt1//multiplication factor
Eq1=M1*q1//CaCO3 equivalents in mg/L
//For Mg(HCO3)2,
q2=36.5//quantity
wt2=146//molecular weight 
M2=100/wt2//multiplication factor
Eq2=M2*q2//CaCO3 equivalents in mg/L
//For MgSO4,
q3=30//quantity
wt3=120//molecular weight 
M3=100/wt3//multiplication factor
Eq3=M3*q3//CaCO3 equivalents in mg/L
//For CaSO4,
q4=34//quantity
wt4=136//molecular weight 
M4=100/wt4//multiplication factor
Eq4=M4*q4//CaCO3 equivalents in mg/L
//For CaCl2,
q5=27.75//quantity
wt5=111//molecular weight 
M5=100/wt5//multiplication factor
Eq5=M5*q5//CaCO3 equivalents in mg/L
// NaCl neglected
V=20000//Volume of water in litres
L=(74*(Eq1+(2*Eq2)+Eq3)/100)*(V/1000)//Lime required for softening 20000 litres in g
S=(106*(Eq3+Eq4+Eq5)/100)*(V/1000)//soda required for softening 20000 litres in g
L1=(100*L)/(84*1000)//Lime required for 84% purity in kg
S1=(100*S)/(92*1000)//Soda required for 92% purity in kg
Th=Eq1+Eq2//Temperory hardness due to Mg(HCO3)2 and Ca(HCO3)2
Ph=Eq3+Eq4+Eq5//Permanent hardness due to CaSO4 and MgSO4and CaCL2
printf('Thus amount of lime(84percent pure) required to soften 20000 litres of water = %2.5f kg\n',L1)
printf('and amount of soda(92percent pure) required to soften 20000 litres of water = %2.5f kg\n',S1)
printf('\nAlso Temporary hardness = %2.2f ppm',Th)
printf('\n and permanent hardness = %2.2f ppm',Ph)
