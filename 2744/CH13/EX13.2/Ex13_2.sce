clear;
clc;
b = 8;//inches
d = 7/8;//inches
h = 18;//inches
r = 2;//inches
c = 750;//lb/in^2
t_limit = 18000;//lb/in^2
m = 8;
h_eff = 16;//inches
m = 18;
A_t = 3*0.25*%pi*d^2;//in^2
K = m*A_t/(b*h_eff);//inches
n1 = sqrt((K)^2+(2*K))-K;
n = n1*h_eff;//inches
a = h_eff - (n/3);//inches
t = m*c*(h_eff-n)/n;//lb/in^2

if t<t_limit then
    t = t;
else
    t = t_limit;
end

M_r = t*A_t*a;// lb/inches
W = M_r*8/(12*h_eff);//lb-wt
printf('The distance of the N.A from the top edge, n = %.3f inches.',n);
printf('\n The safe moment of inertia is, t = %d lb/in^2.',t);
printf('\n Unifromly distributed load over the beam, W = %d lb-wt. or %d lb. per foot run',W,W/16.011);

//there are calculation errors given in the answer in textbook.
