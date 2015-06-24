
clear;
clc;
printf("\t Example 2.26\n");
u=20*10^-6;                        //viscosity in Ns/m^2
pt=2666;                          //total pressure in N/m^2
pa1=pt;                            //pressure at 1
pa2=0;                             //pressure at 2
mw=32;                            //molecular weight of oxygen
R=8314;                           //universal law constant
T=373;                            //temp. in kelvin
gc=1;                        
l=(3.2*u/pt)*((R*T)/(2*3.14*gc*mw))^0.5;//mean free path
d=.2*10^-6;                        //pore diameter
s=d/l;                             //value of dia/l
        //hence knudsen diffusion occurs
Na=0.093*20*273/(760*373*22414*10^-1);         //diffusion coefficient in kmol/m^2*s
Dka=(d/3)*((8*gc*R*T)/(3.14*mw))^0.5;
len=Dka*(pa1-pa2)/(R*T*Na);                //length of the plate
printf("\n the length of the plate is :%f m ",len);


        //for diffusion with hydrogen
u=8.5*10^-6;                        //viscosity in Ns/m^2
pt=1333;                          //total pressure in N/m^2
pa1=pt;                            //pressure at 1
pa2=0;                             //pressure at 2
mw=2;                            //molecular weight of oxygen
R=8314;                           //universal law constant
T=298;                            //temp. in kelvin
gc=1;                        
l=(3.2*u/pt)*((R*T)/(2*3.14*gc*mw))^0.5;//mean free path
d=.2*10^-6;                        //pore diameter
s=d/l;                             //value of dia/l
        //hence knudsen diffusion occurs
Dka=(d/3)*((8*gc*R*T)/(3.14*mw))^0.5;
Na=Dka*(pa1-pa2)/(R*T*len);                //diffusion coefficient in kmol/m^2*s
printf("\n the diffusion coefficient is :%f *10^-4 kmol/m^2*s",Na/10^-6);
//end