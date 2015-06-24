//Chapter-1,Example1_16_1,pg 1-75

Ev=1.08                                 //average energy required to creaet a vacancy

k=1.38*10^-23                           //boltzman constant in J/K

e=1.6*10^-19                            //charge on 1 electron

K=k/e                                   //boltzman constant in eV/K

//for a low concentration of vacancies a relation is

//n=Nexp(-Ev/KT)

//since total no atom is 1 hence N=1

//at 1000k

T1=1000                                  //temperature

n1=exp(-Ev/(K*T1))

//at 500k

T2=500                                   //temperature

n2=exp(-Ev/(K*T2))

v=(n1)/(n2)                                //ratio of vacancies

printf("ratio of vacancies=")

disp(v)
