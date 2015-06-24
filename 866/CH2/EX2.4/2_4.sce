clc
//initialisation of variables
alpha= atand(2.4/3) //degrees
F1= 5*sind(alpha) //KN
F2= 10*sind(alpha) //KN
F3= 3 //KN
F4= 2 //KN
F5= -5*cosd(alpha) //KN
F6= 10*cosd(alpha) //KN
x1= 6 //m
x2= 4.5 //m
x3= 1.2 //m
x4= 1.5 //m
x5= 4 //m
x6= 2 //m
//CALCULATIONS
Rah= F1+F2
Rav= ((-F5)*x2-x3*F1-F6*x4-F2*x3+F3*x5+F4*x6)/6
Rb= F3+F4-F5-Rav-F6
//RESULTS
printf ('Rah= %.1f kN',Rah)
printf (' \n Rav=%.1f KN',Rav)
printf (' \n Rb=%.1f KN',Rb)
