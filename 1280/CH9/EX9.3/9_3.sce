clc
//initialisation of variables
P= 1500 //psi
d= 12 //in
V= 50 //gal
//CALCULATIONS
F= P*(%pi*d^2/4)
S= V*231*4/(%pi*d^2)
//RESULTS
printf ('Weight = %.f lb',F)
printf ('Stroke length = %.1f in',S)
