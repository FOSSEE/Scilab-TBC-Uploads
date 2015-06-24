clc
clear

p1=10;                              //pressure in bar
//At 10 bar and 300 deg celsius, from steam tables of superheated steam
hsup=3051.2                         //kJ/kg
Tsup=300+273;                       //temp. of steam in K
//At 10 bar and 300 deg celsius, from steam tables of dry saturated steam
Ts=179.9+273                        //temp. of steam in K
vg=0.194;                           //m^3/kg

//By vg/Ts = vsup/Tsup
vsup=vg*Tsup/Ts;
u1=hsup-p1*10^5*vsup/10^3;

p2=1.4;                             //new pressure in bar
x2=0.8;                             //dryness fraction
//At 1.4 bar, from steam tables 
hf2=458.4;                          //kJ/kg
hfg2=2231.9;                        //kJ/kg
vg2=1.236;                          //m^3/kg
h2=hf2+x2*hfg2;                     //enthalpy of wet steam (after expansion)
u2=h2-p2*10^5*x2*vg2/10^3;          //internal energy of this steam
Du=u2-u1;                           //change in internal energy per kg

printf(' (i) The Internal energy of superheated steam at 10 bar is: %4.1f kJ/kg. \n',u1);
printf(' (ii) The Change in internal energy per kg is: %2.1f kJ. \n',Du);
printf('     (Negative sign indicates DECREASE in internal energy.)' );
