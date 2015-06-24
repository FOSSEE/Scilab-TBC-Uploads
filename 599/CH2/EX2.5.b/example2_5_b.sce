
clear;
clc;
printf("\t Example 2_5_b\n");
ya1=0.8;
ya2=0.1;
T=(273+35);                            //temperature  in kelvin
pt=1*1.013*10^5;                      //total pressure in pascal
z=0.3*10^-3;                         //gas film thickness in m
Dab=.18*10^-4;                      //diffusion coefficient in m^2/s
R=8314;                            //universal gas constant

//diffusion through stagnant film 
Na=Dab*pt*log((1-ya2)/(1-ya1))/(z*R*T);    //diffusion flux in kmol/m^2*s
rate=Na*100*10^-4*3600*46;                //since molecular weight of mixture is 46
printf("\n rate of diffusion if water layer is stagnant :%f *10^-3 kg/s ",rate/(3600*10^-3));
//end