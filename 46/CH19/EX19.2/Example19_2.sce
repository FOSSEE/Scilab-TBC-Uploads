//Example 19.2
clc
s=%s;
syms t Kc tauI;
Gc=Kc*(1+1/(tauI*s))
G=1/(s+1)^4;
G=syslin('c',G)
Gs=Gc*G/(1+Gc*G)//Overall transfer function
Us=1/s;
Cs=G*Us;
//Cohen-Coon method
Ct=ilaplace(Cs,s,t)
Ct1=diff(Ct,t)
Ct2=diff(Ct1,t)
disp('=0',Ct2)
//On solving the equation we get
t=linsolve(-1,3)
S=dbl(Ct1)
C3=dbl(Ct)
//From the figure 19.10 (B Vs t)
y2=0.353;
y1=0;
x2=3;
Td=3-(y2-y1)/S
Bu=1;//ultimate value of B
//From Eq.(19.4)
T=Bu/S
Kp=1;
//From Table 19.2
Kc=T*(0.9+Td/(12*T))/(Kp*Td)
tauI=Td*(30+3*Td/T)/(9+20*Td/T)
//By Z-N method
clf
bode(G)
show_margins(G)
//From Bode diagrams we get
Kcu=4;
Pu=2*%pi;
//Since Gc is a PI controller, by Z-N rules
Kc=0.45*Kcu
tauI=Pu/1.2
//By fitting the process reaction curve to a first order wit transport lag model by means of a least square fitting procedure. Applying the least square fit procedure out to t=5 produced the following results
Td=1.5;
T=3;
//By applying Cohen-Coon rules, we get
Kc=T*(0.9+Td/(12*T))/(Kp*Td)
tauI=Td*(30+3*Td/T)/(9+20*Td/T)
