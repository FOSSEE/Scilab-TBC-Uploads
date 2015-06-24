//Caption:Calculate the torque
//Exam:2.28
clc;
clear;
close;
P_1=70;//power transmitted by the shaft of a motor in H.P(metric)
P_2=P_1*735.5;//power (in Watts)
N=500;//speed of the motor(in rpm)
w=2*3.1416*N/60;//angular speed (in radian/sec)
T=P_2/w;//torque in motor (in Nw-m)
disp(T,'torque in motor (in Nw-m)=');