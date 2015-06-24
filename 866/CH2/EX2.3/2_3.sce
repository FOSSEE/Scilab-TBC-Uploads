clc
//initialisation of variables
F1= -2*cosd(45) //KN
F2= -2*sind(45) //KN 
F3= -5 //KN
x1= 0.4 //m
x2= 1.0 //m
Rc= 2.5 //m
Rd= 3.7 //m
//CALCULATIONS
Rah= -F1
Rav= -F3-F2
Ma= -F3*x1-F2*x2
Ra= sqrt(Rc^2+Rd^2)
theta= atan(Rc/Rd) *180/%pi 
//RESULTS
printf ('Rah= %.1f kN',Rah)
printf (' \n Rav=%.1f KN',Rav)
printf (' \n Ma=%.1f KNm',Ma)
printf (' \n Ra=%.1f KN',Ra)
printf (' \n theta=%.1f degrees',theta)
