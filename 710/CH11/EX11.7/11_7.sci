clc();
clear;
//To determine the power output of a nuclear reactor
wt=5000;                         //weight in gm
A=235;                           //mass number of uranium
N=(6.02*(10^23)/A)*wt;           //number of nuclei in 5 Kg
Ef=208;                          //Energy released per fission in MeV
E=N*Ef;                          //Energy in MeV
E=E*1.6*(10^-13);                 //Energy in J
T=24*60*60;                      //time
P=E/T                            //power
printf("The power output of a nuclear reactor is %f MW",P);
