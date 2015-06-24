clc
clear
//DATA GIVEN
p1=35;                  //pressure at inlet to turbine in bar
x1=1;
p2=0.2;                 //pressure at exhaust in bar
m=9.5;                  //flow rate in kg/s

//At 35 bar, from steam tables
hg1=2802;               //in kJ/kg
h1=hg1;
sg1=6.1228;             //in kJ/kgK

//At 0.2 bar, from steam tables
hf2=251.5;              //in kJ/kg
hf3=hf2;
hfg2=2358.4;            //in kJ/kg
vf2=0.001017;           //m^3/kg
sf2=0.8321;             //in kJ/kgK
sfg2=7.0773;            //in kJ/kgK

//Wnet=Wturbine-Wpump
//Wpump=hf4-hf3=vf3(p1-p2)
Wp=vf2*(p1-p2)*10^5/10^3;
Wpnet=m*Wp;
hf4=Wp+hf3;

//as the steam expands isentropically, s1=s2
//sg1=sf2+x2*sfg2
x2=(sg1-sf2)/sfg2;                     //dryness fraction
h2=hf2+x2*hfg2;
Wt=h1-h2;
Wtnet=m*Wt;
ETArankine=(h1-h2)/(h1-hf2);           //Rankine efficiency
chf=m*(h2-hf3);                        //condenser heat flow

printf(' (i) The Pump Work is: %2.2f kW. \n',Wpnet);
printf(' (ii) The Turbine Work is: %2.2f kW. \n',Wtnet);
printf('(iii) The Rankine efficiency is: %1.4f or %2.2f percent. \n',ETArankine,(ETArankine*100));
printf(' (iv) The Condenser heat flow is: %1.3f kW. \n',chf);
printf('  (v) The dryness at the end of expansion, x2 is: %1.3f or %2.1f percent. \n',x2,(x2*100));

//NOTE:
//The value of x2 in the book is given as 0.7470
//while the exact ans is 0.74755
//and so the values of other answers are varying by some units
