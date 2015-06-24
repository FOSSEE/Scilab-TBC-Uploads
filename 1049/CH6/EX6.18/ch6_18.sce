clear;
clc;
V=230;
f=50;
w=2*%pi*f;
disp("for firing angle delay=0deg");
a=0;
t_c=(4*%pi/3-a*%pi/180)/w;    printf("commutation time=%.2f ms",t_c*1000);
printf("\npeak reverse voltage=%.2f V",sqrt(2)*V);

disp("for firing angle delay=30deg");
a=30;
t_c=(4*%pi/3-a*%pi/180)/w;    printf("commutation time=%.2f ms",t_c*1000);
printf("\npeak reverse voltage=%.2f V",sqrt(2)*V);
