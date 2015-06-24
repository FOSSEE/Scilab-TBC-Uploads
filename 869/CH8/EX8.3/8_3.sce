clc
//initialisation of variables
P= 5 //kips
angle= 30 //degrees
//CALCULATIONS
Fn= P*sind(angle)
Ft= P*cosd(angle)
//RESULTS
printf ('Fn= %.2f lb',Fn)
printf (' \n Ft=%.2f lb',Ft)
