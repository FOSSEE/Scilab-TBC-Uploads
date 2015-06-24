clc
//initialisation of variables
w= 62.3 //lbf/ft^3
Q= 10.5 //lbf/sec
P= 34.4 //h.p
n= 0.75
//CALCULATIONS
H= n*P*550/(w*Q)
//RESULTS
printf (' lift of the pump= %.1f ft',H)
