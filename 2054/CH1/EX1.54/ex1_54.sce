//Exa:1.54
clc;
clear;
close;
theta_1=20;//in degree celcius
theta_2=30;//in degree celcius
t_1=30;//in minutes
t_2=60;//in minutes
t=-(t_2-t_1)/log((theta_2/theta_1)-1);//in minutes
theta_F=theta_1/(1-exp(-t_1/t));
disp(t,'Heating Time Contant (in minutes)=');
disp(theta_F,'Final Temperature Rise (in Degree Celcius)=');