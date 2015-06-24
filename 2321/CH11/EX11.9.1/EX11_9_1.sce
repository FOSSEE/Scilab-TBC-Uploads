//Example No. 11.9.1
clc;
clear;
close;
format('v',7);
fr=10;//GHz(center frequency)
fr=fr*10^9;//Hz(center frequency)
epsilon_r=10.2;//(constant)
h=0.127;//cm(height of sustrate)
c=3*10^10;//cm/s(Speed of light)
W=c/2/fr*sqrt(2/(epsilon_r+1));//cm(Physical dimension)
epsilon_reff=(epsilon_r+1)/2+(epsilon_r-1)/2*[1+12*h/W]^(-1/2);//(effective constant)
delta_L=h*0.412*(epsilon_reff+0.3)*(W/h+0.264)/[(epsilon_reff-0.258)*(W/h+0.8)];//cm(distance)
L=c/2/fr/sqrt(epsilon_reff)-2*delta_L;//cm(distance)
disp(L,W,"Design values of W & L(in cm) are :  ");
