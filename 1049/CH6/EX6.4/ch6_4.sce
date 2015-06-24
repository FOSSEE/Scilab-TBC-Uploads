clear;
clc;
B=210;
f=50;    //Hz
w=2*%pi*f;
a=40;    //firing angle
V=230;
disp("for R=5ohm and L=2mH");
R=5;
L=2*10^-3;
t_c=(360-B)*%pi/(180*w);    printf("ckt turn off time=%.3f msec",t_c*1000);
V_o=(sqrt(2)*230/(2*%pi))*(cosd(a)-cosd(B));    printf("\navg output voltage=%.3f V",V_o);
I_o=V_o/R;    printf("\navg output current=%.4f A",I_o);

disp("for R=5ohm, L=2mH and E=110V");
E=110;
R=5;
L=2*10^-3;
th1=asind(E/(sqrt(2)*V));
t_c=(360-B+th1)*%pi/(180*w);    printf("ckt turn off time=%.3f msec",t_c*1000);
V_o=(sqrt(2)*230/(2*%pi))*(cosd(a)-cosd(B));    printf("\navg output voltage=%.3f V",V_o);    
I_o=(1/(2*%pi*R))*(sqrt(2)*230*(cosd(a)-cosd(B))-E*((B-a)*%pi/180));    printf("\navg output current=%.4f A",I_o);
V_o=R*I_o+E;    printf("\navg output voltage=%.3f V",V_o);

    