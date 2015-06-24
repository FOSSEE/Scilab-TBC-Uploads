clc
//initialisation of variables
A= 600 //ft^2
W= 40 //lbf/ft^2
n= 75 //percent
r= 10
v= 300 //miles/hour
//CALCULATIONS
L= W*A
D= L/r
P= D*v*5280/(60*33000)
hp= P*100/n
//RESULTS
printf (' brake horse-power of the engines= %.f h.p',hp)
