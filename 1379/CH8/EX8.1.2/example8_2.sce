

//exapple 8.2 
clc; funcprot(0);
// Initialization of Variable
P1=5.34*1000;//pressure after 3 min.
P2=9.31*1000;//pressure after 8 min.
a=240/1000000;//dV/dt
P3=15*10^3;//final pressure
//calculation
b=[P1;P2];
A=[a^2*180 a;a^2*480 a];
x=A\b;
//part1
t=(P3-x(2,1)*a)/x(1,1)/a^2;
disp(t,"time at which the required pressure drop have taken place in (s):");
//part 2
V1=a*t;
disp(V1,"volume of filterate in (m^3):");
//part 3
V2=0.75;
t2=t+x(1,1)/2/P3*(V2^2-V1^2)+x(2,1)/P3*(V2-V1);
disp(t2,"the time required to collect 750dm^3 of filterate in (s):");
//part 4
P4=12*10^3;
a=P4/(x(1,1)*V2+x(2,1));
t=10/1000/a;
disp(t,"time required to pass 10dm^3 volume in (s):")

