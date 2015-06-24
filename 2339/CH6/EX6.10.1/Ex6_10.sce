clc
clear

T3=1350+273;        //in K
T1=30+273;          //in K
Qs=750;         //in kJ/kg
Cv=0.718;
G=1.4;

//For Process 2-3
T2=T3-(Qs/Cv);
r=(T2/T1)^(1/(G-1));
printf('The compression Ratio is %3.2f ',r);
printf('\n');

Eff=100*(1-(1/(r^(G-1))));
printf('The Efficiency is %3.1f Percent',Eff);
printf('\n');

W=Eff*Qs/100;
printf('The Work Output is %3.0f kJ/kg',W);
printf('\n');

P21=(r^G);
P32=T3/T2;
P31=P21*P32;
printf('Ratio of maximum to minimum pressure is %3.2f ',P31);
printf('\n');
