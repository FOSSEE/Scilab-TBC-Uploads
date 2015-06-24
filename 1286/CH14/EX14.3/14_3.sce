clc
//initialisations
E=40//j/sec
a=0.66*10^-4//sq.mt
e=0.31
t=273+2170//k
//CALCULATIONS
si=E/(e*a*t^4)
//results
printf(' \n stefans constant= % 1e j m^-2 sec^-1 deg^-4',si)
