//Caption:Find the  (a) motor speed (b) power loss in external resistance (c) efficiency
//Exa:6.4
clc;
clear;
close;
V=120
N_mfL=2400;//full load speed of motor
R_a=0.4;//armature resistance (in ohms)
R_sh=160;//shunt field winding resistance
I_fL=14.75;//current drawn at full load (in Amperes)
I_nL=2;//current drawn at no load (in Amperes)
R_x=3.6;//external resistance
I_f=V/R_sh;//feild current
I_anL=I_nL-I_f;//armature current at no load
E_anL=V-(I_anL*R_a);//no load back emf
P_dnL=E_anL*I_anL;//power developed at no load
I_afL=I_fL-I_f;//armature current at full load
E_afL=V-(I_afL*R_a);//full load back emf
P_dfL=E_afL*I_afL;//power developed at full load
N_mnL=(E_anL/E_afL)*N_mfL;//no load speed
P_in_fL=V*I_fL;//power input at full load
E_a_n=V-(I_afL*(R_a+R_x));//new back emf
P_d_n=E_a_n*I_afL;//new power developed 
N_m_n=ceil((E_a_n/E_afL)*N_mfL);
disp("After insertion of external resistance in the armature ckt");
disp(N_m_n,'(a) motor speed (in rpm)=');
P_rot_n=(N_m_n/N_mnL)*P_dnL;
P_o_n=P_d_n-P_rot_n;
P_x=(I_afL^2)*R_x;
disp(P_x,'(b) power loss in external resistance (in Watts)=');
Eff=P_o_n/P_in_fL;
disp(Eff*100,'(c) efficiency (%)=');