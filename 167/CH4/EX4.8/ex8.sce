//ques8
//Heating of a Gas in a Tank by Stirring
clear
clc
//(a)Final Temp
w=0.02//power in hp
t=0.5//time in hour
W=w*t*2545//paddle wheel work in  Btu
//As W=m*Cavg*(T2-T1) ie T2=W/(m*Cavg)+T1
m=1.5//mass in lbm
T1=80//temperature in F
Cavg=0.753//average specific heat at constt volume in Btu/F
T2=W/(m*Cavg)+T1;//Temp in F
printf('(a) Temperature = %.1f F\n',T2);

//(b)The final pressure is determined from the ideal-gas relation
//P1V1/T1=P2V2/T2 temperature in rankine or kelvin
T1=T1+460//converted to R
T2=T2+460//converted to R
P1=50//preesure at 1st state in psia
P2=P1*T2/T1;//final Pressure in psia
printf(' (b) Final Pressure = %.1f psia',P2);
