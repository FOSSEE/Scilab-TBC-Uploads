clear
clc
//initialisation of variables
H= 82.1 //ft
h= 90 //ft
k= 0.00646
k1= 0.00454
vd= 11 //ft/sec
P= 0.53 //hp
//CALCULATIONS
Q= sqrt((1/k))*sqrt(h-H)
Qu= Q/sqrt(h-H)
Q1= sqrt(vd/k1)
hf= Q1^2*k
Qu1= Q1/sqrt(h-hf)
Pu= P*(h-hf)^1.5
//RESULTS
printf ('Qu = %.f cuses',Q)
printf ('\n Q = %.1f cuses',Q1)
printf ('\n power Developed = %.f hp',Pu)
