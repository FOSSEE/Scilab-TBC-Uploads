// Exa 5.8
clc;
clear;
close;
// Given data
f_c = 1.5;// in kHz
f_c = f_c * 10^3;// in Hz
alpha = sqrt(2);
R_F = (2-alpha);// in ohm
disp(R_F,"The value of R_F in Ω is : ");
R_i = 1;// in ohm
A_F = 1+(R_F/R_i);
disp(A_F,"The pass band gain is");
Omega_c = 2*%pi*f_c;// in rad/sec
C = 1;// in F
R = 1/Omega_c;// in ohm
R = R * 10^7;// in ohm
R=R*10^-3;// in kohm
R1 = R;// in k ohm
R2=R1;// in kohm
disp(R1,"The value of R1 and R2 in kΩ is");
C = C/10^7;// in µF
C = C * 10^9;// in nF
C1=C;// in nF
C2= C1;// in nF
disp(C1,"The value of C1 and C2 in nF is");

//Note: The unit of R1 and R2 is wrong in the book
