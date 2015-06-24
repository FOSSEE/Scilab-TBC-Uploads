clc
//initialisation of variables
d1= 0.5 //in
d2= 5 //in
x= 10 //in
t= 12 //min
h=3 //ft
W= 2240 //lb
//CALCULATIONS
F= W*(d1/d2)^2
n= (W*h)/((W/100)*(x/t))
hp= (n*(x/t)*(W/100))/(t*33000)
//RESULTS
printf (' Force on plunger= %.1f lb',F)
printf (' \n strokes required= %.f ',n)
printf (' \n horse-power required= %.3f hp',hp)
