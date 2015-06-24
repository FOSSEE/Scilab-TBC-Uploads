clc
clear

//Conditions at 10 bar
P1=10;              //in bars
Hg=2778.1;          //in kJ/kg
Tsat=179.9+273;     //Temperature in K
Vg=0.194;           //in m^3/kg

//Conditions at 10 bar and 300 Celcius
Cps=2.1;
Tsup=300+273;
H1=Hg+(Cps*(Tsup-Tsat));
V1=Vg*(Tsup/Tsat);
U1=H1-(P1*100*V1);
printf('The Internal energy: %3.1f kJ/kg',U1);
printf('\n');

//At 1.4 bar and other conditions
P2=1.4;             //in bars
x=0.8;              //Dryness Fraction
Hf=458.4;           //in kJ/kg
Hfg=2232.0;         //in kJ/kg
Vg=1.237;           //in m^3/kg
H2=Hf+(x*Hfg);
V2=x*Vg;
U2=H2-(P2*100*V2);
U=U2-U1;
printf('The change in internal energy: %3.1f kJ/kg',U);
printf('\n');
