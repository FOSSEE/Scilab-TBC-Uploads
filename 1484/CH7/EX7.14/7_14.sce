clc 
//initialisation of variables
w= 9 //in
wc= 6 //in
d= 8 //in
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= 3.09*(wc/12)*(d/12)^1.5
V= Q*144/(w*d)
H= (d/12)+(V^2/(2*g))
Q= 3.09*(wc/12)*H^1.5
//RESULTS
printf ('Discharge= %.2f cuses',Q)
