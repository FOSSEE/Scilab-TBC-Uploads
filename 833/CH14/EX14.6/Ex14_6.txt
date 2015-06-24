//Caption:Find (a)Synchronising power on full load (b)Synchronising torque
//Exa:14.6
clc;
clear;
close;
P=5000//Power ofan alternator(in KVA)
f=50//Frequency(in hertz)
p=6//Number of poles
V=11000//Voltageof alternator(in volts)
pf=0.8//Power factor
c=3//Mechanical degree of displacement(in degrees)
Xs=5//Synchronous reactance per phase(in ohms)
Vph=V/sqrt(3)
ns=(120*f)/p
If=(P*1000)/(sqrt(3)*V)
E=sqrt(((Vph*pf)^2)+(((Vph*sind(acosd(pf)))+(If*Xs))^2))
a=atand(((Vph*sind(acosd(pf)))+(If*Xs))/(Vph*pf))
b=a-acosd(pf)
Ps=(E*Vph*cosd(b)*sind(c))/Xs
disp(Ps,'(a)Synchronising Poweron full load(in watt/phase)=')
Ts=(Ps*3)/(2*%pi*(ns/60))
disp(Ts,'(b)Synchronising Torque(in Nm)=')