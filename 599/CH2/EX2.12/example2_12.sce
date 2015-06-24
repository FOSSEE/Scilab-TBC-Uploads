
clear;
clc;
printf("\t Example 2.12\n");
// ammonia diffusing through inert air and air is non-diffusing
ya1=0.1;
ya2=0;
T=(293);                             //temperature  in kelvin
pt=1*1.013*10^5;                    //total pressure in pascal
z=0.2*10^-2;                       //gas film thickness in m
Dab=.185*10^-4;                   //diffusion coefficient in m^2/s
R=8314;                          //universal gas constant
    //part (i)when air is assumed to be stagnant and non-diffusing 

Na=Dab*pt*log((1-ya2)/(1-ya1))/(z*R*T);    //diffusion flux in kmol/m^2*s
mw=17;                                    //molecular weight of ammonia
massflux=Na*mw;                          //mass flux of given NH3
printf("\n  diffusion flux when total presssure is 1atm and air is non-diffusing :%f *10^-4 kg/m^2*s ",massflux/10^-4);
    //part (ii) when pressure is increased to 10atm

//Dab_1/Dab_2=pt_2/pt_1
pt_2=10;                                         //final pressure  in atm
pt_1=1;                                         //initially pressure was 1atm
Dab_1=.185;                                    //initially diffusion coefficient was.185
Dab_2=Dab_1*pt_1/pt_2;                        //for gases Dab is proportional to 1/pt
Dab=Dab_2*10^-4;                             //new diffusion coefficient 
pt=pt_2*1.013*10^5;                         //new total pressure
Na=Dab*pt*log((1-ya2)/(1-ya1))/(z*R*T);    //diffusion flux in kmol/m^2*s
printf("\n  diffusion  flux when pressure is increased to 10atm :%f *10^-5 kmol/m^2*s ",Na/10^-5);
printf("\n \n so the rate of diffusion remains same on increasing the pressure");
//end