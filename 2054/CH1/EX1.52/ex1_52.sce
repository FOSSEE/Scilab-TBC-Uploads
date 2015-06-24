//Exa:1.52
clc;
clear;
close;
theta_1=50;//in degree Celcius
theta_F=80;//in degree celcius
t=0.75;//in hours
theta=theta_F*(1-exp(-1/t));
disp(theta_F,'Temperature rise after 1 hour (in degree celcius)=');
theta_f=theta_F/(1-exp(-1/t));
disp(theta_f,'Steady state temperature rise at 1 hour rating (in degree celcius)=');
T=-t*log(1-(theta_1/theta_f));
disp(60-T*60,'Time taken to increase temperature from 50 to 80 degree celcius (in minutes)=');