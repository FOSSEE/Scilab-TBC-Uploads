clc
//initialisation of variables
Sx= 1800 //psi
Sy= 1000 //psi
angle= 30 //degrees
t= 0.25 //in
t1= 3 //in
t2= 5 //in
//CALCULATIONS
Sx1= Sx/(t1*t)
Sy1= Sy/(t2*t)
S= ((Sx+Sy)/2+((Sx-Sy)/2)*cosd(2*angle))+(Sx-Sy)*cosd(2*angle)
T= (Sx-Sy)*sind(2*angle)
//RESULTS
printf ('S= %.1f psi',S)
printf (' \n T=%.1f psi',T)








