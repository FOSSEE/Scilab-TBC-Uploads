//Example 2.14//unknown resistance
clc;
clear;
Z1=50//impedance of first arm(in ohm)
Za=80//phase angle of first arm(in degree)
Z2=125//impedance of second arm(in ohm)
Z3=200//impedane of third arm(in ohm)
Zc=30//phase angle of third arm(in degree)
Z4=(Z2*Z3)/Z1
disp(Z4,'magnitude of Z4 arm(in ohm)=')
Zd=Zc-Za
disp(Zd,'phase angle of Z4 arm(in degree)=')
