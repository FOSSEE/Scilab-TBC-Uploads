//Caption:Find (a)induced emf at full load (b)power developed (c)torque developed (d)applied torque (e)efficiency (f)external resistance in feild winding (g)voltage regulation 
//Exa:5.5
clc;
clear;
close;
N_m=600;//speed of rotor (in rpm)
R_a=0.01;//armature resistance (in ohms)
R_fw=30;//feild winding resistance(in ohms)
V_f=120;// voltage of external source (in volts)
N_f=500;//no. of turns per pole
P_r=10000;//in watts
V_t=240;//terminal voltage (in volts)
P_o=240*10^3;//rated power (in watts)
I_L=P_o/V_t;//load current
I_a=I_L;//armature current
E_afl=V_t+(I_a*R_a);//refer to eqn:5.27
disp(E_afl,'(a) induced emf at full load (in Volts)=');
P_d=E_afl*I_a;
disp(P_d,'(b) power developed (in watts)=');
W_m=(2*%pi*N_m)/60;//angular velocity (Refer to Eqn:5.5&5.6)
T_d=P_d/W_m;
disp(T_d,'(c) torque developed (in Newton-meter)=');
P_inm=P_d+P_r;//mechanical power input
T_s=P_inm/W_m;
disp(T_s,'(d) Applied torque (in Newton-meter)=');
//Refer fig:5.21 (magnetization curve)
I_f=2.5;//effective feild current
mmf=(2.5*N_f)+(0.25*I_a);//total  mmf
I_fa=mmf/N_f;//actual feild current
P_in=P_inm+(V_f*I_fa);//total power input
Eff=(P_o/P_in)*100;
disp(Eff,'(e) efficiency (%)=');
R_f=V_f/I_fa;
R_fx=R_f-R_fw;
disp(R_fx,'(f) external resistance in feild winding (in ohms)=');
VR=((266-V_t)/V_t)*100;//Refer to fig:5.21
disp(VR,'(g) voltage regulation (%)=');