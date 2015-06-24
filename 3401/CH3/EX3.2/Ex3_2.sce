clc

P=10
a=5*10^-10 // a=5 Armstrong
h=1.054*10^-34
m=9.11*10^-31 //kg

//alpha*a=%pi
//sqrt((2*m*E2)/h^2)*a=%pi
E2=(%pi^2*h^2)/(2*m*a^2)
disp(E2,'E2= %f J\n')
E2=E2*6.2415*10^18
disp(E2,'E2= %f eV')

E1=1.053 //eV
AE=E2-E1
disp(AE,'AE= %f eV')

