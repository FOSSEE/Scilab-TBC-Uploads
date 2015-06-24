clear;
clc;
//v_o=4*V_s/%pi*(sind(wt)+sind(3*wt)/3+sind(5*wt)/5)
V_s=230;
R=4;
f=50;
w=2*%pi*f;
L=0.035;
C=155*10^-6;
X_L=w*L;
X_C=1/(w*C);
Z1=sqrt(R^2+(X_L-X_C)^2);
phi1=-atand((X_L-X_C)/R);
Z3=sqrt(R^2+(X_L*3-X_C/3)^2);
phi3=atand((X_L*3-X_C/3)/R);
Z5=sqrt(R^2+(X_L*5-X_C/5)^2);
phi5=atand((X_L*5-X_C/5)/R);

I_m1=4*V_s/(Z1*%pi);
I_01=I_m1/sqrt(2);    printf("rms value of fundamental load current=%.2f A",I_01);
I_m3=4*V_s/(3*Z3*%pi);
I_m5=4*V_s/(5*Z5*%pi);
I_m=sqrt(I_m1^2+I_m3^2+I_m5^2);
I_0=I_m/sqrt(2);
P_0=(I_0)^2*R;    printf("\nload power=%.1f W",P_0);
P_01=(I_01)^2*R;    printf("\nfundamental load power=%.1f W",P_01);
printf("\nrms value of thyristor current=%.3f A",I_m/2);

t1=(180-phi1)*%pi/(180*w);    printf("\nconduction time for thyristor=%.3f ms",t1*1000);
t1=(phi1)*%pi/(180*w);    printf("\nconduction time for diodes=%.3f ms",t1*1000);
