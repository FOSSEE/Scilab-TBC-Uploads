//example7.31
clc
disp("As the impurity is accepter, it forms a p-type material.")
disp("Therefore, N_A = 10^22 /m^3 = p_p")
disp("Now, (p_p)*(n_p)=(n_i)^2    i.e.   (10^22)*(n_p)=(1.4*10^16)^2")
n=((1.4*10^16)^2)/(10^22)
disp(n,"Therefore, n(in /m^3)= ")
r=((1.96*0.145*10^10)+(0.05*10^22))*(1.6*10^-19)
disp(r,"rho(in (ohm-m)^-1) = ((n_p*u_n)+(p_p*u_p))*e = ")
