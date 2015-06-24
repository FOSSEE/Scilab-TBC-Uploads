clc
clear
//DATA GIVEN
p=18;                          //pressure of steam
x=0.85;                        //dryness fraction

//At 18 bar, from steam tables
hf=884.6;                      //kJ/kg
hfg=1910.3;                    //kJ/kg
vg=0.110;                      //m^3/kg
uf=883;                        //kJ/kg
ug=2598;                       //kJ/kg

v=x*vg;                        //specific volume of wet steam
h=hf+x*hfg;                    //specific enthalpy of wet steam
u=(1-x)*uf+x*ug;               //specific internal energy of wet steam

printf(' (i) The Specific volume v is: %1.4f m^3/kg. \n',v);
printf(' (ii) The Specific enthalpy h is: %4.2f kJ/kg. \n',h);
printf('(iii) The Specific internal energy u is: %4.2f kJ/kg. \n',u);
