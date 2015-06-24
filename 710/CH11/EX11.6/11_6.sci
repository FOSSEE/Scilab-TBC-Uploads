clc();
clear;
//To determine the amount of energy released
wt=1000;                          //weight in gm
A=235;                            //mass number of uranium
N=[6.02*(10^23)/A]*wt;            //no.of nuclei in 1kg of uranium
Q=208;                            //energy-balance of the reaction
E=N*Q;                            //Energy released in MeV
//1MeV=4.45*10^-20kWh
E=E*4.45*(10^-20)
printf("The energy released is %f kWh",E);