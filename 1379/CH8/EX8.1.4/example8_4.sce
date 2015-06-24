

//exapple 8.4 
clc; funcprot(0);
// Initialization of Variable
t1=3*60;//time 3min
t2=12*60;//time 12min
t3=5*60;//time 5min
P=45*1000;//pressure at t1&t2
P2=85*1000;//pres. at t3
a=1.86;//area
mu=1.29/1000;
c=11.8;
V1=5.21/1000;//volume at t1
V2=17.84/1000;//volume at t2
V3=10.57/1000;//volume at t3
//calculation
b=[t1;t2];
A=[mu*c/2/a^2/P*V1^2 V1/P;mu*c/2/a^2/P*V2^2 V2/P];
x=A\b;
r45=x(1,1);
r85=(t3-x(2,1)*V3/P2)*2*a^2*P2/V3^2/mu/c;
n=log(r45/r85)/log(45/85);
rbar=r45/(1-n)/(45*1000)^n;
r78=rbar*(1-n)*(78*1000)^n;
//part1
//polynomial in V as a1x^2+bx+c1=0
c1=90*60;//time at 90 
Pt=78*1000;//Pt=pressure at time t=90
r78=round(r78/10^12)*10^12;
a1=r78*mu/a^2/Pt*c/2;
b=x(2,1)/Pt;
y=poly([-c1 b a1],'V1','coeff');
V1=roots(y);
disp(V1(2),"Volume at P=90kPa in (m^3):");
//part2
Pt=45*1000;
c1=90*60;
a1=r45*mu/a^2/Pt*c/2;
b=x(2,1)/Pt;
y=poly([-c1 b a1],'V1','coeff');
V1=roots(y);
disp(V1(2),"Volume at p=45kPa in (m^3):");

