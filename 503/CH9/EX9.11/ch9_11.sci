//to find starting current and torque, necessary exteranl resistance and corresponding starting torque

clc;
f=50;
R2=.1;
X2=2*%pi*f*3.61*10^-3;
a=3.6;
R22=a^2*R2;
X22=a^2*X2;
V=3000;
n_s=1000;
w_s=2*%pi*n_s/60;
I_s=(V/sqrt(3))/sqrt(R22^2+X22^2);disp(I_s,'starting current(A)');
T_s=(3/w_s)*(V/sqrt(3))^2*R22/(R22^2+X22^2);disp(T_s,'torque(Nm)');

Iss=30;
Rext=sqrt(((V/sqrt(3)/Iss)^2-X22^2)-R22);
disp(Rext,'external resistance(ohm)');
T_s=(3/w_s)*(V/sqrt(3))^2*(R22+Rext)/((R22+Rext)^2+X22^2);disp(T_s,'torque(Nm)');
