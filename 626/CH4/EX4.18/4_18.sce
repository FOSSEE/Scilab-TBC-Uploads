clear;
clc;
close;
disp("Example 4.17")
M0=0.7
T0=228 //in K
p0=16 //kPa
eprop=0.85 //efficiency of prop
m=10 //Kg/s
pd=0.98
pc=30
ec=0.92
Tt4=1600
Qr=42000000 // in kJ/kg
eb=0.99
pb=0.96
etHPT=0.82
emHPT=0.99
alfa=0.79
emLPT=0.99
eLPT=0.88
egb=0.995
en=0.95
gmc=1.4
Cpc=1004
gmt=1.33
Cpt=1152 
z0=[0.79:0.01:0.97]
g1=[]
gc1=1
g2=[]
gc2=1
g3=[]
gc3=1
g4=[]
gc4=1
for alfa=0.79:0.01:0.97
Tt0=T0*(1+((gmc-1)*(M0)^2)/2)
pt0=p0*(1+((gmc-1)*(M0)^2)/2)^(gmc/(gmc-1))
a0=((gmc-1)*Cpc*T0)^(1/2);
V0=a0*M0
pt2=pt0*pd
Tt2=Tt0 //Adiabatic
pt3=pt2*pc
tc=pc^((gmc-1)/(ec*gmc))
Tt3=Tt2*tc
f=(Cpt*Tt4-Cpc*Tt3)/(Qr*eb-Cpt*Tt4)
pt4=pt3*pb
ht45=Cpt*Tt4-(Cpc*Tt3-Cpc*Tt2)/((1+f)*emHPT)
Tt45=ht45/Cpt
pt45=pt4*(Tt45/Tt4)^(gmt/((gmt-1)*etHPT))
m9=(1+f)*m
sp=(1+f)*m*eLPT*alfa*ht45*(1-(p0/pt45)^((gmt-1)/gmt))/10^6
Tt5=(ht45-sp*10^6/((1+f)*m))/Cpt
tt=Tt5/Tt45
et=log(tt)/(log(1-((1-tt)/eLPT)))
pt=tt^(gmt/(et*(gmt-1)))
pt5=pt45*pt
p9=p0 //assumption
pi=p9/pt5
ti=pi^((gmt-1)/gmt)
T9i=Tt5*ti
T9=Tt5-en*(Tt5-T9i)
V9=(2*Cpt*(Tt5-T9))^(1/2)
Fprop=eprop*egb*emLPT*sp*10^3/V0
a9=((gmt-1)*Cpt*T9)^(1/2)
M9=V9/a9
pt9=p9*(1+((gmt-1)*M9^2)/2)^(gmt/(gmt-1))
pn=pt9/pt5
Fncore=m*((1+f)*V9-V0)/1000
spp=egb*emLPT*sp
Ft=Fprop+Fncore
Fr=Fprop/Ft

mp=((m9*V9^2)/2-m*(V0^2)/2)/10^3
mf=m9-m
PSFC=mf*10^6/((spp*10^3)+mp)
TSFC=mf*10^3/(Ft)
eth=(spp*10^3+mp)*10^3/(mf*Qr)
ep=(Ft*V0)/(spp*10^3+mp)
eo=eth*ep
g1(gc1)=Ft;
gc1=gc1+1;
g2(gc2)=TSFC;
gc2=gc2+1
g3(gc3)=ep
gc3=gc3+1
g4(gc4)=Fr
gc4=gc4+1

end
subplot(2,2,1)
plot2d(z0,g1,2)
xgrid
title("Turboprop total thrust")
xlabel("Power split(alfa)")
ylabel("Fprop+Fcore(kN)")
subplot(2,2,2)
plot2d(z0,g2,2)
xgrid
title("TSFC in turboprop engine")
xlabel("Power split(alfa)")
ylabel("TSFC(mg/s/N)")
subplot(2,2,3.5)
plot2d(z0,g3,2)
plot2d(z0,g4,5)
xgrid
xlabel("Power split(alfa)")
title("Propeller thrust as a fraction of total thrust and propulsive efficiency")
legend("Prop efficiency","Fprop/Ftotal")
//plot2d(z0,g5,4)