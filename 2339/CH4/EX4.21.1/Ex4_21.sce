clc
clear

//Conditions at 16 bar
P=16;                   //in bar
Vov=0.015;              //Volume of Vessel
Mos=0.1;                //Mass of steam
SV=Vov/Mos;             //Specific Volume
Vg=0.124;               //in m^3/kg
Tsat=201.4+273;         //in K
Tsup=(SV/Vg)*Tsat;
printf('The temperature of steam: %2.2f K',Tsup);
printf('\n');

//Now cooling takes place
Tsat=191.16;            //From steam table
printf('After cooling, temperature of steam: %2.2f K',Tsat);
printf('\n');

//Now cooled to 10 bar pressure
P1=16;              //in bar
Vg=0.194;           //in m^3/kg
v=0.15;             //in m^3/kg
x=v/Vg;             //Dryness Fraction

//For constant Volume process W=0
Hg=2794.0;          //in kJ/kg
Hf=762.8;           //in kJ/kg
Hfg=2015.3;         //in kJ/kg
Cps=2.1;            //in kJ/kg K
Tsup=300.84;        //in C
Tsat=201.4;         //in C
H1=Hg+(Cps*(Tsup-Tsat));
U1=H1-(P1*100*v);
P2=10;              //in bar
H2=Hf+(x*Hfg);
U2=H2-(P2*100*v);
Q=U2-U1;
printf('Heat rejected by system: %2.2f kJ/kg',Q);
printf('\n');
