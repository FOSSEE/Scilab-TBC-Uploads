clc
clear

//Isothermal process
P=10;                   //in bar
Tsat=179.9+273;         //in K
Vg=0.194;               //in m^3/kg
Hf=762.6;               //in kJ/kg
Hfg=2015.3;             //in kJ/kg
Hg=2778.1;              //in kJ/kg
x1=1;                   //Dryness Fraction
Sf=2.139;               //in kJ/kg K
Sfg=4.448;              //in kJ/kg K
Sg=6.623;               //in kJ/kg K
V=0.3;                  //in m^3
m=V/Vg;                 //in kg
V2=Vg/2;
x2=V2/Vg;               //Dryness Fraction
W=P*100*(V2-Vg)*m;
printf('Work Done: %2.2f kJ',W);
printf('\n');
H1=Hg;
H2=Hf+(x2*Hfg);
Q=m*(H2-H1);
printf('Change in Enthalpy: %2.2f kJ',Q);
printf('\n');
U=(Q-W);
printf('Change in total Internal Energy: %2.2f kJ',U);
printf('\n');
S1=Sg;
S2=Sf+(x2*Sfg);
S=m*(S2-S1);
printf('Change in Entropy: %2.2f kJ/K',S);
printf('\n');

//Now for case 2 where PV=C
printf('Now for case 2');
printf('\n');

V01=0.097;
V02=0.5*V01;
P1=10;               //in bars
P2=(P1*V01)/V02;      //in bars

//Now at 20 bars
Vg1=0.0996;              //in m^3/kg
V2=0.097;
x2=V2/Vg1;               //Dryness Fraction
Hf=908.8;               //in kJ/kg
Hfg=1890.7;             //in kJ/kg
H2=Hf+(x2*Hfg);
H=m*(H2-Hg);
printf('Change in Enthalpy: %2.2f kJ',H);
printf('\n');

W=m*P1*100*Vg*(log(V02/V01));
printf('Total work done: %2.2f kJ',W);
printf('\n');

U=H;                //as P1 V1= P2 V2
Q=U+W;
printf('Change in Enthalpy: %2.2f kJ',Q);
printf('\n');

//Now at 20 bar pressure
Sf=2.447;               //in kJ/kg K
Sfg=3.894;              //in kJ/kg K
Sg1=6.341;               //in kJ/kg K
S2=Sf+(x2*Sfg);
S1=Sg;
S=m*(S2-S1)
printf('Change in Entropy: %2.3f kJ/K',S);
printf('\n');
