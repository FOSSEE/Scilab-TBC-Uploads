//Determine percentage rise in voltage
clear;
clc;
//soltion
//given
f=50;//Hz//frequency
w=2*%pi*f;
l=200;//km//length
RiV=((w^2)*(l^2)*10^-8)/18;
printf("Rise in voltage= %.2f percent",RiV);
