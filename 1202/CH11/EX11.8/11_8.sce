clear
clc

//Example 11.8
disp('Example 11.8')

S=(55-35)/(7-1.07);//%/min
delta_p=43-30;//%
R=S/delta_p;//min^-1

delta_x=55-35;//%
K=delta_x/delta_p;
theta=1.07;//min
tau=7-theta;//min

mprintf("\nThe resulting process model is with delay of 1.07 min\n")
s=%s;
G=K/(tau*s+1);
disp(G,'G=')

