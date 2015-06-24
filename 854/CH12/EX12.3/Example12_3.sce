//clear//
//Caption:Program to find the Phase constant, Phase velocity, Electric Field Intensity and Intrinsci ratio.
//Example12.3
//page408
clc;
syms t;
z = %z;
[uo,eo] = muo_epsilon();
ur = 1;
f = 10^6;
er1 = 81;
er2 =0;
etta0 = 377;
Ex0 = 0.1;
beta1 = phase_constant_dielectric(uo,eo,f,er1,er2,ur);
disp(beta1,'phase constant in rad/m beta=')
Lambda = 2*%pi/beta1;
Vp = phase_velocity(f,beta1);
disp(Vp,'Phase velocity in m/sec')
etta =  intrinsic_dielectric(etta0,er1,er2)
disp(etta,'Intrinsic impedancein ohms =')
Ex = 0.1*cos(2*%pi*f*t-beta1*z)
disp(Ex,'Electric field in V/m Ex=')
Hy = Ex/etta;
disp(Hy,'Magnetic Field in A/m Hy=')
//Result
// phase constant in rad/m beta=   0.1886241  
// Phase velocity in m/sec =     33310626.  
// Intrinsic impedancein ohms =      41.888889  
// Electric field in V/m Ex=   cos(58342*z/309303-81681409*t/13)/10 
//equivalent to Ex = 0.1*cos(0.19*z-6283185.3*t) 
// Magnetic Field in A/m Hy = 9*cos(58342*z/309303-81681409*t/13)/3770  
//equivalent to Hy = 0.0023873*cos(0.19*z-6283185.3*t)    
