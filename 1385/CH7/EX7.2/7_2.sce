clc
//initialisation of variables
I= 50 //amp
t= 1 //hr
F= 96500 //amp-sec
mh= 1.01 //gms
mc= 35.46 //gms
ms= 107.88 //gms
mb= 79.9 //gms
mf= 55.85 //gms
V= 11.2 //lit
e= 8 //v
//CALCULATIONS
N= I*t*60*60/F
Mh= mh*N
Mc= mc*N
Ms= ms*N
Mb= mb*N
Mf= mf*N
v= N*V
E= e*I*60*60
//RESULTS
printf (' quantity of hydrogen produced= %.2f gms',Mh)
printf (' \n quantity of chlorine produced= %.2f gms',Mc)
printf (' \n quantity of silver produced= %.2f gms',Ms)
printf (' \n quantity of bromine produced= %.2f gms',Mb)
printf (' \n quantity of ferrous ion  produced= %.2f gms',Mf)
printf (' \n Volume occupied by gases= %.1f lit',v)
printf (' \n energy expenditure= %.f joules',E)
