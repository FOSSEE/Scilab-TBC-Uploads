//Caption:Calculate H.P. is being transmitted by the shaft of motor
//Exam:2.27
clc;
clear;
close;
V=220;//supply voltage(in V)
N=900;//running speed of a shunt motor(in rpm)
T=1000;//torque exerted by motor (in Nw-m)
w=2*3.14159*N/60;//angular speed(in rad/sec)
P=w*T;//power transmitted (in Watt)
H_p=P/735.5;//power transmitted in H.P.(metric)
disp(H_p,'power transmitted by the shaft of motor(in H.P.(metric))=');