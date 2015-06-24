clc
//Initialization of variables
d=0.02 //m
d2=1.2 //m
f=0.01
L=250
ken=0.5
g=9.81
h1=8 //m
h2=4 //m
//calculations
V2=2*g/(1+ken+ f*L/d)
V=sqrt(V2)
Q=%pi/4 *d^2 *V
function t=time(h)
    t=-%pi/4 *d2^2 /Q /sqrt(h)
endfunction
ti=intg(h1,h2,time)
//results
printf("Time required = %d sec",ti)
