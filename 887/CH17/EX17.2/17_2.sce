clc
//ex17.2
s=1;      //slip for starting
V_L=440*complex(cos(0),sin(0));
f=60;
R_s=1.2;
X_s=%i*2;
X_m=%i*50;
R_r_1=0.6;
R_r_2=19.4;
X_r=%i*0.8;
Z_eq=X_m*(R_r_1+X_r)/(X_m+R_r_1+X_r);      //equivalent impedance to the right in the figure in textbook
Z_s=R_s+X_s+Z_eq;
I_s=V_s/Z_s;      //starting phase current
[I_s_max,phi]=polar(I_s);
I_L=sqrt(3)*I_s_max;      //starting line current
//I_L here is almost six times larger than in previous example. It is a typical characteristic of induction motors.
P_ag=3*real(Z_eq)*I_s_max^2;      //power crossing air gap
W_s=2*%pi*(60);
T_dev=P_ag/(W_s/2);
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(I_L,'Starting line current')
disp(T_dev,'Torque in Nm')
