//calculating hardness
//Example 1.3
clc
clear
//For Ca(HCO3)2,
q1=10//quantity
wt1=162//molecular weight 
M1=100/wt1//multiplication factor
Eq1=M1*q1//CaCO3 equivalents in mg/L
//For Mg(HCO3)2,
q2=8.5//quantity
wt2=146//molecular weight 
M2=100/wt2//multiplication factor
Eq2=M2*q2//CaCO3 equivalents in mg/L
//For CaSO4,
q3=12//quantity
wt3=136//molecular weight 
M3=100/wt3//multiplication factor
Eq3=M3*q3//CaCO3 equivalents in mg/L
//For MgSO4,
q4=14//quantity
wt4=120//molecular weight 
M4=100/wt4//multiplication factor
Eq4=M4*q4//CaCO3 equivalents in mg/L
Th=Eq1+Eq2//Temperory hardness due to Mg(HCO3)2 and Ca(HCO3)2
Ph=Eq3+Eq4//Permanent hardness due to CaSO4 and MgSO4
T=Th+Ph//Total hardness
printf('Thus (i) in mg/L Temporary hardness = %2.2f',Th)
printf('\n and permanent hardness = %2.2f',Ph)
printf('\n and total hardness = %2.2f',T)
printf('\n\n(ii) in ppm Temporary hardness = %2.2f',Th)
printf('\n and permanent hardness = %2.2f',Ph)
printf('\n and total hardness = %2.2f',T)
ThC=Th*0.07//temperory hardness in degreeCl
PhC=Ph*0.07//permanent hardness in degreeCl
TC=T*0.07//total hardness in degreeCl
ThF=Th*0.1//temperory hardness in degreeFr
PhF=Ph*0.1//permanent hardness in degreeFr
TF=T*0.1//total hardness in degreeFr
printf('\n\n(iii) in degreeCl Temporary hardness = %2.4f',ThC)
printf('\n and permanent hardness = %2.4f',PhC)
printf('\n and total hardness = %2.4f',TC)
printf('\n\n(iv) in degreeFr Temporary hardness = %2.4f',ThF)
printf('\n and permanent hardness = %2.4f',PhF)
printf('\n and total hardness = %2.4f',TF)



