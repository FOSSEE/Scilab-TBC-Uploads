clear all; clc;
//This numerical is Ex 2_2S,page 30.
//The value given in the book for N_m is 1315,but on calculating the true value is found out to be 1304.35

P_ho=22.4//hydraulic output power
Q=0.14//flow rate at best efficiency point
g=9.8
rho=998
H_p=97.5
N=600

delta_pm=P_ho/Q
printf("Value of discharge head P_m %g  kPa",delta_pm)

H_m=delta_pm*10^3/(rho*g)
printf("\n Value of H_m=%g m",H_m)
disp("From the similarity law, H_p/H_m=((N_p/N_m)^2)*((D_p/D_m)^2)")

//let x=Hp/Hm
H_mr=16.3//rounded off value
x=H_p/H_mr
printf(" H_p/H_m =%0.2f",x)
disp("Thus (N_p/N_m)*(D_p/D_m) is equal to 2.45")
disp("Also the flow rate Q_p/Q_m=(N_p/N_m)*(D_p/D_m)^3")
z=9.9/0.14//value of Qp/Qm
printf(" Thus the value of Q_p/Q_m is %0.1f",z)
disp("Thus D_p/D_m=5.4 ,N_p/N_m=0.46")
//Let y=Np/Nm=0.461
y=0.46
N_m=N/y//where N=600 and y=0.46 
printf(" Hence N_m = %g rpm",N_m)//value given in the book is 1315,but on calculating the true value is found out to be 1304.35
