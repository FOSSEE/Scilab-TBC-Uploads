clc
//initialisation of variables
F1= -2 //KN
F2= -3 //KN
F3= -1 //KN
x1= 2 //m
x2= 1.5 //m
x3= 1 //m
x4= 0.5 //m
//CALCULATIONS
Ra= (-F2*x4-F3*x3-F1*x2)/x1
Rd= -F1-F2-F3-Ra
Fab= -2.75/sind(60)
Fae= -Fab*cosd(60)
Fba= Fab
Fbe= (-2-Fba*cosd(30))/cosd(30)
Fbc= Fba*cosd(60)-Fbe*cosd(60)
Fdc= -Rd/sind(60)
Fde= -Fdc*cosd(60)
Fce= (-3-Fdc*cosd(30))/cosd(30)
//RESULTS
printf ('Ra= %.2f KN',Ra)
printf (' \n Rd=%.2f KN',Rd)
printf (' \n Fab=%.2f KN(compression)',Fab)
printf (' \n Fae=%.2f KN(tension)',Fae)
printf (' \n Fbe=%.2f KN(tension)',Fbe)
printf (' \n Fbc=%.2f KN(compression)',Fbc)
printf (' \n Fdc=%.2f KN(compression)',Fdc)
printf (' \n Fde=%.2f KN(tension)',Fde)
printf (' \n Fce=%.2f KN(tension)',Fce)
