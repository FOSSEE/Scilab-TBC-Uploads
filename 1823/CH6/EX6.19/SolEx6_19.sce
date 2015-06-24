//Example 6.19 page no 186
clear
clc
hfb=-0.99
Rc=2.2*10^3
Rl=1.1*10^3
Re=3.3*10^3
hib=25
hob=10^-6
Av=((Rc*Rl*hfb)/(hib*(Rc+Rl+hob*(Rc*Rl))))
Ai=-((Re*Rc*hfb)/((Re+hib)+(Rc+Rl+hob*Rl*Rc)))
printf("\n The value of Av=%0.3f " ,Av)
printf("\n The value of Ai=%0.3f " ,Ai)


