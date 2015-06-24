//Caption:Find (a)Starting current (b)Starting torque
//Exa:12.2
clc;
clear;
close;
P=3000//Power of motor(in watt)
V=415//Voltage supplied(in volts)
f=50//Frequency(in hertz)
p=6//Number of poles
pf=0.8//Power factor
pfs=0.64//Power factor on short circuit
pfn=0.1//No load power factor
I_n=3.5//No load current(in A)
P_n=250//Power input on no load test(in watt)
r_s=1.5//Stator resistance per phase(in ohm)
V_r=115//Reduced voltage applied at short circuit test(in volts)
I_s=13//Current supplied on short circuit test(in A)
P_s=1660//Voltage applied at short circuit test(in watt)
n_s=1000//Synchronous speed(in r.p.m)
R2=1.77//Rotor resistance referred to stator(in ohms)
I_st=I_s*V/(V_r)
disp(I_st,'(a)Starting current(in A)=')
I_i=I_st*(cosd(pfs)+(%i*(sind(pfs))))
I_o=I_n*(cosd(pfn)+(%i*(sind(pfn))))
I_2=I_i-I_o
P_ri=3*(I_2*conj(I_2))*R2
T=P_ri/(2*%pi*(n_s/60))
disp(T,'(b)Starting torque(in N-m)=')