clc
//initialisation of variables
Re= -4 //KN
Rh= -6 //KN
Ro= 2 //KN
x1= 1 //m
x2= 3 //m
x3= 5 //m
x4= 4 //m
//CALCULATIONS
Rb= (Ro*x1-Re*x2-Rh*x3)/8
Rav= (-Ro*x1-Re*x3-Rh*x2)/8
Rah= Ro
Fcf= (Rav+Re)/cosd(45)
Fcd= (-Re*x1-Rav*x4-Ro*x1)/x1
Fef= (Rav*x2+Ro*x1)/x1
//RESULTS
printf ('Rb= %.1f KN',Rb)
printf (' \n Rav=%.1f KN',Rav)
printf (' \n Rah=%.f KN',Rah)
printf (' \n Fcf=%.2f KN',Fcf)
printf (' \n Fcd=%.f KN',Fcd)
printf (' \n Fef=%.1f KN',Fef)
