clc
//initialisation of variables
w= 120 //KN
D= 30 //m
L= 300 //m
sigmamax= 600 //N/mm^2 
h= 50 //m
beta= 45 //degrees
//CALCULATIONS
Tmax= ((w*L)/2)*(sqrt(1+(L/(4*D))^2))
d= sqrt((4*Tmax*10^3)/(sigmamax*%pi))
H= (w*L^2)/(8*D)
alpha= atand((w*L)/(2*H))
Mt= Tmax*(cosd(alpha)-cosd(beta))*h
Vt= Tmax*(sind(alpha)+sind(beta))
Wa= Tmax*cosd(beta)
//RESULTS
printf ('Tmax= %.1f KN',Tmax)
printf (' \n d=%.1f mm',d)
printf (' \n H=%.0f KN',H)
printf (' \n alpha=%.1f degrees',alpha)
printf (' \n Mt=%.0f KNm',Mt)
printf (' \n Vt=%.0f KN',Vt)
printf (' \n Wa=%.0f KN',Wa)
