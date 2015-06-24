//Example 17.4
clc
s=%s;
syms Kc K1 tauI tauD
K=0.09;
Kc=K1/K;
Gc=K1*(1+1/(tauI*s)+tauD*s)
g1=1/((s+1)*(s+2));
//g2=exp(-0.5*s), we can write it as g2=(2-0.5*s)/(2+0.5*s). Therefore,
g2=(2-0.5*s)/(2+0.5*s);
G=g1*g2;
G=syslin('c',G)
clf
bode(G)
show_margins(G)
//From the bode diagrams we get
wc0=1.56;//rad/min
A=0.145;
Ku=1/A
Pu=2*%pi/wc0
//By Z-N rules
//For P controller
K1=0.5*Ku
Gc=K1
G1=Gc*G/K1
//For PI controller
K1=0.45*Ku
tauI=Pu/1.2
Gc=K1*(1+1/(tauI*s))
G2=Gc*G/K1
//For PID controller
K1=0.6*Ku
tauI=Pu/2
tauD=Pu/8
Gc=K1*(1+1/(tauI*s)+tauD*s)
G3=Gc*G/K1
clf
bode([G1;G2;G3])
legend(['G1';'G2';'G3']);


