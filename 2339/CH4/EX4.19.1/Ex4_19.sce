clc
clear

//Conditions at 7 bat
P=7;                //in bar
Tsat=165+273;       //in K
Hf=697.2;           //in kJ/kg
Hfg=2066.3;         //in kJ/kg
Hg=2763.5;          //in kJ/kg
Vg=0.273;           //in m^3/kg
D=0.02;             //in m
vel=17;             //in m/s
Cps=4.187;          //in kJ/kg K
Tw1=25;             //in Celcius
Tw2=100;            //in Celcius
Vfr=(22/7)*D*D*vel*(1/4)*60;       //Volume flow rate in m^3/min
x=0.9;              //Dryness Fraction
V=x*Vg;

Mfr=Vfr/V;          //Mass flow rate
printf('The mass flow rate of steam: %2.2f kg/min',Mfr);
printf('\n');
H1=Hf+(x*Hfg);
H2=Cps*100;
Mw=(Mfr*(H1-H2))/(Cps*(Tw2-Tw1));
printf('The mass flow rate of water: %2.2f kg/min',Mw);
printf('\n');
