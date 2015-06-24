clc();
clear;
//To determine the ratio of the number of vacancies to the number of atoms
//n500=N*exp(-Ev/500k)
k=8.625*10^-5;                            //Boltzmann constant in eV/K
Ev=0.95;                                  //average energy required to create a vacancy
n=exp(-Ev/(500*k))                        //n500/N
printf("The ratio of number of vacancies to the number of atoms is %e ",n);