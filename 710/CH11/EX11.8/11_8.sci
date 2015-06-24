clc();
clear;
//To calculate the amount of Uranium(A=235) required
A=235;                             //mass number of uranium
p=1000;                            //amount of electric power produced
e=0.32;                            //energy conversion efficiency of the plant
I=p/e;                             //Input nuclear energy in MW
f=200;                             //fission energy per event in MeV
TE=I*(10^6)*3600*24*365;           //total energy in J
EF=f*(10^6)*1.6*(10^-19);          //Energy released per fission event in J
N=TE/EF;                           //Number of nuclei required
M=(N*A)/[6.02*(10^23)]*10^-3       //corresponding mass in kg
printf("The amount of uranium required is %f kg",M);
