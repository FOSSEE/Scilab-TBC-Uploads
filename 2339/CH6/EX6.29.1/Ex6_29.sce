clc
clear

T1=25+273;      //in K
T3=1500+273;        //in K
Qa=900;     //in kJ/kg
Cv=0.718;
G=1.4;

T2=T3-(Qa/Cv);
r=(T2/T1)^(1/(G-1));
printf('Compression Ratio is %2.1f ',r);
printf('\n');

Eff=100*[1-(1/(r^(G-1)))];
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');

Px=r^G;     //Max Pressure
Py=T3/T2;       //1/Min Pressure
P=Px*Py;
printf('Pressure Ratio %2.1f ',P);
printf('\n');
