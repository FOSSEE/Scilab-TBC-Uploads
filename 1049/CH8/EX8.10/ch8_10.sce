clear;
clc;
V_s=220;
R=6;
f=50;
w=2*%pi*f;
L=0.03;
C=180*10^-6;
X_L=w*L;
X_C=1/(w*C);

V_or=sqrt(V_s^2*%pi/%pi);
V_01=4*V_s/(sqrt(2)*%pi);
V_oh=sqrt(V_or^2-V_01^2);
THD=V_oh/V_01;    printf("THD of voltage=%.4f",THD);
DF=V_01/V_or;    printf("\nDF=%.1f",DF);

Z1=sqrt(R^2+(X_L-X_C)^2);
phi1=-atand((X_L-X_C)/R);
Z3=sqrt(R^2+(X_L*3-X_C/3)^2);
phi3=atand((X_L*3-X_C/3)/R);
Z5=sqrt(R^2+(X_L*5-X_C/5)^2);
phi5=atand((X_L*5-X_C/5)/R);
Z7=sqrt(R^2+(X_L*7-X_C/7)^2);
phi7=atand((X_L*7-X_C/7)/R);

I_01=19.403;
I_m1=4*V_s/(Z1*%pi);
I_m3=4*V_s/(3*Z3*%pi);
I_m5=4*V_s/(5*Z5*%pi);
I_m7=4*V_s/(7*Z7*%pi);
I_m=sqrt(I_m1^2+I_m3^2+I_m5^2+I_m7^2);
I_or=I_m/sqrt(2);
I_oh=sqrt((I_m^2-I_m1^2)/2);
THD=I_oh/I_01;    printf("\nTHD of current=%.4f",THD);
DF=I_01/I_or;    printf("\nDF=%.3f",DF);

P_o=I_or^2*R;    printf("\nload power=%.1f W",P_o);
I_avg=P_o/V_s;    printf("\navg value of load current=%.2f A",I_avg);

t1=(180-phi1)*%pi/(180*w);    printf("\nconduction time for thyristor=%.0f ms",t1*1000);
t1=1/(2*f)-t1;    printf("\nconduction time for diodes=%.0f ms",t1*1000);

I_p=I_m1;    printf("\npeak transistor current=%.2f A",I_p);
I_t1=.46135*I_p;    printf("\nrms transistor current=%.2f A",I_t1);