clc
//initialisation of variables
W= 107.5 //ft lbf/lbf
H= 120 //ft
n= 0.93
P= 60 //hp
w= 62.3 //lbf/ft^3
//CALCULATIONS
nh= W/H
no= nh*n
Q= P*550/(w*H*no)
//RESULTS
printf (' Rate of flow= %.1f ft^3/sec',Q)
