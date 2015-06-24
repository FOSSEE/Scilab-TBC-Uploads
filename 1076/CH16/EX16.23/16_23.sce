clear
clc

V=220

rho1=.0286
T=20
dT=30
a=.004
rho=rho1*(1+(dT*a))
rho=round(rho*1000)/1000

P1=5
ef1=.81
pf1=.77
I1= P1*735.5/(V*pf1*ef1)
I1=I1 * exp(%i *-1 * acos (pf1))
I1=round(I1 *1000)/1000
Ic=I1


P2=26
ef2=.87
pf2=.85
I2= P2*735.5/(V*pf2*ef2)
I2=round(I2*100)/100
I2=I2 * exp(%i *-1 * acos (pf2))
Ib=fix((I1+I2)*100)/100

P3=10
ef3=.83
pf3=.82
I3= P3*735.5/(V*pf3*ef3)
I3=I3 * exp(%i *-1 * acos (pf3))
Ia=I1+I2+I3

P=real (Ia * V )
PLa=round(.05*P)

l1=40
l2=35
l3=30

PL1=2 * (round(abs(Ia)*100)/100)^2 * rho * l1 
PL2=2 * (fix(abs(Ib)*100)/100)^2 * rho * l2 
PL3=2 * (round(abs(Ic)*100)/100)^2 * rho * l3 

PL1=fix(PL1/100)*100
PL2=round(PL2/100)*100
PL3=round(PL3/10)*10


a=(PLa/(PL1+PL2+PL3))^-1

mprintf("a=%.2f sq mm", a)
disp("the difference in the result is due to error in calculation of abs(I2)=141.12 instead of 144.12")
