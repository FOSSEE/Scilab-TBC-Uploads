clc
//initialization of variables
v=12.8 //ft^3
T=80+460 //R
P=14 //lb/in^2
Pf=500 //lb/in^2
//calculations
Q=-53.3*T*log(Pf/P) /778
W=778*Q
v2=53.3*T/(144*Pf)
w=v/v2
Qdot=w*Q
Wdot=w*W
ds=Q/T
dsbar=ds*w
//results
printf("Work required = %d ft-lb",Wdot)
printf("\n Heat transfer = %d B",Qdot)
printf("\n Change in entropy = %.3f B/lbm ",dsbar)
//The answer given for Qdot is a printing error in textbook and the values are a bit different due to rounding off error
printf("\n Change in internal energy is 0 cause this is a constant temperature process")
