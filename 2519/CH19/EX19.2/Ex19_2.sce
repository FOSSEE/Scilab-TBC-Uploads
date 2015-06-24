clc
clear
//Initialization of variables
r1=4.035 //in
r2=4.312 //in
r3=5.312 //in
r4=6.812 //in
k12=25 //Btu/hr ft F
k23=0.05 //Btu/hr ft F
k34=0.04 //Btu/hr ft F
t1=625 //F
t4=125 //F
l=100 //ft
hr=1.7 //Btu/hr ft^2 F
//calculations
Rs=1/(2*%pi*l) *(log(r2/r1) /k12+log(r3/r2) /k23 +log(r4/r3) /k34)
Qd=(t1-t4)/Rs
dt=Qd*12/(hr*%pi*2*l*6.812)
t0=t4-dt
//results
printf("Heat loss = %d Btu/hr",Qd)
printf("\n Temperature required = %d F",t0)
disp("The answers given in the textbook are a bit different due to rounding off error")
