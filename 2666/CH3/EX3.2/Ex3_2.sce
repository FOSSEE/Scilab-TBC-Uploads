
clc
//initialisation of variables
t=240//F
p=4//lb
R=53.35//f
t1=460//F
l=0.6931//ft lb
//CALCULATIONS
W=p*R*(t1+t)*l//ft-lb
//RESULTS
printf('the work done=% f ft-lb',W)
