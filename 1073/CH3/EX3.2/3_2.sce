clc;
clear;
//Example3.2
//Given
mu=15*10^-6    //sq m /s
v=2    //m/s
L=2    //[m] length of plate
Nre_x=3*10^5
xc=Nre_x*mu/v    //critical length at whihc the transition takes place
//Since xc is less than 2 m.Therefore the flow is laminar
//at any distance x,.it is calculated from
//del/x=4.64/(sqrt(NRe,x))
//At x=L=2 m
Nre_l=v*L/mu
del_l=4.64*L/sqrt(Nre_l)
del_l=del_l*1000    //[mm]
printf("Boundary layerthickness at the trailing edge is %f mm",del_l);