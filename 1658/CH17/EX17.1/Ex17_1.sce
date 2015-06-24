clc;
//e.g 17.1
RL=100;
Vm=300;
//load power P= Vdc*Idc
a=(Vm/(2*%pi))^2*(1/RL);
disp(a);
p=25;
//1+cosb=sgrt(25/a)
b=a*1+cos(sqrt(p/a));
cosalpha=(sqrt(p/a))-1;
disp(cosalpha);
p=80;
cosalpha=(sqrt(p/a))-1;
disp(cosalpha,"cosalpha=");
//or;
alpha=acosd(cosalpha);
disp('degree',alpha,"alpha=");
