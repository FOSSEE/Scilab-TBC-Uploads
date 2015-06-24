clc
//initialisation of variables
W= 4 //tonf
d= 30 //ft
W1= 2000 //tonf
O1=(0.015)
O2= -0.015
//CALCULATIONS
O= O1-O2
GM= (W*d)/(W1*O)
//RESULTS
printf ('metacentric height= %.f ft',GM)
