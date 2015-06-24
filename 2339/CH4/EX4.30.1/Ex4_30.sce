clc
clear

//Combined seperating and throttling calorimeter

Mw=8;                   //in kg
M=63;                   //in kg
Ms=M-Mw;                //in kg
P1=81.5;                //Pressure after throttling in mm
P2=754;                 //Barometer reading in mm
SD=13.6;                //Specific Density of Hg

x1=Ms/(Ms+Mw);          //Dryness Fraction
P=(P1/SD)+P2;           //Pressure in mm
P=1.01325;              //Pressure in bar

//Now at 7.5 bar pressure
Hf1=709.2;              //in kJ/kg
Hfg1=2057.0;            //in kJ/kg

//Now at 1.01325 bar
Hg2=2676.0;             //in kJ/kg
Tsat=100+273;           //in K
Cps=2.1;                //in kJ/kg K
Tsup=110+273;           //in K

//For throttling H1=H2
H2=Hg2+(Cps*(Tsup-Tsat));
x2=(H2-Hf1)/Hfg1;

x=x1*x2;
printf('The dryness fraction of steam: %2.3f',x);
printf('\n');
