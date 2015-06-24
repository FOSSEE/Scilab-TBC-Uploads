clc
//Initialization of variables
K=1.754*10^-5 //m
c=0.1
//calculations
disp("Neglecting x w.r.t c,")
x2=K
x=sqrt(K)
mu=x
disp("From tables 14-5 and 14-6,")
gH=0.963
gA=0.960
x22=K/(gH*gA)
a=poly(0,"a");
p=a^2 +a*x22 -c*x22
z=roots(p)
alpha=z(2)
//results
printf("concentration of H plus ions = %.2e m",alpha)
