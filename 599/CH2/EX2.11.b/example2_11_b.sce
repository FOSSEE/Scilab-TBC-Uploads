
clear;
clc;
printf("\t Example 2_11_a\n");
ya1=0.2;
ya2=0.1;
T=(298);                            //temperature  in kelvin
pt=1*1.013*10^5;                   //total pressure in pascal
z=0.2*10^-2;                      //gas film thickness in m
Dab=.215*10^-4;                  //diffusion coefficient in m^2/s
R=8314;                         //universal gas constant

//part (ii) equimolar counter diffusion

Na=Dab*pt*(ya1-ya2)/(z*R*T)               //diffusion flux in kmol/m^2*s
printf("\n  diffusion  flux of oxygen during equimolar counter-diffusion :%f *10^-5 kmol/m^2*s ",Na/10^-5);

//end