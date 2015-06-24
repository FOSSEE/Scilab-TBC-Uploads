//Caption:Find (a)frequency (b)Phase e.m.f (c)Line e.m.f
//Exa:13.5
clc;
clear;
close;
ph=3//Number of phases 
p=16//Number of poles
sl=144//Number of slots
cs=10//Number of conductors per slot
B=0.04//Flux per pole(in wb)
n=375//Speed of alternator(in r.p.m)
C_s=160//Coil Span(in degrees)
f=(p*n)/120
disp(f,'(a)Frequency(in hertz)=')
ct=(sl*cs)/2
nt=ct/ph
m=sl/(p*ph)
P_p=sl/p
theta=180/P_p
k_b=sind(m*(theta/2))/(m*sind(theta/2))
k_p=cosd(theta/2)
E_ph=4.44*B*f*nt*k_b*k_p
disp(E_ph,'(b)Phase e.m.f(in volts)=')
E_l=sqrt(3)*E_ph
disp(E_l,'(c)Line e.m.f(in volts)=')