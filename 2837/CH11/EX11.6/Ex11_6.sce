clc
clear
//Initialization of variables
p1=40 //psia
t1=80 //F
p2=30 //psia
ar=0.5 //sq ft
v1=200 //ft/s
R=53.35
cp=0.24
g=32.17
J=778
//calculations
rho1=144*p1/(R*(t1+460))
G=rho1*v1
h10= cp*t1 + p1^2 /(2*g*rho1^2 *J)
t2=78 //F
h2=cp*t2
g2=h10-h2
rho2=sqrt(p1^2 /(2*g*g2*J))
P2=rho2*R*(t2+460)/144 
ds2=cp*log((t2+460)/(t1+460)) - R/J *log(P2/p1)
t3=77 //F
h3=cp*t3
g3=h10-h3
rho3=sqrt(p1^2 /(2*g*g3*J))
P3=rho3*R*(t3+460)/144 
ds3=cp*log((t3+460)/(t1+460)) - R/J *log(P3/p1)
t4=79 //F
h4=cp*t4
g4=h10-h4
rho4=sqrt(p1^2 /(2*g*g4*J))
P4=rho4*R*(t4+460)/144 
ds4=cp*log((t4+460)/(t1+460)) - R/J *log(P4/p1)
h5=18.62
t5=h5/cp
Gv=[h4 h2 h3]
Pv=[P4 P2 P3]
Sv=[ds4 ds2 ds3]
scf(1)
xtitle("Fanno line diagram , Enthalpy vs Entropy","Entropy","Enthalpy Btu/lb")
plot(Sv,Gv)
scf(2)
xtitle("Fanno line diagram , Pressure vs Entropy","Entropy","Pressure psia")
plot(Sv,Pv)
//results
printf("Temperature at exit = %.1f F",t5)
