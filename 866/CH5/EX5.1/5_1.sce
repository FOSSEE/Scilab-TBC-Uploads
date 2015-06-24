clc
//initialisation of variables
F= -10 //KN
x1= 1 //m
x2= 2 //m
x3= 3 //m
//CALCULATIONS
alpha= atand(x1/x3)
beta= atand(x1/x2)
Tca= -F*cosd(beta)
Tcb= Tca*cosd(alpha)/cosd(beta)
Rav= -F*x2/(x2+x3)
Rbv= -F-Rav
Rah= Rav*x3/x1
Rbh= Rah
Tca= sqrt(Rav^2+Rah^2)
Tcb= sqrt(Rbv^2+Rbh^2)
//RESULTS
printf ('Tca= %.1f KN',Tca)
printf (' \n Tcb=%.1f KN',Tcb)
printf (' \n Rav=%.f KN',Rav)
printf (' \n Rbv=%.f KN',Rbv)
printf (' \n Rah=%.f KN',Rah)
printf (' \n Tca=%.1f KN',Tca)
printf (' \n Tcb=%.1f KN',Tcb)
