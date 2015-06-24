clc
clear

//At 9.2 bar pressure
x1=0.96;                    //Dryness Fraction
Sf1=2.1038;                 //in kJ/kg K
Sg1=6.6151;                 //in kJ/kg K

//At 3.55 bar pressure
Sf2=1.7327;                 //in kJ/kg K
Sg2=6.9358;                 //in kJ/kg K
Vg2=0.5173;                 //in m^3/kg

//Now at 0.36 bar pressure
Vg3=4.408;                  //in m^3/kg

S1=Sf1+(x1*(Sg1-Sf1));

//As process is adiabatic
S2=S1;

//From steam table, Sg=6.9358 > S2

x2=(S2-Sf2)/(Sg2-Sf2);
V2=x2*Vg2;

//As volume remains constant
V3=V2;
x3=V3/Vg3;
printf('The dryness fraction of steam: %2.3f',x3);
printf('\n');
