clc
//initialisation of variables
P1= 2000//psi
V1= 1500 //in^3
T2= 250 //F
T1= 75 //F
V2= 1000 //in^3
//CALCULATIONS
P2= (P1+14.7)*V1*(T2+460)/((T1+460)*V2)
P3= P2-14.7
//RESULTS
printf ('guage pressure = %.f psi',P3)
