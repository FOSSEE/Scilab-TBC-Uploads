
clear;
clc;
printf("\t Example 2.14\n");
ya1=0.2;                                //molefraction at pos.1
ya2=0.1;                               //molefraction at pos.2
T=(293);                              //temperature  in kelvin
pt=1*1.013*10^5;                     //total pressure in pascal
z=0.2*10^-2;                        //gas film thickness in m
Dab=.206*10^-4;                    //diffusion coefficient in m^2/s
R=8314;                           //universal gas constant
        //for ideal gases volume fraction =mole fraction
//part (i)when N2 is non diffusing 

Na=Dab*pt*log((1-ya2)/(1-ya1))/(z*R*T);    //diffusion flux in kmol/m^2*s
printf("\n  diffusion flux if N2 is non diffusing :%f *10^-5 kmol/m^2*s ",Na/10^-5);
//part (ii) equimolar counter diffusion

Na=Dab*pt*(ya1-ya2)/(z*R*T)             //diffusion flux in kmol/m^2*s
printf("\n  diffusion  flux of nitrogen during equimolar counter-diffusion :%f *10^-5 kmol/m^2*s ",Na/10^-5);

//end