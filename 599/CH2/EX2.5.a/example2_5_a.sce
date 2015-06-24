
clear;
clc;
printf("\t Example 2.5.a\n");
//position 1    moles       molefraction
//   air        80           0.8
//   water      20           0.2

//position 2      moles      molefraction
//    air       10           0.1
//   water      90           0.9
ya1=0.8;
ya2=0.1;
T=(273+35);                            //temperature  in kelvin
pt=1*1.013*10^5;                      //total pressure in pascal
z=0.3*10^-3;                         //gas film thickness in m
Dab=.18*10^-4;                      //diffusion coefficient in m^2/s
R=8314;                            //universal gas constant
Na=Dab*pt*(ya1-ya2)/(z*R*T)       //diffusion flux in kmol/m^2*s
rate=Na*100*10^-4*3600*46;       //since molecular weight of mixture is 46
printf("\n rate of diffusion of alcohol-water vapour :%f kg/hr ",rate);

//end