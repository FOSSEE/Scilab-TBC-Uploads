clc
//Initialization of variables
K2=1.0008*10^-14 //m^2
K1=1.754*10^-5 //m
c=0.1
//calculations
disp("Neglecting x w.r.t c,")
x2=c*K2/K1
x=sqrt(x2)
//results
printf("Concentration of OH minus ions = %.1e m",x)
