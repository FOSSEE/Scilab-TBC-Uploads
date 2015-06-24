clc
//ex13.8
V_CC=15;
V_BE=0.7;
B=100;      //beta value
R_1=10*10^3;
R_2=5*10^3;
R_L_1=2*10^3;      //R_L is taken as R_L_1
R_C=1*10^3;
R_E=1*10^3;
V_T=26*10^-3;      //thermal voltage
//from the analysis of the previous example we have the the values of i_C_Q and V_CE
i_C_Q=4.12*10^-3;
V_CE=6.72;
r_pi=(B*V_T)/i_C_Q;
R_B=1/((1/R_1)+(1/R_2));      //thevenin resistance
R_L_2=1/((1/R_L_1)+(1/R_C));      //R_L' is taken as R_L_2
A_v=-(R_L_2*B)/r_pi;      //voltage gain
A_voc=-(R_C*B)/r_pi;      //open circuit voltage gain
Z_in=1/((1/R_B)+(1/r_pi));      //input impedance
A_i=(A_v*Z_in)/R_L_1;      //current gain
G=A_i*A_v;      //power gain
Z_o=R_C      //output impedance
//assume f=1hz
f=1;
t=0:0.0005:3;
V_in=0.001*sin(2*%pi*f*t);
V_o=-(V_in*R_L_2*B)/r_pi;
subplot(121)
xtitle('Input voltage vs time','time','input voltage')
plot(t,V_in)
subplot(122)
xtitle('output voltage vs time','time','output voltage')
plot(t,V_o)
//In the graph, notice the phase inversion between input and output voltages
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp(A_v,'voltage gain')
disp(A_voc,'open circuit voltage gain')
disp(Z_in,'input impedance in ohms')
disp(A_i,'current gain')
disp(G,'power gain')
disp(Z_o,'output impedance in ohms')
