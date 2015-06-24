clc
//initialisation of variables
clear
c1= 9.3 //cal deg^-1
c2= 6.3 //cal deg^-1
n= 2
dH= -57500 //cal
V= 3 //cc
v1= 3.5 //cc
T1= 25 //C
p1= 1 //atm
//CALCULATIONS
T2= (-dH/(c1+n*c2))+298
p2= p1*V*T2/(v1*(273+T1))
//RESULTS
printf ('Temperature final = %.f K',T2)
printf ('\n pressure final = %.1f atm',p2)
