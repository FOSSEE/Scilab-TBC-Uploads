//Exa:1.56
clc;
clear;
close;
theta_1=20;//in degree celcius
theta_2=35;//in degree celcius
t_1=1/2;//in hours
t_2=1;//in hours
t=-(t_2-t_1)/log((theta_2/theta_1)-1);//in minutes
theta_F=theta_1/(1-exp(-t_1/t));
theta=theta_F*(1-exp(-2/t));
disp(theta,'Temperature Rise After 2 hrs (in Degree Celcius)=');
theta_F1=theta_F*0.8;//in Degree Celcius
t_o=0.8*t;//in hours
theta_o=theta_F1*(1-exp(-1/t_o));
disp(theta_o,'Temperature Rise from cold After 1 hr at full load (in Degree Celcius)=');