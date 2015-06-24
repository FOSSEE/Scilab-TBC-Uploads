clc
clear

//At 7 bar pressure
P1=7;               //in bar
P2=1;               //in bar
n=1.1;
//Now according to law of expansion P(V)^1.1= Constant

Vg1=0.273;          //in m^3/kg
V1=Vg1;
V2=((P1/P2)^(1/n))*V1;

W=((P1*100*V1)-(P2*100*V2))/(n-1);
printf('Work Done: %3.1f kJ/kg',W);
printf('\n');

Hg=2763.5;          //in kJ/kg
H1=Hg;
Vg=1.694;
//At 1 bar, Vg=1.694 and as V2<Vg steam is wet
x=V2/Vg;

Hf=417.5;           //in kJ/kg
Hfg=2258;           //in kJ/kg
H2=Hf+(x*Hfg);

U2=H2-(P2*100*V2);
U1=H1-(P1*100*V1);
U=U2-U1;
printf('Change in Internal Energy: %3.2f kJ/kg',U);
printf('\n');

Q=U+W;
printf('Heat transferred during the process: %3.2f kJ/kg',Q);
printf('\n');
