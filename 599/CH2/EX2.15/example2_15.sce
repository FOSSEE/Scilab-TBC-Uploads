
clear;
clc;
printf("\t Example 2.15\n");
pa1=0.2*10^5;             //partial pressure at pos.1
pa2=0;                    //partial pressure at pos.2
r=10/2;                   //radius of tank in which benzene is stored
T=(298);                  //temperature  in kelvin
pt=1*1.013*10^5;          //total pressure in pascal
z=10*10^-3;               //gas film thickness in m
Dab=.02/3600;            //diffusion coefficient in m^2/s
R=8314;                  //universal gas constant
                        //benzene is stored in atank of dia 10m
//part (i)when air is assumed to be stagnant

Na=Dab*pt*log((pt-pa2)/(pt-pa1))/(z*R*T);    //diffusion flux in kmol/m^2*s
rate=Na*(3.14*r^2);                    //rate of loss of benzene if air is stagnant
printf("\n  diffusion rate of loss of benzene :%f *10^-4 kmol/s ",rate/10^-4);
//end