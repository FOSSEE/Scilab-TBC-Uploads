clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
Q=12000
f=30
t1=0.5
t2=1.2
//calculations
function y= fun2(h)
    y=Q/f *(1/h^(3/2))
endfunction
t=intg(t1,t2,fun2)
//results
printf("Time  = %d sec",t)
//The answer is a bit different due to rounding off error
