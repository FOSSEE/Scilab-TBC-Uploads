// Exa 7.16
clc;
clear;
close;
format('v',6)
// GIven data
g_m = 2*10^-3;// in A/V
r_d = 10;// in k ohm
r_d = r_d * 10^3;// in ohm
R_D = 50;// in k ohm
R_D = R_D * 10^3;// in ohm
R_L = 50;// in k ohm
R_L = R_L * 10^3;// in ohm
f = 1;// in kHz
f = f * 10^3;// in Hz
C = 2;// in nF
C = C * 10^-9;// in F
omega= 2*%pi*f;// in radian/sec
R = (r_d*R_D*R_L)/( (r_d*R_D)+(R_D*R_L)+(R_L*r_d) );// in ohm
// The voltage gain,
Av = -g_m*R;
disp(Av,"Part (a) : The voltage gain is");
// Part (b) For small value of Cb, 
Av = -g_m*( (r_d*R_D)/(r_d+R_D) );
Ro = (r_d*R_D)/(r_d+R_D);// in ohm
X_C = 1/(omega*C);// in ohm
Av= abs(Av)*R_L/(-%i*X_C+Ro+R_L);
Mag_Av= abs(Av);// magnitude of voltage gain
Phase_Av= atand(imag(Av),real(Av));// phase angle of voltage gain in °
disp(Mag_Av,"Part (b) : Magnitude of voltage gain is : ");
disp(Phase_Av,"The phase angle of voltage gain in degree is: ")
