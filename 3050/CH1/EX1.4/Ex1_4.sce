//calculating hardness
//Example 1.4
clc
clear
//For Ca(HCO3)2,
q1=40.5//quantity
wt1=162//molecular weight 
M1=100/wt1//multiplication factor
Eq1=M1*q1//CaCO3 equivalents in mg/L
//For Mg(HCO3)2,
q2=46.5//quantity
wt2=146//molecular weight 
M2=100/wt2//multiplication factor
Eq2=M2*q2//CaCO3 equivalents in mg/L
//For MgSO4,
q3=27.6//quantity
wt3=120//molecular weight 
M3=100/wt3//multiplication factor
Eq3=M3*q3//CaCO3 equivalents in mg/L
//For CaSO4,
q4=32.1//quantity
wt4=136//molecular weight 
M4=100/wt4//multiplication factor
Eq4=M4*q4//CaCO3 equivalents in mg/L
//For CaCl2
q5=22.45//quantity
wt5=111//molecular weight 
M5=100/wt5//multiplication factor
Eq5=M5*q5//CaCO3 equivalents in mg/L
Th=Eq1+Eq2//Temperory hardness due to Mg(HCO3)2 and Ca(HCO3)2
Ph=Eq3+Eq4+Eq5//Permanent hardness due to CaSO4 and MgSO4 and CaCl2
T=Th+Ph//Total hardness
printf('Thus in Temporary hardness = %2.2f mg/L',Th)
printf('\n and permanent hardness = %2.2f mg/L',Ph)
printf('\n and total hardness = %3.2f mg/L',T)
