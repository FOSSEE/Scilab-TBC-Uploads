//Example 8 //  Velocity of sound
clc;
clear;
close;
//given data :
lamda1=1;// in m
lamda2=1.01;// in m
a=10/3;// in beats/sec
v=a/((lamda2-lamda1)/(lamda1*lamda2));
disp(v,"The velocity of sound,v(m/s) = ")
