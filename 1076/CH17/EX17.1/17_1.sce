clear;
clc;

P=100e3;
pf=.9;
Len=200;
eff=.95;
Vreg=.15;

//(a)
V=5.5 * sqrt((Len/1.6)+(P/100));
V=220;
Z0=400;
SIL= V * V/Z0;
n=(P/(SIL*1e3))+1;
mprintf("\n (a) Voltage rating= %.0f kV,\n no of circuits= %d",V, n);

//(b)
Ir= P/(sqrt(3)*V * pf);
r20=.302
Temp2=75
Temp1=20
r75=round(r20 * ((228+Temp2)/(228+Temp1)) *100)/100
R=r75*Len
eff=P*1e3 /((P*1e3) + (3*Ir*Ir*R))
mprintf("\n(b)\nACSR 6/6/4.50 gives efficiency %.2f. so not suitable", eff)

r20=.0898
r75=round(r20 * ((228+Temp2)/(228+Temp1)) *100)/100
R=r75*Len
eff=P*1e3 /((P*1e3) + (3*Ir*Ir*R))
mprintf("\nACSR 30/7/3.71 gives efficiency %.2f. Suitable for temp less than 75, span =300m (by experience)", eff)
span=300
dia=25.97
dAl=3.71
dSt=3.71

//(c)
mprintf("\n(c)Keep interphase distance to be 6m for 220KV line. 12 m between 2 outer phases")
D1=6
D2=12

//(d)
Deq=(D1*D1*D2)^(1/3)
r=dia/2;
GMR=.7788 * r
GMR=round(GMR*100)/1e5
L=round(.4605 * log10(Deq/GMR)*100)/100
Z=round(complex(R, (2*%pi*50 * L *1e-3*Len)) *10)/10
C=.02412/ log10(Deq/GMR) 
Y=%i * 2*%pi*50 * C *1e-6*Len

E1= round((1+((Z*Y)/2))*1000)/1000
E2=round((Y*(1+((Z*Y)/4)))*1e7)/1e7
Vr=V*1e3/sqrt(3)
pf=.9
Ir=Ir * exp(%i * -acos(pf))
Vs=(Vr * E1) + (Ir*Z)
Is=(Vr *Y* E2) + (Ir*E1)
//Error in answer (Ps) is due to mutiple rounding off in a step in the textbook (Is)
pfs=cos(atan(imag(Vs)/real(Vs))+atan(imag(Is)/real(Is)))
Ps=round(real(3*Vs*Is))/1000000
Ps=105.07
pfs=round(pfs*100)/100
eff=P*.1/Ps
Vr0=abs(Vs)/abs(E1)
VR=(Vr0-abs(Vr))/abs(Vr)
mprintf("\n(d)\nline efficiency= %.2f percent, Voltage regulation= %.2f percent",eff, VR*100)

//(e)
p=74;
t=50
d=3.86 * p/(273+50)
m0=.84
Vd=(3*1e6/sqrt(2)) * r *1e-3 * d * m0 * log(Deq/(r*1e-3))
ratio=V*1e3/(Vd*sqrt(3))
F=.05

corona=3* 21 * 1e-6 * 50 *(V/(sqrt(3)))  *(V/(sqrt(3))) * F/(log10(Deq*1e3/r) *log10(Deq*1e3/r) )
corona=round(corona*100)/100
corona=corona * Len
mprintf("\n(e)Corona loss =%.1f KW",corona)

//(f)
tphi1=tan(acos(pf))
tphi2=tan(acos(pfs))
Q1=P*1e-3 *tphi1
Q2=P*1e-3 *tphi2
Cap=Q1-Q2
mprintf("\n(f)capacity of capacitor = %.2f MVAR leading",Cap)
//(g)
Vr=V*1e3/sqrt(3)
Vr=round(Vr)
Ir=(P*1e3/(3*Vr*pfs) ) * exp(%i * -acos(pfs))
Vs=(Vr * E1) + (Ir*Z)
Is=(Vr *Y* E2) + (Ir*E1)
//Error in answer (Ps) is due to mutiple rounding off in a step in the textbook (Is)
pfs=cos(atan(imag(Vs)/real(Vs))+atan(imag(Is)/real(Is)))
Ps=round(real(3*Vs*Is))/1000000
Ps=104.74
pfs=round(pfs*100)/100
eff=P*.1/Ps
Vr0=abs(Vs)/abs(E1)
VR=(Vr0-abs(Vr))/abs(Vr)
mprintf("\n(g)\nline efficiency= %.1f percent, Voltage regulation= %.2f percent",eff, VR*100)

//(h)
A=37 * %pi * (dAl/1000)^2 /4
E=91.4 *1e9

alpha=18.44 *1e-6
w=14.64
Fw=378 * dia * 1e-3 
Fw=round(Fw*100)/100
Ft1=sqrt(w^2 + Fw^2)
T1=135.5*1e3/2.5
Ft2=w
Temp21=5
Temp22=30 

c_1=1
c_2=T1 -(alpha * A * E * (Temp22-Temp21)) - A*E*Ft1^2 * span^2 /(24*T1^2)
c_3=0
c_4=A*E*Ft2^2 * span^2 /24
pol=poly([-c_4 -c_3 -c_2 c_1], "xx", "c")
T2s=roots(pol)


T2=T2s(1)
Sag1= w * span *span / (8 * T2)
Sag2= round(Ft1*100)*span *span / (800 * T1)
VS=Sag2 * cos (atan(Fw/w))
mprintf("\n(h)Tension = %.0f N, Sag under erection = %.2f m , vertical sag due to bad weather = %.2f m", T2, Sag1, VS)

//(i)
mprintf("\n(i)Using experience, use 2 ground wires of 7/3.66 mm galvanised steel wires")
