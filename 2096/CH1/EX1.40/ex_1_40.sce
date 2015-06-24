//Example 1.40://output amlitude,output frequency and phase lag
clc;
clear;
f=0.6;//frequency in hertz
w=2*%pi*f;//frequency in rad/s
t=1;//
I1=sin(w*t);//current
r= ((8/((%i*w)^2+(4*%i*w)+20)));//ratio of out put current to input current
rm=sqrt(0.724^2+1.885^2);//magnitude
rp=atand(1.885/0.724);//pahse lag
Mo= 1/rm;//magnitude of output
disp(w,"output frequency in rad/s")
disp(Mo,"magnitude of amplitude is")
disp(rp,"pahse lag in degree is")
