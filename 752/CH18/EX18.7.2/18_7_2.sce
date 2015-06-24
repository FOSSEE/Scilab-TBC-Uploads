clc;
//page no 707
//prob no. 18.7.2
//HDTV system is given
//Refer example 18.7.1
a=16/9;D=1.40;Nh=1840;//Assuming square pixel
H=sqrt((a^2)*(D^2)/(1+a^2));
//Determination of viewing angle
theta=Nh*(1/60);
disp('degree',theta,'The viewing angle is');
//Determination of viewing dist
X=H/(2*tand(theta/2));
disp('m',X,'The viewing dist is');