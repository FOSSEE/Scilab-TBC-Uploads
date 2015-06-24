clc 
//initialisation of variables
V= 20 //litres
g= 981 //cm/sec^2
Cd= 0.593
r= 2.5
r1= 1.5
e= 2 //mm
Cd1= 0.623
L= 30 //cm
//CALCULATIONS
H= (V*1000*15/(8*Cd*sqrt(2*g)))^0.4
dH1= e/10
p= r*dH1*100/H
H1= (V*3*1000/(2*Cd1*sqrt(2*g)*L))^(2/3)
p1= r1*dH1*100/H1
//RESULTS
printf ('percentage error of discharge over the weir = %.2f per cent ',p)
printf ('\n percentage error of discharge over the weir = %.2f per cent ',p1)
