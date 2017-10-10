//V = Vmax*sin(omega*t) i = imax*sin(omega*t-phi)
close();
clear;
clc;
Vmax = 155.6;
omega = 377;//Deg
imax = 7.07;
phi = 36.87;
f = omega/(2*%pi);
T = 1/f;
phase_angle = phi*%pi/180;
mprintf('frequency f = %0.0f Hz\nT = %0.4f s \nphase angle betwwen v and i = %0.2f rad',f,T,phase_angle);