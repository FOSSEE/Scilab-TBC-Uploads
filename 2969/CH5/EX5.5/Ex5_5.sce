clc
clear
//DATA GIVEN
p1=28;                  //pressure at 1 in bar
p2=0.06;                //pressure at 2 in bar

//At 28 bar, from steam tables
h1=2802;                //in kJ/kg
s1=6.2104;              //in kJ/kgK

//At 0.06 bar, from steam tables
hf2=151.5;              //in kJ/kg
hf3=hf2;
hfg2=2415.9;            //in kJ/kg
sf2=0.521;              //in kJ/kgK
sf3=sf2;
sfg2=7.809;             //in kJ/kgK
vf2=0.001;              //m^3/kg


//as the steam expands isentropically, s1=s2
//sg1=sf2+x2*sfg2
x2=(s1-sf2)/sfg2;
h2=hf2+x2*hfg2;

//Wnet=Wturbine-Wpump
//Wpump=hf4-hf3=vf3(p1-p2)
Wp=vf2*(p1-p2)*10^5/10^3;
hf4=Wp+hf2;
Wt=h1-h2;
Wnet=Wt-Wp;
Q1=h1-hf4;              //in kJ/kg
ETAcycle=Wnet/Q1;       //cycle efficiency 
wr=Wnet/Wt;             //work ratio
ssc=3600/Wnet;          //specific steam consumption in kg/kWh

printf(' (i) The Cycle efficiency is: %1.4f or %2.2f percent. \n',ETAcycle,(ETAcycle*100));
printf(' (ii) The Work ratio is: %1.3f kJ/kg. \n',wr);
printf('(iii) The Specific steam consumption in kg/kWh is: %1.3f kg/kWh. \n',ssc);



