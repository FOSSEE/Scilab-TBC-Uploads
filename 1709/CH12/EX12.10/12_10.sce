clc
//Initialization of variables
e=0.83
//calculations
T1=530 //R
T2d=838 //R
T6d=T2d
T3=1960 //R
T4d=1375 //R
T5d=T4d
T5=e*(T5d-T2d) +T2d
W=0.24*((T3-T4d)- (T2d-T1))
Q=0.24*(T3-T5)
eta=W/Q
//results
printf("Thermal efficiency = %d percent",eta*100+1)
