//ex10.6
B_ac=100;
r_e=12;
R1=62*10^3;
R2=22*10^3;
R_S=1*10^3;
R_E=1*10^3;
C2=100*10^-6;
//Base circuit impedance= parallel combination of R1, R2, R_S
R_th=(R1*R2*R_S)/(R1*R2+R2*R_S+R_S*R1);
//Resistance looking at emitter
R_in_emitter=r_e+(R_th/B_ac);
//resistance of equivalent bypass RC is parallel combination of R_E,R_in_emitter
R=(R_in_emitter*R_E)/(R_E+R_in_emitter);
f_c=1/(2*%pi*R*C2);
disp(f_c,'critical frequency of bypass RC circuit in hertz')