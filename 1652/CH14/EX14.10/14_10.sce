clc
//Initialization of variables
m1=0.1 //m
m2=0.1 //m
K=1.754*10^-5 //m
//calculations
mu=0.5*(m1*1^2 + m2*1^2)
disp("From table 14.5,")
aH=9 //A
aA=4.5 //A
disp("From table 14.6")
gH=0.825
gA=0.775
gHA=1
x1=gHA*K/(gH*gA)
disp("Assuming x to be small w.r.t m1,")
x=sqrt(x1*m1)
//results
printf("Concentration of H plus ions = %.2e m",x)
