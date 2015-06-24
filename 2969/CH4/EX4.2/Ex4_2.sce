clc
clear
//DATA GIVEN
V=0.6;                         //volume of the vessel in m^3
p=0.5;                         //pressure in bar
M=3;                           //mass of liquid and water vapour in kg

v=V/M;                         //specific volume in m^3/kg
//At 5 bar, from steam tables
vg=0.375;                      //m^3/kg
vf=0.00109;                    //m^3/kg
vfg=vg-vf;
//v=vg-(1-x)vfg
x=(v-vg)/vfg+1;                //quality of the vapour

//mass and volume of liquid
Mliq=M*(1-x);
Vliq=Mliq*vf;

//mass and volume of vapour
Mvap=M*x;
Vvap=Mvap*vg;

printf('(i) The Mass and Volume of liquid is: \n');
printf('     Mliq. is: %1.3f kg. \n',Mliq);
printf('     Vliq. is: %1.4f m^3. \n',Vliq);
printf('(ii) The Mass and Volume of vapour is: \n');
printf('     Mvap. is: %1.3f kg. \n',Mvap);
printf('     Vvap. is: %1.4f m^3. \n',Vvap);
