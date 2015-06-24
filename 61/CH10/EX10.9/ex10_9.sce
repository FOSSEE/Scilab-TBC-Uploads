//ex10.9
B_ac=100;
r_e=16;
R1=62*10^3;
R2=22*10^3;
R_S=600;
R_E=1*10^3;
R_C=2.2*10^3;
R_L=10*10^3;
C1=0.1*10^-6;
C2=10*10^-6;
C3=0.1*10^-6;
//input RC circuit
R_in=(B_ac*r_e*R1*R2)/(B_ac*r_e*R1+B_ac*r_e*R2+R1*R2);
f_c_input=1/(2*%pi*(R_S+R_in)*C1);
disp(f_c_input,'input frequency in hertz')
//For bypass circuit; Base circuit impedance= parallel combination of R1, R2, R_S
R_th=(R1*R2*R_S)/(R1*R2+R2*R_S+R_S*R1);
//Resistance looking at emitter
R_in_emitter=r_e+(R_th/B_ac);
//resistance of equivalent bypass RC is parallel combination of R_E,R_in_emitter
R=(R_in_emitter*R_E)/(R_E+R_in_emitter);
f_c_bypass=1/(2*%pi*R*C2);
disp(f_c_bypass,'critical frequency of bypass RC circuit in hertz')
f_c_output=1/(2*%pi*(R_C+R_L)*C3)
disp(f_c_output,'output frequency circuit in hertz')
R_c=R_C*R_L/(R_C+R_L);
A_v_mid=R_c/r_e;
attenuation=R_in/(R_in+R_S);
A_v=attenuation*A_v_mid;    //overall voltage gain
A_v_mid_dB=20*log10(A_v);    
disp(A_v_mid_dB,'overall voltage gain in dB')