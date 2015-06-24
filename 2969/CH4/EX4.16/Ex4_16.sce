clc
clear
//DATA GIVEN
p=140;                         //pressure of steam
h=3001.9;                      //specific enthalpy of steam

//At 140 bar, from steam tables
hg=2642.4;
//since hg<h, the steam is superheated
//so from superheat tables at 140 bar and h=3001.9 kJ/kg
T=400;                         //deg. celsius
v=0.01722;                     //specific volume of steam
u=h-p*10^5*v/10^3;             //specific internal energy of steam

printf(' (i) The Temperature is: %3.0f deg celsius. \n',T);
printf(' (ii) The Specific volume v is: %1.5f m^3/kg. \n',v);
printf('(iii) The Specific internal energy u is: %4.2f kJ/kg. \n',u);
