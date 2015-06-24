clc
clear
//Initialization of variables
p1=2.758 //Mpa
p2=0.552 //Mpa
T1=700 //K
T2=700 //K
n=1
R=8.3143
Cv=21
Cp=29.3
//calculations
dsa=n*R*log(p1/p2)
T3=437.5 //K
dsb=Cv*log(T3/T2)
T4=350 //K
dsc=Cp*log(T4/T3)
T5=634 //K
dsd=0
T6=700 //K
dse=Cp*log(T6/T5)
dstotal=dsa+dsb+dsc+dsd+dse
//results
printf("Entropy change in case a = %.3f kJ/kmol K",dsa)
printf("\n Entropy change in case b = %.3f kJ/kmol K",dsb)
printf("\n Entropy change in case c = %.3f kJ/kmol K",dsc)
printf("\n Entropy change in case d = %.3f kJ/kmol K",dsd)
printf("\n Entropy change in case e = %.3f kJ/kmol K",dse)
printf("\n Entropy change in total process = %.3f kJ/kmol K",dstotal)
