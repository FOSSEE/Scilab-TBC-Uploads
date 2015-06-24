clc
clear

P1=97;          //in kPa
T1=323;         //in K
r=5;            //Compression Ratio
Q=930;          //in kJ/kg
G=1.4;
Cv=0.718;
T2=T1*(r^(G-1));
T3=(Q/Cv)+T2;
printf('Maximum Temperature Attained is %2.2f K',T3);
printf('\n');

Eff=100*(1-(1/(r)^(G-1)));
printf('Thermal Efficiency of cycle is %2.1f Percent',Eff);
printf('\n');

W=Eff*Q/100;
printf('Work Done is %2.2f kJ/kg',W);
printf('\n');
