//Caption:Find (a)Equivalent rotor current per phase (b)Stator current per phase (c)Power factor (d)Rotor input (e)Rotor copper losses (f)Torque (g)Mechanical power output from rotor (h)Stator input (i)Efficiency.Solve it by APPROXIMATE equivalent circuit method 
//Exa:11.12
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
I2=V/((r1+(r2/s))+(%i*x1)+(%i*x2))
disp(I2,'(a)Equivalent rotor current per phase(in A)=')
y1=1/r_m
y2=1/(%i*x_m)
I_o=V*(y1+y2)
I_1=I2+I_o
disp(I_1,'(b)Stator current per phase(in A)=')
pf=cosd(atand(imag(I_1)/real(I_1)))
disp(pf,'(c)Power factor=')
P_r=(I2*conj(I2))*(r2/s)
disp(P_r,'(d)Rotor input(in watt)=')
P_rc=(I2*conj(I2))*r2
disp(P_rc,'(e)Rotor copper losses(in watts)=')
T=P_r/(2*%pi*((f*120)/(p*60)))
disp(T,'(f)Torque(in N-m)=')
P_me=P_r-P_rc-(P_wf/3)
disp(P_me,'(g)Mechanical power output from rotor(in watts per phase)=')
P_si=V*pf*(sqrt(I_1*conj(I_1)))
disp(P_si,'(h)Stator input(in watts per phase)=')
e=(P_me/P_si)*100
disp(e,'(i)Efficiency (in %)=')