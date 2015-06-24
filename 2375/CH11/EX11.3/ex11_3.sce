// Exa 11.3
clc;
clear;
close;
format('v',5)
// Given data
f = 5;// in kHz
f = f * 10^3;// in Hz
miu = 55;
r_d = 5.5;// in k ohm
r_d = r_d * 10^3;// in ohm
A= 29;
// abs(A) = g_m*R_L = (g_m*r_d*R_D)/(r_d+R_D) = (miu*R_D)/(r_d+R_D);
// miu*R_D = abs(A)*(r_d+R_D);
R_D = (abs(A)*r_d)/(miu-A);// in ohm  
R_D= R_D*10^-3;// in k ohm
disp(R_D,"Minimum value of R_D in  k ohm is");
R_D= R_D*10^3;// in ohm
Alpha = sqrt(6);
// Alpha = 1/(2*%pi*f*R_C);
RC = 1/(2*%pi*f*Alpha);// in sec
RC= round(RC*10^6);// in µsec
disp(RC,"The value of RC in µsec is");
RC= RC*10^-6;// in sec
R_L = (r_d*R_D)/(r_d+R_D);// in ohm
R = 30*10^3;// in ohm
C = RC/R;// in F
C = C * 10^12;// in pF 
R= R*10^-3;// in k ohm
disp(R,"The value of R in k ohm is");
disp(C,"The value of C in pF is");
