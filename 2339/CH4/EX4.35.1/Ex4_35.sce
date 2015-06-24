clc
clear

V=0.15;                 //in m^3
P=4;                    //in bar
x=0.8;                  //Dryness fraction

//Now at 4 bar pressure
P=4;                    //in bar
Vg=0.463;               //in m^3/kg

SV=x*Vg;
Mos=V/SV;               //Mass of Steam

//Now if Volume is 1 m^3

Ms=1/SV;                //in kg
//At 4 bar pressure
Hf=604.7;               //in kJ/kg
Hfg=2133.8;             //in kJ/kg
H=Ms*(Hf+(x*Hfg));
printf('Enthalpy of 1 m^3 steam: %2.2f kJ',H);
printf('\n');
