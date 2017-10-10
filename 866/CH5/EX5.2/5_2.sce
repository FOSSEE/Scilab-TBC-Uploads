clc
clear
//initialisation of variables
Fc= -10.0 //KN 
Fd= -6.0 //KN
y= 0.5 //m
x1= 1.5 //m
x2= 2.0 //m
x3= 1.8 //m
//CALCULATIONS
//The values in the textbook are rounded off. hence, there is a small variation in the result of this code.
alpha= atand(y/x1)
Rav= (-Fd*x3-Fc*(x2+x3))/(x1+x2+x3)
Rah= Rav*x1/y
Tca= sqrt(Rah^2+Rav^2)
tanbeta= ((-Fc-Tca*sind(alpha)))/(Tca*cosd(alpha))
Beta = atand(tanbeta);
Tcd= Tca*cosd(alpha)/cosd(Beta)
gama= atand((-Fd+Tcd*sind(Beta)))/(Tcd*cosd(Beta))
Tdb= (Tcd*cosd(Beta))/cosd(gama)
//RESULTS
printf ('Tca= %.1f KN',Tca)
printf (' \n Tcd=%.1f KN',Tcd)
printf (' \n Tdb=%.2f KN',Tdb)