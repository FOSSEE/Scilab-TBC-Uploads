clear all; clc;
disp("Ex 19_1")
a=8//rad/sec
b=0.25//m
v_G_disk=a*b
printf('\n\nSince the disk is rotating about a fixed axis through point B then v_g = %0.0f m/s',v_G_disk)
m=10//kg
H_G=0.5*m*b^2*a
printf('\n\n(clockwise)+H_G = %0.2f kgm^2/s',H_G)
H_B=H_G+m*v_G*b
printf('\n\n(clockwise)+H_B = %0.2f kgm^2/s',H_B)
disp(" ")
disp("I_B=(3/2)*m*r^2")
H_B_new=(3/2)*m*b^2*a
printf('\n\n(clockwise)+H_B = %0.2f kgm^2/s',H_B_new)
disp(" ")
disp("The bar undergoes General Plane Motion")
//Refer figure 19-c
c=3.464//m
w=v_G_disk/c
printf('\n\nw = %0.4f rad/s',w)
v_G_bar=w*v_G
printf('\n\nFor the bar :-  v_G = %0.3f m/s',v_G_bar)
H_G_new=(1/12)*5*4^2*w
printf('\n\nFor the bar :-  (clockwise)+H_G = %0.2f kgm^2/s',H_G_new)
//Moments of I_Gw and m.v_G about the IC yield
H_IC=H_G_new+2*5*v_G_bar
printf('\n\n(clockwise)+H_IC = %0.1f kgm^2/s',H_IC)
