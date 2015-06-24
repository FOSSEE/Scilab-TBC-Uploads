// Exa 5.12
clc;
clear;
close;
// Given data
f_c = 10;// in kHz
f_c = f_c * 10^3;// in Hz
omega_c= 2*%pi*f_c;// in rad/sec
C = 0.01;// in µF
C= C*10^-6;// in F
Ri= 10*10^3;// in Ω
n=2;
Q= 1/1.414;
R= 1/(2*%pi*f_c*C);// in Ω
Af= 3-1/Q;
Rf= (Af-1)*Ri;// in Ω
disp(C*10^6,"The value of C in µF is : ")
disp(R*10^-3,"The value of R in kΩ is : ")
disp(Rf*10^-3,"The value of Rf in kΩ is : ")
disp("Frequency versus gain magnitude shown in following table:")
disp("      Frequency in Hz                        Gain Magnitude in dB |H(s)|")
f= 1000;// in Hz
omega= 2*%pi*f;// in rad/sec
HsdB= 20*log10(Af/sqrt(1+(omega/omega_c)^4))
disp("            "+string(f)+"                                               "+string(HsdB))
f= 2000;// in Hz
omega= 2*%pi*f;// in rad/sec
HsdB= 20*log10(Af/sqrt(1+(omega/omega_c)^4))
disp("            "+string(f)+"                                               "+string(HsdB))
f= 5000;// in Hz
omega= 2*%pi*f;// in rad/sec
HsdB= 20*log10(Af/sqrt(1+(omega/omega_c)^4))
disp("            "+string(f)+"                                               "+string(HsdB))
f= 10000;// in Hz
omega= 2*%pi*f;// in rad/sec
HsdB= 20*log10(Af/sqrt(1+(omega/omega_c)^4))
disp("           "+string(f)+"                                              "+string(HsdB))
f= 50000;// in Hz
omega= 2*%pi*f;// in rad/sec
HsdB= 20*log10(Af/sqrt(1+(omega/omega_c)^4))
disp("           "+string(f)+"                                             "+string(HsdB))
f= 100000;// in Hz
omega= 2*%pi*f;// in rad/sec
HsdB= 20*log10(Af/sqrt(1+(omega/omega_c)^4))
disp("          "+string(f)+"                                           "+string(HsdB))
