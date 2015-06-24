clc
//initialization of variables
clear
b=10 //cm
h=10 //cm
P=5 //tonne
e=1 //cm
E=12*10^4 //kg/cm^2
str=130 // kg/cm^2
n=3
L=2 //m
// calculations
L=L*100 //cm
Pcr=%pi^2*E*b*h^3/(12*L^2)
Pcr=Pcr/1000
Smax=-P*1000/(b*h)-(P*1000*1*5*12/10^4)*1/(1-(n*P/Pcr))
// results
printf('permissible stress = %d kg/cm^2',str)
printf('\n develoed stress = %.1f kg/cm^2',Smax)
printf('\n Since it is below the permissible stress, the design is safe')

