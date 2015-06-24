//Exa 1.9
clc;
clear;
close
// given data
K_A=0.5;// in W/m degree C
K_B=0.8;// in W/m degree C
Ti_A=600;// inside temp. of slab A in degree C
To_B=100;// outside temp. of slab B in degree C
t_A=4*10^-2;// thickness of slab A
t_B=6*10^-2;// thickness of slab B
// Heat transfer rate per square meter through the slab A
// q/A = +K_A * ( Ti_A - T) / t_A         (1)
// Heat transfer rate through slab B
// q/A = +K_B * ( T - To_B) / t_B        (2)
// Equating Eqns (1) and (2)
// K_A*(Ti_A - T)/t_A  =  K_B*(T - To_B)/t_B
 T=t_A*t_B/(K_A*t_B+K_B*t_A)*(K_A*Ti_A/t_A + K_B*To_B/t_B);
disp("T, intermediate temperature of slab A and B is : "+string(T)+" degree C");
//Putting the value of T in Eq(1), we get
q_by_A= K_A*( Ti_A - T) / t_A;
disp("Steady state heat transfer rate per square meter is : "+string(q_by_A)+" W/m^2")
//Note : Answer in the book is wrong
