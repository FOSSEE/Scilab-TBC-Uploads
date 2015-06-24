clc
clear

//Initial conditions at 7 bar pressure
P1=7;               //in bars
Vg1=0.273;           //in m^3/kg
V1=Vg1;              //in m^3/kg
Hg1=2763.5;          //in kJ/kg
H1=Hg1;
Tsat=165+273;           //in K
Sf=1.992;           //in kJ/kg K
Sfg=4.716;          //in kJ/kg K
Sg=6.708;           //in kJ/kg K
n=1.1;

//Final conditions at 0.5 bar
P2=0.5;             //in bars
V2=((P1*(V1^1.1))/P2)^(1/1.1);          //using P(V)^1.1=Constant

W=((P1*100*V1)-(P2*100*V2))/(n-1);
printf('Work Done: %3.2f kJ',W);
printf('\n');

Hf2=340.6;              //in kJ/kg
Hfg2=2305.4;            //in kJ/kg
Vg2=3.24;               //in m^3/kg
x2=V2/Vg2;              //Dryness Fraction

H2=Hf2+(x2*Hfg2);

U1=H1-(P1*100*V1);
U2=H2-(P2*100*V2);
U=U2-U1;
printf('Change in Internal Energy: %3.2f kJ/kg',U);
printf('\n');

Q=U+W;              //From First law of Thermodynamics
printf('Heat Transferred: %3.2f kJ/kg',Q);
printf('\n');

S1=Sg;
//At 0.5 bar
Sf2=1.091;              //in kJ/kg K
Sfg2=6.503;             //in kJ/kg K
Sg2=7.594;              //in kJ/kg K
S2=Sf2+(x2*Sfg2);
S=S2-S1;
printf('Change in Entropy: %3.2f kJ/kg K',S);
printf('\n');
