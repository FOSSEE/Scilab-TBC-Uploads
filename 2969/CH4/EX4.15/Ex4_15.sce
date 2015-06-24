clc
clear
//DATA GIVEN
p=120;                         //pressure of steam
v=0.01721;                     //specific volume of steam

//At 120 bar, from steam tables
vg=0.0143;                     //m^3/kg
//since vg<v, the steam is superheated
//so from superheat tables at 120 bar and v=0.01721 m^3/kg
T=350;                         //deg. celsius
h=2847.7;                      //specific enthalpy of steam
u=h-p*10^5*v/10^3;             //specific internal energy of steam

printf(' (i) The Temperature is: %3.0f deg celsius. \n',T);
printf(' (ii) The Specific enthalpy h is: %4.1f kJ/kg. \n',h);
printf('(iii) The Specific internal energy u is: %4.2f kJ/kg. \n',u);
