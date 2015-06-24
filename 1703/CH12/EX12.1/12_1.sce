clc
//initialisation of variables
d= 0.0625 //in
sg= 0.91
vs= 1.62
ss= 7.85
g= 981 //cm/sec^2
//CALCULATIONS
v= 4*(d*2.54/2)^2*(ss-sg)*g/(3*6*30.45*vs)
//RESULTS
printf ('steady speed attained = %.4f ft/sec ',v)
