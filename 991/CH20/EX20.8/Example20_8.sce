//Example 20.8.
clc
format(5)
disp("1.  Given: fL = 1 kHz")
disp("2.  Since R and C values are not given, let assume C = 0.01 uF")
r=1/(2*%pi*(10^3)*(0.01*10^-6))
x1=r*10^-3  // in k-ohm
disp(x1,"3.  Therefore, R(k-ohm) = 1 / 2*pi*fL*C =")
disp("4.  Given pass band gain A = 1 + Rf/Ri = 2 i.e. the value of Rf = Ri")
disp("Let Rf = Ri = 10 k-ohm. The high pass circuit values are shown in Fig.20.31")