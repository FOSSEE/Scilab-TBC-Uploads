//determine the total head of the pump
// ex 9.2  page no 215
clc;
q=37.5e-3*4 // water flow rate
A=3.14*0.15^2// area  of suction in 15cm in meter
V=q/A
printf("velocity at the suction Q/As=  %2.2f m/s",V)
Ad=3.14*0.125^2 // area of suction in 12.5cm
Vd=q/Ad
printf("\n  velocity at the discharge side Q/Ad=  %2.2f m/s",Vd)
ps=54e3
gamma1=9800// constant gamma
g=9.8
vs=2 // velocity of suction
pd=160e3 // power density
vd=3 // velocity of discharge side
H=((ps/gamma1)+(vs^2/(2*g)))+((pd/gamma1)+(vd^2/(2*g)))
disp(H)
