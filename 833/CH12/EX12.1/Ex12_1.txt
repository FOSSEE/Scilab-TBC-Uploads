//Caption:Calculate (a)No load power factor (b)Core and friction loss (c)r_m (d)power factor on short circuit (e)Equivalent impedance in series circuit (f)Rotor resistance referred to stator (g)Stator leakage reactance (h)Rotor leakage reactance referred to stator
//Exa:12.1
clc;
clear;
close;
P=3000//Power of motor(in watt)
V=415//Voltage supplied(in volts)
f=50//Frequency(in hertz)
p=6//Number of poles
pf=0.8//Power factor
I_n=3.5//No load current(in A)
P_n=250//Power input on no load test(in watt)
r_s=1.5//Stator resistance per phase(in ohm)
V_r=115//Reduced voltage applied at short circuit test(in volts)
I_s=13//Current supplied on short circuit test(in A)
P_s=1660//Voltage applied at short circuit test(in watt)
pfn=P_n/(sqrt(3)*V*I_n)
disp(pfn,'(a)Noload power factor=')
P_wf=P_n-(3*(I_n^2)*r_s)
disp(P_wf,'(b)Core and friction loss(in watt)=')
r_m=(V/sqrt(3))/(I_n*pfn)
disp(r_m,'(c)Resistance(in ohms)=')
pfs=P_s/(sqrt(3)*V_r*I_s)
disp(pfs,'(d)Power factor on short circuit=')
Ze=(V/sqrt(3))/((I_s*V)/V_r)
disp(Ze,'(e)Equivalent impedance in series circuit(in ohms)=')
R=(Ze*pfs)-r_s
disp(R,'(f)Rotor resistance referred to stator(in ohm)=')
X=(sqrt((Ze^2)-((Ze*pfs)^2)))
disp(X,'(g)Stator leakage reactance(in ohms)=')
x=X/2
disp(x,'(h)Rotor leakage reactance referred to stator(in ohms)=')