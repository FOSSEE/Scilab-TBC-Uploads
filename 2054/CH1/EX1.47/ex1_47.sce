//Exa:1.47
clc;
clear;
close;
theta_1=20;//in degree celcius
theta_2=34;//in degree celcius
t=-1/log((theta_2/theta_1)-1);//in hours
disp(t,'Heating time constant (in hours)=');
theta_F=theta_1/(1-exp(-1/t));
disp(theta_F,'Final steady temperature rise (in degree celcius)=');
theta_f=theta_F/(1-exp(-1/t));
x=sqrt(2*(theta_f/theta_F)-1);
disp('one hour rating of motor is');
disp(x,'times full load rating');