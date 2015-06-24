clc();
clear;
//To determine the ratio of vacancies
k=8.625*10^-5;                          //Boltzmann constant ineV/K
//n1000/n500=ln[n1000/n500]=Ev/1000k
Ev=1.08;                                //average energy required to create a vacancy in eV
N=exp(Ev/(1000*k))                      //n1000/n500
printf("The ratio of vacancies is %f",N);
