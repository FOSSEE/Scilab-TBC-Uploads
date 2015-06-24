clc
clear

r=6;        //Compression Ratio
T1=20+273;  //in K
G=1.4;
Cv=0.718;
Qs=1900;
Eff=100*(1-(1/(r^(G-1))));
printf('The Efficiency is %3.2f Percent',Eff);
printf('\n');

T2=T1*(r^(G-1));
printf('The value of T2 is %3.0f K',T2);
printf('\n');

T3=(Qs/Cv)+T2;
printf('The value of T3 is %3.0f K',T3);
printf('\n');

T4=T3/(r^(G-1));
printf('The value of T4 is %3.0f K',T4);
printf('\n');

W=Qs*Eff/100;
printf('The Work Output is %3.0f kJ/kg',W);
printf('\n');
