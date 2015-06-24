clear all; clc;
//This numerical is Ex 2_2E,page 30.
P_ho=30//hydraulic output power
Q=5//flow rate at best efficiency point
g=32.2
rho=1.938
Hp=320
N=600

delta_pm=P_ho*550/Q
printf("Value of discharge head P_m %g lb/ft^2",delta_pm)

Hm=delta_pm/(rho*g)
printf("\n Value of H_m=%0.2f ft",Hm)
disp("From the similarity law, H_p/H_m=((Np/Nm)^2)*((Dp/Dm)^2)")

//let x=Hp/Hm
x=Hp/Hm
printf(" H_p/H_m =%0.2f",x)
disp("Thus (N_p/N_m)*(D_p/D_m) is equal to 2.46")
disp("Also the flow rate Q_p/Q_m=(N_p/N_m)*(D_p/D_m)^3")
z=350/5//value of Qp/Qm
printf(" Hence the value of Q_p/Q_m is equal to %g",z)
disp("Thus D_p/D_m=5.33 ,N_p/N_m=0.461")
//Let y=Np/Nm=0.461
y=0.461
N_m=N/y
printf(" Thus N_m = %g rpm",N_m)
