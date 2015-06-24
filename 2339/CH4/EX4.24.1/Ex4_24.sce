clc
clear

//At state 1
P1=20;              //in bar
V=2;
Vg1=0.0996;         //in m^3/kg
Tsat1=212.4+273;        //in K
Tsup1=573;          //in K
V1=Vg1*(Tsup1/Tsat1);
m=V/V1;

//At state 2
V2=V1;
Vg2=V2;
P2=16.9;            //From Steam Table

//Calculations
Hg1=2799.5;         //in kJ/kg
Cps=2.1;            //in kJ/kg K
H1=m*(Hg1+(Cps*(Tsup1-Tsat1)));
U1=H1-(P1*100*V);

Hg2=2795.5;         //in kJ/kg from Steam table
H2=m*Hg2;
U2=H2-(P2*100*V);

Q=U2-U1;
printf('Heat Transferred: %3.1f kJ',Q);
printf('\n');

Sg1=6.341;              //in kJ/kg K
S1=Sg1+(Cps*log(Tsup1/Tsat1));

S2=6.4022;             //From Steam Table
S=m*(S2-S1);
printf('Change in Entropy: %3.3f kJ/K',S);
printf('\n');
