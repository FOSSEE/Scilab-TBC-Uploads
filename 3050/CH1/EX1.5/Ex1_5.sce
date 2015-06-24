//calculating hardness
//Example 1.5
clc
clear
//For Ca(HCO3)2,
q1=12.5//quantity
wt1=162//molecular weight 
M1=100/wt1//multiplication factor
Eq1=M1*q1//CaCO3 equivalents in mg/L
//For CaCl2,
q2=8.2//quantity
wt2=111//molecular weight 
M2=100/wt2//multiplication factor
Eq2=M2*q2//CaCO3 equivalents in mg/L
//For MgSO4,
q3=2.6//quantity
wt3=120//molecular weight 
M3=100/wt3//multiplication factor
Eq3=M3*q3//CaCO3 equivalents in mg/L
Th=Eq1//Temperory hardness due to Ca(HCO3)2 in ppm
Ph=Eq3+Eq2//Permanent hardness due to MgSO4 and CaCl2 in ppm
T=Th+Ph//Total hardness in ppm
TF=T*0.1//Total hardness in degreeFr
printf('Thus in ppm Temporary hardness = %2.2f ppm',Th)
printf('\n and permanent hardness = %2.2f ppm',Ph)
printf('\n in degreeFr total hardness = %3.3f',TF)
