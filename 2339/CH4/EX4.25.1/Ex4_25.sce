clc
clear

//For Throttling process, H1=H2
//At 15 bar pressure
P1=15;                  //in bar
Hf1=844.9;              //in kJ/kg
Hfg1=1947.3;            //in kJ/kg
x1=0.73;                //Dryness Fraction

//At 1 bar pressure
P2=1;                   //in bar
Hf2=417.5;              //in kJ/kg
Hfg2=2258.0;            //in kJ/kg
Hg2=2675.5;             //in kJ/kg
H2=2266.4;              //in kJ/kg

H1=Hf1+(x1*Hfg1);
x2=(H2-Hf2)/Hfg2;

//Now if x1=0.95
H1=Hf1+(0.95*Hfg1);
H2=H1;

//At 1 bar
Hg=2675.5;
Cps=2.1;
x=0.93;                 //New dryness fraction
T=(H2-Hg)/Cps;          //Temperature difference
Tsat=99;                //in Celcius
Tsup=Tsat+T;
printf('Temperature of superheated steam: %3.1f Celcius',Tsup);
printf('\n');

//Now at 15 bar
Sf=2.315;               //in kJ/kg K
Sfg=4.130;              //in kJ/kg K
Sg=6.445;               //in kJ/kg K
S1=Sf+(x*Sfg);

//Now at 1 bar
Sg1=7.360;              //in kJ/kg K
S2=Sg1+(Cps*log((Tsup+273)/(Tsat+273)));
S=S2-S1;
printf('Change in Entropy: %3.2f kJ/kg K',S);
printf('\n');
