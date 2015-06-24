//Caption:Find (a) Power factor on no load (b) active current (c) magnetising current (d) copper loss in the primary winding (e) core loss
//Exa:1.2
clc;
clear;
close;
V_1=3300//Primary voltage (in volt)
V_2=240//Secondary voltage (in volt)
I_0=2//No load current (in A)
P=60//Power (in watt)
R=0.8//Resistance of the low voltage winding (in ohm)
Pf=P/(V_2*I_0)
disp(Pf,'(a)Power factor on no load=')
I_c=I_0*Pf
disp(I_c,'(b)Active current(in A)=')
theta=(acosd(Pf))
I_m=I_0*sin(theta)
disp(I_m,'(c)magnetising current is(in A)=')
Culoss=(I_0^2)*R
disp(Culoss,'(d)copper loss in the primary winding is(in watt)=')
Coreloss=P-Culoss
disp(Coreloss,'(e)core loss(in watt)=')