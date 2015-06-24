//Initilization of variables
w=(2*%pi*120)/60 //rad/s
l=24 //in
l_c=4 //in
th=30 //degrees
//Calculations
v=(l_c/12)*w //ft/s
betaa=asind((l_c*sind(th))/l) //degrees
theta=60-betaa //degrees
//Component of velocity along connecting rod is 
v1=v*cosd(theta) //ft/s
v_p=v1/cosd(betaa) //ft/s
//Result
clc
printf('The absoulte velocity is %fft/s',v_p) 
