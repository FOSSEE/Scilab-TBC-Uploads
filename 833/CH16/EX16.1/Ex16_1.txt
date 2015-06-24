//Caption:Find (a)Input Current (b)Power factor (c)Input power (d)Torque due to forward revolving field (e)Torque due to backward revovlving field (f)Net torque (g)Output And (h)Efficiency
//Exa:16.1
clc;
clear;
close;
Pi=750//Power of Single phase induction motor(in Watts)
p=4//Number of poles
f=50//Frequency(in hertz)
V=230//Voltage supplied to motor(in volts)
R1=2//Resistance of stator(in ohm)
X1=2.6//Reactance of stator(in ohm)
Wf=25//Friction and winding loss(in Watts)
R2=3.8//Resistance of rotor(in ohm)
X2=2.6//Reactance of rotor(in ohm)
Xm=56//Magnetising Reactance(in ohms)
r2=1.9//Imaginary resistance of rotor(in ohm)
x2=1.3//Imaginary reactance of rotor(in ohm)
xm=28//Imaginary magnetising reactance(in ohm)
s=0.05//Slip
Z1=R1+(%i*X1)
Z2=((%i*xm)*((r2/s)+(%i*x2)))/((r2/s)+(%i*(x2+xm)))
Z3=((%i*xm)*((r2/(2-s))+(%i*x2)))/((r2/(2-s))+(%i*(x2+xm)))
Z=Z1+Z2+Z3
I=V/Z
disp(I,'(a)Input Current(in A)=')
pf=cosd(atand(imag(Z)/real(Z)))
disp(pf,'(b)Power factor=')
Wp=V*pf*sqrt(I*conj(I))
disp(Wp,'(c)Input power(in watts)=')
z2=sqrt(((r2/s)^2)+((x2)^2))
v2=sqrt(I*conj(I))*sqrt(Z2*conj(Z2))
i2=v2/z2
z3=sqrt(((r2/(2-s))^2)+((x2)^2))
v3=sqrt(I*conj(I))*sqrt(Z3*conj(Z3))
i3=v3/z3
Tf=((i2)^2)*(r2/s)
disp(Tf,'(d)Torque due to forward field(in Nm)=')
Tb=(i3^2)*(r2)/(2-s)
disp(Tb,'(e)Torque due to backward field(in Nm)=')
T=Tf-Tb
disp(T,'(f)Torque(in Nm)=')
Wo=(T*(1-s))-Wf
disp(Wo,'(g)Output(in Watts)=')
e=(Wo/Wp)*100
disp(e,'(h)Efficiency(in %)=')