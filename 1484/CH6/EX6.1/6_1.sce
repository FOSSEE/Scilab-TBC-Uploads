clc 
//initialisation of variables
R= 0.5 //lbs sq ft
v= 10 //ft/sec
A= 1 // sq ft
A1= 15000 //sq ft
V= 20 //m.p.h
//CALCULATIONS
k= R/v^2
R= k*A1*(V*44/30)^2
HP= R*88/(550*3)
//RESULTS
printf ('Horse power= %.f HP',HP)
