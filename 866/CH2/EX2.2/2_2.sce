clc
//initialisation of variables
F1= 5*cosd(60) //KN
F2= 5*sind(60) //KN
F3= -3 //KN
x1= 1.2 //m
x2= 0.9 //m
x3= 0.4 //m
//CALCULATIONS
Rah= F1
Rav= (-(F3*x2)+F2*x3)/1.2
Rd= -F3+F2-Rav
//RESULTS
printf ('Rah= %.1f kN',Rah)
printf (' \n Rav=%.1f KN',Rav)
printf (' \n Rd=%.1f KN',Rd)
