clc
T1=303; //K
p1=1; //bar
rc=9;
re=5;
n=1.25;
D=0.25; //m
L=0.4; //m
R=287;
cv=0.71;
cp=1;
num=8; //no. 0f cycles/sec

disp("(i) Pressure and temperatures at all salient points =")
p2=p1*(rc)^n;
disp("p2=")
disp(p2)
disp("bar")

T2=T1*(rc)^(n-1);
disp("T2=")
disp(T2)
disp("K")

//T4=1.8*T3
//Heat liberated at constant pressure= 2 × heat liberated at constant volume
//cp*(T4-T3)=2*cv*(T3-T2)
//T4/T3=1.8

rho=rc/re;
T3=1201.9; //K
disp("T3=")
disp(T3)
disp("K")

p3=p2*T3/T2;
disp("p3=")
disp(p3)
disp("bar")

p4=p3;
disp("p4=")
disp(p4)
disp("bar")

T4=1.8*T3;
disp("T4=")
disp(T4)
disp("K")

p5=p4*(1/re)^(n);
disp("p5=")
disp(p5)
disp("bar")

T5=T4*(1/re)^(n-1)
disp("T5=")
disp(T5)
disp("K")


disp("(ii) Mean effective pressure = ")
pm=1/(rc-1)*[p3*(rho-1)+(p4*rho-p5*rc)/(n-1)-(p2-p1*rc)/(n-1)];
disp(pm)
disp("bar")

disp("(iii) Efficiency of the cycle")
Vs=%pi/4*D^2*L;
W=pm*10^5*Vs/1000;

V1=rc/(rc-1)*Vs
m=p1*10^5*V1/R/T1;
Q=m*(cv*(T3-T2) + cp*(T4-T3));

Efficiency=W/Q;
disp("Efficiency =")
disp(Efficiency)


disp("(iv) Power of the engine =")
P=W*num;
disp(P)
disp("kW")