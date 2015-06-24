clc
//initialization of varaibles
disp("From data and steam tables,")
Q=10240000 //B/hr
w=700 //lb/hr
h=19500 //B/lb
//calculations
HV=w*h
e=Q/HV
//results
printf("Efficiency = %.2f",e)
