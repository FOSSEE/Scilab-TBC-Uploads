clc
//initialization of variables
Tt2=1620+460 //R
Tt1=60+460 //R
Mi=0.2
P=40 //lb/in^2
g=1.35
//calculations
Tratio=Tt2/Tt1
disp("From figure")
fM=4*0.036
NM2=0.49
Pratio=0.98/0.885
Pt2=P/Pratio
//results
printf("Final stagnation pressure = %.1f //lb/in^2",Pt2)
printf("\n Final mach number = %.3f",fM)
