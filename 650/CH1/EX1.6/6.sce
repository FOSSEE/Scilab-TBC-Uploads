clc
dp=22*10^3; //N/m^2
g=9.81; //m/s^2
H=1.5; //m
rho=1495; //kg/m^3
rho_s=1270; //kg/m^3
rho_c=2698; //kg/m^3

p=dp/g/H;
disp("the density of the solution with crystal =")
disp(p)
disp("kg/m^3")

// rho=f1*rho_s+f2*rho_c
// f1+f2=1

f2=(rho-rho_s)/(rho_c-rho_s);
disp("The fraction of crystals =")
disp(f2)