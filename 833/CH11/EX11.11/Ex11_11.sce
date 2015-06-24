//Caption:Find (a)Equivalent rotor current per phase (b)Stator current per phase (c)Power factor (d)Rotor input (e)Rotor copper losses (f)Torque (g)Mechanical power output from rotor (h)Stator input (i)Efficiency 
//Exa:11.11
clc;
clear;
close;
V=440//Voltage supplied(in volts)
p=8//Number of poles
f=50//Frequency(in hertz)
r1=0.2//Stator resistance(in ohm)
x1=1.2//Stator reactance(in ohm)
r2=0.3//Equivalent resistance of rotor referred to stator(in ohm)
x2=1.2//Equivalent reactance of rotor referred to stator(in ohm)
r_m=150//Magnetising resistance(in ohms)
x_m=18//Magnetising reactance(in ohms)
P_wf=750//Winding and friction losses(in watt)
s=0.04//Slip
n_s=(f*120)/(p*60)
y1=1/r_m
y2=1/(%i*x_m)
y3=1/((r2/s)+(%i*x2))
Y=y1+y2+y3
Z=1/Y
Z_t=Z+(r1+(%i*x1))
E=V*Z/(Z_t)
z3=1/y3
i2=E/z3
disp(i2,'(a)Rotor current per phase(in A)=')
i1=V/Z_t
disp(i1,'(b)Stator current per phase(in A)=')
pf=cosd(atand(-(imag(Z_t))/real(Z_t)))
disp(pf,'(c)Power factor=')
P_r=(i2*(conj(i2)))*(r2/s)
disp(P_r,'(d)Rotor input(in watt)=')
P_rc=(i2*(conj(i2)))*r2
disp(P_rc,'(e)Rotor copper loss(in watt)=')
T=3*P_r/(2*%pi*n_s)
disp(T,'(f)Torque(in N-m)=')
P_me=P_r-P_rc-(P_wf/3)
disp(P_me,'(g)Mechanical output from rotor(in watts per phase)=')
P_st=V*(sqrt(i1*(conj(i1))))*pf
disp(P_st,'(h)Stator input(watts per phase)=')
eff=(P_me/P_st)*100
disp(eff,'(i)Efficiency(in %)=')