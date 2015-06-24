
clc
//intitialization of variables
d = 5// cm
v = 200 // cm/sec
nu = 0.01 // cm^2/sec
D = 3.2*10^-5 // cm^2/sec
l = 30*10^-4 // cm
//Calculations
Re = d*v/nu // Flow is turbulent
E = d*v/2 // cm^2/sec
tou1 = (d^2)/(4*E)// sec
tou2 = (l^2)/(4*D)
tou = tou1 + tou2 // sec
//Results
printf("The relaxation time is %.2f sec",tou)
