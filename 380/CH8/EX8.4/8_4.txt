//Caption:Find (a)excitation voltage (b)power developed due to feild excitation (c)power developed due to saliency of motor (d)total power developed (e)efficiency (f)max power
//Exa:8.4
clc;
clear;
close;
pf=0.8;//lagging
theta=-acosd(pf);
V_a=120;//in V
X_d=2.7;//d-axis reactance (in ohms/phase)
X_q=1.7;//q-axis reactances (in ohms/phase)
I_a=40*(cosd(-36.87)+%i*sind(-36.87));//in Amperes
E_a_dash=V_a-%i*(I_a*X_q);//in Volts
delta=atand(imag(E_a_dash)/real(E_a_dash));//in degree
alpha=polar(theta-delta);//in degree
I_d=abs(I_a)*sind(alpha)*(cosd(-34.48-90)+%i*sind(-34.48-90));
E_a=E_a_dash-%i*I_d*(X_d-X_q);
disp(abs(E_a),'(a) per-phase excitation voltage(in Volts)=');
disp(atand(imag(E_a)/real(E_a)),'phase angle of excitation voltage (in degree)=');
P_df=(3*V_a*abs(E_a)*sind(34.48))/X_d;
disp(P_df,'(b) power developed due to feild excitation(in Watts)=');
P_ds=((X_d-X_q)*sind(2*34.48)*3*V_a^2)/(2*X_d*X_q);
disp(P_ds,'(c) power developed due to saliency of motor (in Watts)=');
P_d=P_df+P_ds;
disp(P_d,'(d) total power developed (in Watts)=');
P_r=0.05*P_d;//rotational loss (in Watts)
P_in=3*real(V_a*conj(I_a));//power input (in Watts)
P_o=P_in-P_r;//power output (in Watts)
Eff=(P_o/P_in)*100;
disp(Eff,'(e) Efficiency (in %)=');
//refer to eqn 8.24
A=(3*120*abs(E_a))/X_d;
B=3*(X_d-X_q)*120^2/(2*X_d*X_q);
P_dm=A*sind(63.4)+B*sind(2*63.4);
disp(P_dm,'(f) maximum power developed (in Watts)=');