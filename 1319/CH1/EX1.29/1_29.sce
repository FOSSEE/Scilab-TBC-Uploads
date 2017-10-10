// To determine the parameters of an alternating current of 50Hz frequency

clc;
clear;

f=50;
Im=20;
w=2*%pi*f;
t=1/100;
It=10;
Irms=Im/(sqrt(2));
Iav=0;//Full Cycle
t10=asin(It/Im)/w;// time taken to rach 10A

Ih=Im*sin(w*t);// Current at 1/100 sec

printf('i) The general ecpression is i(t) = %g sin %gt\n',Im,w)
printf('ii) The instantaneous value at t= 1/100 sec is %g A\n',floor(Ih*10)/10)
printf('iii) The time taken to reach 10A for the first time = %g s\n',t10)
printf('iv) The average and the rms value of current is %g A and %g A respectively\n',Iav,Irms) 
