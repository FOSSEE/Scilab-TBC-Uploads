clc
clear
//DATA GIVEN
V=0.05;                        //volume of vessel in m^3
Mf=10;                         //mass of liquid in kg
T=245;                         //temp. in deg celsius

//from steam tables, corresponding to 245 deg celsius
Psat=36.5;                     //bar
vf=0.001239;                   //m^3/kg
vg=0.0546;                     //m^3/kg
hf=1061.4;                     //kJ/kg
hfg=1740.2;                    //kJ/kg
sf=2.7474;                     //kJ/kgK
sfg=3.3585;                    //kJ/kgK

Vf=Mf*vf;                      //volume of liquid
Vg=V-Vf;                       //volume of vapour
Mg=Vg/vg;                      //mass of vapour
m=Mf+Mg;                       //total mass of mixture

x=Mg/(Mg+Mf);                  //quality of the mixture
vfg=vg-vf;
v=vf+x*vfg;                    //specific volume

h=hf+x*hfg;                    //specific enthalpy

s=sf+x*sfg;                    //specific entropy

u=h-Psat*10^5*v/10^3;          //specific internal energy


printf(' (i) The Pressure is: %2.1f bar. \n',Psat);
printf(' (ii) The mass m is: %2.3f kg. \n',m);
printf('(iii) The Specific volume v is: %1.6f m^3/kg. \n',v);
printf(' (iv) The Specific enthalpy h is: %4.2f kJ/kg. \n',h);
printf('  (v) The Specific entropy s is: %1.4f kJ/kgK. \n',s);
printf(' (vi) The Specific internal energy u is: %4.2f kJ/kg. \n',u);

//NOTE:
//there is slight variation in answers of book due to rounding off of the values in the book
