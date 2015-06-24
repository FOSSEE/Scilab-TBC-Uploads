//Exa:1.12
clc;
clear;
close;
P=4;//no. of poles
f=50;//in hertz
N_s=120*f/P;//in rpm
V=400/sqrt(3);//in volts
R2=4;//in ohms
R1=1.5;//in ohms
X1=4;//in ohms
X2=4;//in ohms
N=1350;//in rpm
s=(N_s-N)/N_s;//slip
T=(3*V^2*4/s)/((((R1+(R2/s))^2)+((X1+X2)^2))*(2*%pi*N_s/60));//in newton-meter
N1=900;//in rpm
s1=(N_s-N1)/N_s;//slip
T1=T*(N1/N)^2;
disp(T1,' Torque developed (in Newton-meter)=');
V1=V*sqrt((N1/N)^2*(s1/s)*((((R1+(R2/s1))^2)+((X1+X2)^2)))/(((R1+(R2/s))^2)+((X1+X2)^2)));
disp(V1,'Terminal Voltage (in volts)=');
//Answer given in the textbook is worng as the torque equation is not multiplied by R2
disp('Answer given in the textbook is worng as the torque equation is not multiplied by R2')