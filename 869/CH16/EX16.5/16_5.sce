clc
//initialisation of variables
x= 30 //in
x1= 10 //in
E= 30*10^6
d= 0.5 //in
syp= 60000 //psi
y1= 8 //in
y2= 2 //in
//CALCULATIONS
ratio= 0.8
l= x+x1
lr= ratio*l
I= (%pi*(d)^4)/64
Pcr= %pi^2*E*I/lr^2
scr= Pcr/(%pi*(d/2)^2)
F= Pcr*y2/(y1+y2)
//RESULTS
printf ('Stress in the critical load= %.2f psi',scr)
printf (' \n Critical force F=%.2f lb',F)
