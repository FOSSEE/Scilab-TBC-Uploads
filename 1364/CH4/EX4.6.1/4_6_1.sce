clc
//initialisation of variables
d= 8 //in
d1= 1.5 //in
Cd= 0.65
w= 62.3 //lbf.ft^3
W= 25 //tonf
u= 5 //miles/hour
u1= 20 //miles/hour
//CALCULATIONS
ds= W*2240*d1^4*Cd^2*log(u1/u)/(w*d^4*%pi*(d/24)^2)
T= W*2240*d1^4*Cd^2*((5/(u*7.33))-(20/(u1*29.35)))/(w*d^4*%pi*(d/24)^2)
//RESULTS
printf (' Distance that piston moves= %.2f ft ',ds)
printf (' \n time taken = %.4f sec ',T)
