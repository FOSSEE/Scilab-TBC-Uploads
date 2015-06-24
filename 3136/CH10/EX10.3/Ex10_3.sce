clear all; clc;
D=3
dn=0.08
H=350
En=0.82
CVb=0.95
Em=0.90
Ev=0.96
g=9.8

V2=(2*En*g*H)^0.5
printf(" The jet flow velocity is equal to %0.0f m/s",V2)

Um=0.5*V2
printf("\n Optimum wheel tangential velocity is Um is equal to %0.1f m/s",Um)

N=(60*Um)/(%pi*D)
printf("\n The rotating speed N is equal to %0.1f rpm",N)

disp("Under the maximum utilization factor condition,we have beta3=90 degrees")
disp(" Since delta Emax=(1+CVb)*U(V2-U),we get the equation delta Emax=1.95*(U^2)")
delta_E_max=(1+CVb)*Um*(V2-Um)
printf(" The value of deltaEmax is equal to %g N-m/kg",delta_E_max)

An=(%pi/4)*(dn^2)
Q=V2*An
printf("\n The flow rate is %0.3f m^3/s",Q)

m=998*Q
Ps=Em*Ev*m*delta_E_max/1000
printf("\n The total shaft power output is %0.1f kW",Ps)

Ns=(N*(Q^0.5))/(H^0.75)
printf("\n The specific speed can be calculated as %0.2f rpm((m^3/s)^0.5)/(m^0.75)",Ns)

omega=%pi*N/30
omega_s=omega*(Q^0.5)/((g*H)^0.75)
printf("\n In non dimensional form , omegas is equal to %0.3f",omega_s)















