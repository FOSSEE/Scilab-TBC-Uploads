clc
clear
//DATA GIVEN
p1=20;                  //boiler pressure in bar
T1=360+273;             //temp. in K
p2=0.08;                //boiler pressure in bar

//At 20 bar and 360 deg.celsius, from steam tables
h1=3159.3;              //in kJ/kg
sg1=6.9917;             //in kJ/kgK

//At 0.08 bar, from steam tables
hf2=173.88;             //in kJ/kg
hf3=hf2;
sf2=0.5926;             //in kJ/kgK
s3=sf2;
hfg2=2403.1;            //in kJ/kg
sg2=8.2287;             //in kJ/kgK
vf2=0.001008;           //m^3/kg
sfg2=7.6361;            //in kJ/kgK

//as the steam expands isentropically, s1=s2
//sg1=sf2+x2*sfg2
x2=(sg1-sf2)/sfg2;
h2=hf2+x2*hfg2;

//Wnet=Wturbine-Wpump
//Wpump=hf4-hf3=vf3(p1-p2)
Wp=vf2*(p1-p2)*100;
hf4=Wp+hf3;
Wt=h1-h2;
Wnet=Wt-Wp;
Q1=h1-hf4;              //in kJ/kg
ETAcycle=Wnet/Q1;       //cycle efficiency 

printf(' (i) The Net work  per kg of steam is: %3.2f kJ/kg. \n',Wnet);
printf(' (ii) The Cycle efficiency is: %1.3f or %2.1f percent. \n',ETAcycle,(ETAcycle*100));
