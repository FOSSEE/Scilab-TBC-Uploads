//Chapter-1,Example1_16_3,pg 1-76

Ev=1.8                                  //average energy required to creaet a vacancy

k=1.38*10^-23                           //boltzman constant in J/K

e=1.6*10^-19                            //charge on 1 electron

K=k/e                                   //boltzman constant in eV/K

//for a low concentration of vacancies a relation is

//n=Nexp(-Ev/KT)

//ratio of vacancy is n/N assume be r=exp(-Ev/KT)

//since total no atom is 1 hence N=1

//at 1000k

t1=-119                                  //temperature in degree

T1=t1+273                               //temperature in kelvine

r1=exp(-Ev/(K*T1))

printf("1)ratio of vacancies at -119 degree=")

disp(r1)

//at 500k

t2=80                                    //temperature in degree

T2=t2+273                               //temperature in kelvine

r2=exp(-Ev/(K*T2))

v=(r1)/(r2)                                //ratio of vacancies

printf("2)ratio of vacancies at 80 degree=")

disp(r2)
