clc
//initialisation of variables
d= 2 //m
t= 20 //mm
p= 1.5 //N/mm^2
load= 2500 //KN
alpha= 60 //degrees
//CALCULATIONS
Cs= (p*d*10^3)/(2*t)
Ls= (p*d*10^3)/(4*t)
Ds= (load*10^3)/(%pi*d*t*10^3)
Ts= Ls+Ds
sigman= (Ts*t*(cosd(90-alpha))^2+Cs*t*(cosd(alpha))^2)/t
tab= Ts*sind(alpha)*cosd(alpha)-Cs*sind(alpha)*cosd(alpha)
tmax= (Ts-Cs)/2
//RESULTS
printf ('direct stress= %.1f N/mm^2',sigman)
printf (' \n Shear stress=%.1f N/mm^2',tab)
printf (' \n maximum Shear stress=%.1f N/mm^2',tmax)
