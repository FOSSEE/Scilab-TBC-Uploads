//ex16.1
R1=10*10^3;
R2=R1;
R=R1;
C1=0.01*10^-6;
C2=C1;
C=C1;
R3=1*10^3;
r_ds=500;
f_r=1/(2*%pi*R*C);
disp(f_r,'resonant frequency of the  Wein-bridge oscillator in Hertz')
//closed loop gain A_v=3 to sustain oscillations
A_v=3;
//A_v=(R_f+R_i)+1 where R_i is composed of R3 and r_ds
R_f=(A_v-1)*(R3+r_ds);
disp(R_f,'value of R_f in ohms')