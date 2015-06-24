

clc 
//initialisation of variables
g= 32.2 //ft/sec^2
sct= 1.6
sl= 0.8
K= 0.98
dh1= 4 //ft
W= 62.4 //lbs/ft^3
d1= 8 //in
d2= 6 //in
//CALCULATIONS
dp= dh1*((sct/sl)-1)
C= sqrt(2*g)*%pi*(d1/24)^2 /sqrt((d1^2/d2^2)^2 -1)
Q= C*K*sqrt(dh1)
//RESULTS
printf ('Discharge passing through the pipe= %.1f cuses ',Q)
//The answer given in textbook is wrong. Please verify it.
