clc
//initialisation of variables
clear
To1= 540 //R
po3= 12.6 //lbf/in^2
l3= 3 //ft
po1= 14.7 //lbf/in^2
l1= 1 //ft
vo1= 500 //ft/sec
r= 0.83
P1= 1 //lbf/in^2
//CALCULATIONS
To3= To1*(po3*l3/(po1*l1))^r
Vo3= vo1*sqrt(To3/To1)
P3= P1*po3*l3/(po1*l1)
//RESULTS
printf ('To3 = %.f R',To3)
printf ('\n Vo3 = %.f ft/sec',Vo3)
printf ('\n P3 = %.2f lbf/ft',P3)
