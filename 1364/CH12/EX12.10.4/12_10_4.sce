clc
//initialisation of variables
p= 14.7 //lbf/in^2
r= 14
r1= 15
r2= 1.4
//CALCULATIONS
R= (r/r1)^(r2/(r2-1))
P= p*144*R
//RESULTS
printf ('pressure drop = %.f lbf/ft^2',P+2)
