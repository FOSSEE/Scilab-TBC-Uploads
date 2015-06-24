//caption:Find magnitude and phase angle of Z4 arm
//Ex4.6
clc
clear
close
Z1=200//impedance of first arm(in ohm)
Za=30//phase angle of first arm(in degree)
Z2=250//impedance of second arm(in ohm)
Zb=-40//phase angle of second arm(in degree)
Z3=150//impedane of third arm(in ohm)
Zc=0//phase angle of third arm(in degree)
Z4=(Z2*Z3)/Z1
disp(Z4,'magnitude of Z4 arm(in ohm)=')
Zd=Zb+Zc-Za
disp(Zd,'phase angle of Z4 arm(in degree)=')