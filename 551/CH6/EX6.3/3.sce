clc
m=8; //kg
T1=650; //K
p1=5.5*10^5; //Pa
p0=1*10^5; //Pa
T0=300; //K
cp=1.005; //kJ/kg.K
cv=0.718;
R=0.287;
//p1*v1/T1=p0*v0/T0
//Let r=v1/v0=1/2.54
r=1/2.54;


disp("(i) Change in available energy(for bringing the system to dead state)=")
ds=cv*log(T1/T0) + R*log(r);
dAE=m*[cv*(T1-T0) - T0*[ds]];
//dAE is the change in available energy in kJ

V1=m*R*10^3*T1/p1;
V0=V1/r;
disp("Loss of availability, L=")
L=p0*(V0 - V1)/10^3;
disp(L)
disp("kJ")


disp("(ii) Available Energy and Effectiveness")
Q=m*cp*(T1-T0);
ds=m*cp*log(T1/T0);
Unavailable_energy=T0*ds;
Available_energy = Q - Unavailable_energy;
disp("Available energy = ")
disp(Available_energy)
disp("kJ")

Effectiveness=Available_energy/dAE;
disp("Effectiveness = ")
disp(Effectiveness)
