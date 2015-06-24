clear
clc
PA=14.6*101325;//Pa
HA=148000;
Vr=2;
Vl=Vr;
b=1;
fs=0.0055;
k=5*10^-5;//m6l/kg.molcat.s
dp=5*10^-5;//mcat
kac=4.4*10^-4;kai=0.277;//m3l/m3.r.s
density=1450;//kg/m3
De=5*10^-10;//m3l/mcat.s
L=dp/6;//for spherical particle
CA=PA/HA;
X=0.9;
CBo=2500;//mol/m3.l
CB=CBo*(1-X);
ac=6*fs/dp;;
K=kac*ac;
//Guessing different values of CB
CB=[2500;1000;250];
e=[0.19;0.29;0.5];
for i=1:3
    Mt(i)=L*sqrt(k*CB(i)*density/De);
    rA(i)=CA/((1/kai)+(1/K)+(1/(k*density*e(i)*fs*CB(i))))
    inv_rA(i)=1/rA(i);
end
plot(CB,inv_rA)
xlabel('CB');ylabel('-1/rA')
//Reaction time is given by (Vl/b*Vr)*integral(dCB/-rA)
//Graphically integrating
Area=3460;
t=Vl*Area/(b*Vr);
t=t/60;//min
printf("\n The time required for 90 percentage conversion of reactant is %f",t)
printf("min")