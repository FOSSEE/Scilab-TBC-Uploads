clc
//initialization of variables
M=0.4
l=10 //ft
dia= 3 //in
P=50 //lb/in^2
ff=0.008
T=100+460 //R
//calculations
constant= 4*ff*l/dia
exitM=2.9-constant
Nm2=0.5
Ptratio=2.73/2.3
Pt2=P/Ptratio
//results
printf("Exit total pressure = %.1f lb/in^2",Pt2)
