//Example 8.12.6;Torque speed charaterstics
clc;
clear;
close;
format('v',7)
//given data :
v=230;//in volts
vm=sqrt(2)*v;//in clts
Ka=1;
QR=1;//
ra=0.05;//
alpha=30;//in degree
y=(60/(2*%pi));//
z=((vm/%pi)*(1+cosd(alpha)));//
x=(ra/(0.5)^2)
for i=1:8
    wm(i)= (z-(i)*x)*y;//
end
wm=[(y*z);wm(1);wm(2);wm(3);wm(4);wm(5);wm(6);wm(7);wm(8)]
disp(wm,"varoius values of speed in RPM is")
T=[0;1;2;3;4;5;6;7;8];
plot2d(T,wm)
xlabel("Torque ,N-m")
ylabel("Speed (rpm)  for alpha=30 degree")
