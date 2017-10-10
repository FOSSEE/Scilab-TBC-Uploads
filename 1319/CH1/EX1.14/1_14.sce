//Series Resonance in RLC circuit to find inductance and power

clc;
clear;

R=5;
C=50*(10^-6);
f0=100;
w=2*%pi*f0;

L=1/(C*(w^2));

V=200;
Xc=1/(C*w);
Xl=L*w;

I=V/R;

P=(I^2)*R;

Vc=I*Xc;

Zc=R+(Xl*%i);

Vz=I*(Zc);

Q0=Xl/R;

bw=f0/Q0;

printf('a) The inductance of the coil = %f mH \n',(10^3)*L)
printf('b) The power delivered to the coil = %f kW \n',(10^-3)*P)
printf('c) The voltage magnitude across the capacitor = %f V \n The voltage magnitude of the coil = %f V \n',Vc,abs(Vz)) // Magnitudes with at most accuracy
printf('d) The bandwidth of the circuit = %f \n',bw)

