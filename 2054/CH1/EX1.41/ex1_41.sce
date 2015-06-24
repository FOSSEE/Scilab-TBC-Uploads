//Exa:1.41
clc;
clear;
close;
R2=0.5;//in ohms
X2=2.4;//in ohms
a=0.5;//ratio
s_f=0.05;//slip
f=50;//in hertz
P=8;//Number of Poles
R_2=R2*a^2;//in ohms
X_2=X2*a^2;//in ohms
s=2-s_f;//Slip during Plugging
N_s=120*f/P;//in rpm
V=400/sqrt(3);//in volts
R_L=2;//in ohms
R_1=0.1;//in ohms
X_1=0.6;//in ohms
I_2=V/sqrt(((R_1+(R_2+R_L)/s)^2)+(X_1+X_2)^2);//in amperes
T_b=3*60*I_2^2*(R_2+R_L)/(2*%pi*N_s*s);
disp(int(T_b),'Initial Braking Torque (in N-m)=');
E_2=V*sqrt(((R_2/s_f)^2+(X_2^2))/(((R_2/s_f)+R_1)^2)+1.2^2)/sqrt(3);
S=1-s_f;//Slip during breaking
I_2b=E_2/sqrt((X_2^2)+((R_L+R_2)/S)^2);
T_bn=3*60*I_2b^2*(R_2+R_L)/(2*%pi*N_s*S);
disp(T_bn,'Initial Braking Torque during dc dynamic braking(in N-m)=');