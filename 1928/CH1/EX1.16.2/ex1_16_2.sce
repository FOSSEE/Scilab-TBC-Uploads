//Chapter-1,Example1_16_2,pg 1-75

Ev=1.95                                 //average energy required to creaet a vacancy

k=1.38*10^-23                           //boltzman constant in J/K

e=1.6*10^-19                            //charge on 1 electron

K=k/e                                   //boltzman constant in eV/K

T=500                                   //temperature

//for a low concentration of vacancies a relation is

//n=Nexp(-Ev/KT)

m=exp(-Ev/(K*T))                           //ratio of no of vacancies to no of atoms n/N

printf("ratio of no of vacancies to no of atoms=")

disp(m)
