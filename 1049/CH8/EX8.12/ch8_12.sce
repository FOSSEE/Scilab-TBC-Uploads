clear;
clc;
V_s=230;
R=10;
f=50;
w=2*%pi*f;
L=0.03;
X_L=w*L;

V_or=sqrt(V_s^2*%pi/%pi);
V_01=4*V_s/(sqrt(2)*%pi);

Z1=sqrt(R^2+(X_L)^2);
phi1=-atand((X_L)/R);
Z3=sqrt(R^2+(X_L*3)^2);
phi3=atand((X_L*3)/R);
Z5=sqrt(R^2+(X_L*5)^2);
phi5=atand((X_L*5)/R);
Z7=sqrt(R^2+(X_L*7)^2);
phi7=atand((X_L*7)/R);

disp("using square wave o/p");
I_m1=4*V_s/(sqrt(2)*Z1*%pi);
I_m3=4*V_s/(sqrt(2)*3*Z3*%pi);
I_m5=4*V_s/(sqrt(2)*5*Z5*%pi);
I_m7=4*V_s/(sqrt(2)*7*Z7*%pi);
I_m=sqrt(I_m1^2+I_m3^2+I_m5^2+I_m7^2);
P=I_m^2*R;    printf("power delivered=%.2f W",P);

disp("using quasi-square wave o/p");
I_01=I_m1*sind(45);
I_03=I_m3*sind(3*45);
I_05=I_m5*sind(5*45);
I_07=I_m7*sind(7*45);
I_0=(I_01^2+I_03^2+I_05^2+I_07^2);
P=I_0*R;    printf("power delivered=%.2f W",P);

disp("using two symmitrical spaced pulses");
g=(180-90)/3+45/2;
I_01=2*I_m1*sind(g)*sind(45/2);
I_03=2*I_m3*sind(g*3)*sind(3*45/2);
I_05=2*I_m5*sind(g*5)*sind(5*45/2);
I_07=2*I_m7*sind(g*7)*sind(7*45/2);
I_0=(I_01^2+I_03^2+I_05^2+I_07^2);
P=I_0*R;    printf("power delivered=%.2f W",P);