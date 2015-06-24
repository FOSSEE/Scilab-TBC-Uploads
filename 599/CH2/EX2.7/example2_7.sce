
clear;
clc;
printf("\t Example 2.7\n");

pa1=(1.5)*10^4;                //vapour pressure of ammonia at pt.1 
pa2=(0.5)*10^4;                //vapour pressure of ammonia at pt.2
Dab=2.3*10^-5                  //molecular diffusivity in m^2/s
z=0.15;                        //diffusion path in m
R=8314;                       //universal gas constant    
    //ammonia diffuses through nitrogen under equimolar counter diffusion
T=298;                        //temperature in kelvin
pt=1.013*10^5;                //total pressure in pascal
Na=Dab*(pa1-pa2)/(z*R*T);    //flux in kmol/m^2*S
printf("\n the ammonia diffusion through nitrogen under equimolar counter diffusion:%f *10^-7 kmol/m^2*s",Na/10^-7);
//end