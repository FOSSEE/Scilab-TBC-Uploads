//ex16.2
A_cl=29;    //A_cl=R_f/R_i;
R3=10*10^3;
R_f=A_cl*R3;
disp(R_f,'value of R_f in ohms')
//let R1=R2=R3=R and C1=C2=C3=C
R=R3;
C3=0.001*10^-6;
C=C3;
f_r=1/(2*%pi*sqrt(6)*R*C);
disp(f_r,'frequency of oscillation in Hertz')