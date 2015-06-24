
clear;
clc;
printf("\t Example 2.18\n");
pa1=0.418*10^5;                //partial pressure initially
pa2=0;                        //partial pressure of pure air
r=10/2;                      //radius of tank in which benzene is stored
T=(350);                    //temperature  in kelvin
pt=1*1.013*10^5;            //total pressure in pascal
z=2*10^-3;                  //gas film thickness in m
Dab=.2*10^-4;              //diffusion coefficient in m^2/s
R=8314;                    //universal gas constant
r=0.2/2;                   //radius of open bowl is 0.2
//when air layer is assumed to be stagnant of thickness 2mm

Na=Dab*pt*log((pt-pa2)/(pt-pa1))/(z*R*T);    //diffusion flux in kmol/m^2*s
rate=Na*(3.14*r^2)*18;                        //rate of loss of evaporation
printf("\n diffusion rate loss of evaporation :%f *10^-4 kg/s ",rate/10^-4);
//end