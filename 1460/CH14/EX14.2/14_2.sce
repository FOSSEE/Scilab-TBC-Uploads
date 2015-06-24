clc
//initialization of variables
x1=1 //in
x2=4 //in
T1=85 //F
T2=30 //F
//calculations
QbyA=12*(T1-T2)/(x1/0.3 + x2/0.026)
//results
printf("Rate of heat flow = %.1f B/r-ft^2-F",QbyA)
