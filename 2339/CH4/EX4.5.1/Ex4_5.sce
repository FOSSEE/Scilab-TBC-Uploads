clc
clear

x=0.9;      //Dryness Fraction
m=1.5;      //mass in kg
Cps=2.1;
//Condition at 10 bars
P=10;
Tsat=179.9;     //in Celcius
T=250;          //in Celcius
Hg=2778.1;      //in kJ/kg
Vg=0.194;       //in m^3/kg
Cps=2.1;
H1=Hg+(Cps*(T-Tsat));
Vsup=((T+273)/(Tsat+273))*Vg;
U1=H1-(P*100*Vsup);
Sf=2.139;       //in kJ/kg K
Sfg=4.448;      //in kJ/kg K
Sg=6.623;       //in kJ/kg K
S1=Sg+(Cps*log((T+273)/(Tsat+273)));

//Conditions at 2.8 bars
P2=2.8;
Hf=551.4;       //in kJ/kg
Hfg=2170.7;     //in kJ/kg
Vg=0.646;       //in m^3/kg
H2=Hf+(x*Hfg);
U2=H2-(P2*100*x*Vg);
Sf=1.647;       //in kJ/kg K
Sfg=5.368;      //in kJ/kg K
S2=Sf+(x*Sfg);
U=m*(U2-U1);
printf('The change in internal energy: %3.1f kJ/kg',U);
printf('\n');
S=S2-S1;
printf('The change in Entropy: %3.4f kJ/kg K',S);
printf('\n');
