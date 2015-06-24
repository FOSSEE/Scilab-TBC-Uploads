//Chapter-1,Example1_16_4,pg 1-76

Ev=1.5                                  //energy of formaton of frankel defect

k=1.38*10^-23                           //boltzman constant in J/K

e=1.6*10^-19                            //charge on 1 electron

K=k/e                                   //boltzman constant in eV/K

T=700                                   //temperature

N=6.023*10^26                           //avogadro's no

//for a low concentration of vacancies a relation is

//n=Nexp(-Ev/KT)

m=exp(-Ev/(2*K*T))                        //ratio of no of vacancies to no of atoms n/N

qs=5.56                                 //specific density

q=5.56*10^3                             //real density ke/m^3

M=0.143                                 //molecular weight in kg/m^3

ma=M/N                                   //mass of one molecule

v=ma/q                                   //vol of one molecule

//v volume containe 1 molecule

//therefore 1 m^3 containe x molecule

x=1/v

d=m*x                                   //defect per m^3

dm=d*10^-9                              //defect per mm^3

printf("number of frankel defects per mm^3=")

disp(dm)
