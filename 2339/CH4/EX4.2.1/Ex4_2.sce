clc
clear

//At 10 bar pressure
P=10;       //in bars
x=0.8;
Vg=0.194;   //in kJ/kg
W=P*100*x*Vg;
printf('External Work Done: %3.2f kJ/kg',W);
printf('\n');

Hf=762.8;       //in kJ/kg
Hfg=2015.3;     //in kJ/kg
H=Hf+(x*Hfg);
U=H-W;
printf('Internal energy: %3.2f kJ/kg',U);
printf('\n');

Vf=0.001127;        //in m^3/kg
Uf=Hf-(P*100*Vf);
Ux=U-Uf;
printf('Internal Heat of Evaporation: %3.2f kJ/kg',Ux);
printf('\n');

Sf=2.139;       //in kJ/kg K
Sfg=4.448;      //in kJ/kg K
S=Sf+(x*Sfg);
printf('Entropy of steam: %3.3f kJ/kg',S);
printf('\n');
