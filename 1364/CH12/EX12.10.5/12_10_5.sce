clc
//initialisation of variables
T= 140 //F
m= 0.77
h= 30 //in
h1= -6 //ft
T1= 536  //F
r= 3.5
w= 62.3 //lbf/ft^2
//CALCULATIONS
R= ((460+T)/(T1))^r
P1= (h+h1)*w/R
//RESULTS
printf ('Static pressure= %.f lbf/ft^2',P1+7)
