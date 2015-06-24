//Caption:Find (a)armature current at rated load (b)efficiency at full load (c)no. of turns per pole (d) new speed of motor and driving torque when armature current reduces to 16.67A
//Exa:6.1
clc;
clear;
close;
P_o=10*746;//output power (in Watts)
V_s=220;
P_rot=1040;//rotational loss (in Watts)
R_a=0.75;//armature resistance (in ohms)
R_s=0.25;//series winding resistance (in ohms)
N_m= 1200;//(in rpm)
P_d=P_o+P_rot;
function y=root (a,b,c);
    y=((-b)-sqrt((b^2)-(4*a*c)))/(2*a);
endfunction;
I_a=root(1,-220,8500);
disp(I_a,'(a) armature current at rated load (in Amperes)=');
P_in=V_s*I_a;
disp((P_o/P_in)*100,'(b) Efficiency at full load (%)=');
N_s=150/I_a;
disp(N_s,'(c) no. of turns per pole=');
I_an=16.67;
E_an=V_s-(I_an*(R_a+R_s));
N_mn=(E_an*N_m)/90;
disp(int (N_mn),'(d) new speed of motor (in rpm)=');
T_dn=(E_an*I_an)/283.9;
disp(T_dn,'driving torque (in Newton-meter)=');