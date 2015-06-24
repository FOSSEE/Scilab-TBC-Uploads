//to determine speed and torque of the motor

clc;
Ra=0.035;
Rf=0.015;
V=220;
I=200;
Ea=V-I*(Ra+Rf);
disp('full field winding');
n=900;
nn=n*Ea/V;disp(nn,'speed(rpm)');
T=(Ea*I/2)/(2*%pi*nn/60);disp(T,'torque(Nm)');
disp('field winding reduced to half');
Rse=Rf/2;
Rtot=Rse+Ra;
Ea=V-I*(Rtot);
Iff=I/2;
V=150;    //from magnetisation characteristic
nn=n*Ea/V;disp(nn,'speed(rpm)');
T=(Ea*I)/(2*%pi*nn/60);disp(T,'torque(Nm)');

disp('divertor across series field');
Ra=0.03;
Rse=.015;
Kd=1/((Rse/Ra)+1);
Ise=Kd*I;
V1=192;
I1=150;
V2=150;
I2=100;
v=V2+((V1-V2)/(I1-I2))*(Ise-I2);
R=(2/3)*Rse;
Ea=V-I*(Ra+R);
nn=n*Ea/v;disp(nn,'speed(rpm)');
T=(Ea*I)/(2*%pi*nn/60);disp(T,'torque(Nm)');
