clc
//initialisation of variables
Ft= 1000 //lb
a1= 5 //degrees
mu= 0.30
//CALCULATIONS
R1= Ft/cosd(a1+atand(mu))
F= R1*sind(a1+atand(mu)+atand(mu))/sind(90-atand(mu))
//RESULTS
printf ('Forec required to start wedge= %.f lb',F)
