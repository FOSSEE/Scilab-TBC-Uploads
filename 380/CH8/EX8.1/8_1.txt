//Caption:Find the generated voltage and efficiency of motor
//Exa:8.1
clc;
clear;
close;
R_s=(%i)*5;//synchronous reactance of motor
P_o=10*746;//power output (in Watts)
P_rot=230;//rotational loss (in Watts)
P_d=P_o+P_rot;//power developed (in Watts)
V=230;//in volts
V_a=V/sqrt(3);//rms value of per phase voltage
P_fw=70;//feild winding loss
pf=0.707;//power factor (leading)
theta=acosd(pf);
I_ao=P_d/(pf*V*sqrt(3));
P_in=P_d+P_fw;
Eff=(P_o/P_in)*100;
disp(Eff,'efficiency (%)=');
I_a=I_ao*(cosd(theta)+(%i)*sind(theta));
E_a=V_a-(I_a*R_s);
disp(abs(E_a),'magnitude of generated voltage (in Volts)=');
disp(atand(imag(E_a)/real(E_a)),'Phase angle of generated voltage (in Degree)=');