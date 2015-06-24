//Exa:1.57
clc;
clear;
close;
P_1=100;//in KWs
P_2=50;//in KWs
t_1=10;//in minutes
t_2=8;//in minutes
t_3=5;//in minutes
t_4=4;//in minutes
P=sqrt(((t_1*P_1^2)+(t_2*P_2^2))/(t_1+t_2+t_3+t_4));
disp(P,'Rating Of Continuously Rated Motor (in KWs)=');
disp('Adequate rating of motor=70 Kws');