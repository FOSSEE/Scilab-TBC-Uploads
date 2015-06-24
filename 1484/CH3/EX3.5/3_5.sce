clc 
//initialisation of variables
d= 9 //in
d1= 4 //in
g= 32.2 //ft/sec^2
dh= 10 //in
sg= 13.6 
K= 1
//CALCULATIONS
C= (((%pi/4)^2*(d*d1)^2*sqrt(2*g)/144^2)/(sqrt((%pi*d^2/12^2)^2-(%pi*d1^2/12^2)^2)))+0.52
h= (sg-1)*dh/12
Q= K*C*sqrt(h)
//RESULTS
printf ('Discharge passing through the pipe= %.2f cuses ',Q)
