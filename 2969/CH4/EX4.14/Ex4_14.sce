clc
clear
//DATA GIVEN
p=7;                           //pressure of steam
h=2550;                        //enthalpy of steam

//At 7 bar, from steam tables
hf=697.1;                      //kJ/kg
hfg=2064.9;                    //kJ/kg
vg=0.273;                      //m^3/kg
uf=696;                        //kJ/kg
ug=2573;                       //kJ/kg

hg=hf+hfg;
//At 7 bar, hg=2762 kJ/kg, hence since actual enthalpy is given as 2550 kJ/kg, the steam must be in wet vapour state
//specific enthalpy of wet steam, h=hf+x*hfg
x=(h-hf)/hfg;                  //dryness fraction
v=x*vg;                        //specific volume of wet steam
u=(1-x)*uf+x*ug;               //specific internal energy of wet steam

printf(' (i) The Dryness fraction x is: %1.3f. \n',x);
printf(' (ii) The Specific volume v is: %1.4f m^3/kg. \n',v);
printf('(iii) The Specific internal energy u is: %4.2f kJ/kg. \n',u);
