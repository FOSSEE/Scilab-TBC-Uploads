clc;
//page no 706
//prob no. 18.7.1
//refer example 18.3.1
a=4/3;//aspect ratio
D=48.26*10^-2;//CRT tube diagonal
Nh=647;
H=sqrt((a^2)*(D^2)/(1+a^2));
//Determination of viewing angle & minimum dist. 
w=H/Nh;
theta=Nh*(1/60);//As each pixel subtend 1 minute of arc
disp('degree',theta,'The viewing angle is');
X=H/(2*tand(theta/2));
disp('m',X,'The min. viewing dist is');