//Ex 3.11 page 125

clc;
clear;
close;

Vs=230;// V
Io=5;// A
alpha = 45;// degree
printf('part(i)')
Vo=2*sqrt(2)*Vs/%pi*cos(alpha*%pi/180);// V
printf('\n dc output voltage = %.1f V',Vo)
Pi=Vo*Io;// W
printf('\n Active power = %.1f W',Pi)
Qi=2*sqrt(2)*Vs/%pi*sin(alpha*%pi/180)*Io;// VAR
printf('\n Reactive power = %.1f VAR',Qi)
printf('\n\n part(ii)')
R=Vo/Io;// ohm
Vo=sqrt(2)*Vs/%pi*(1+cos(alpha*%pi/180));// V
printf('\n dc output voltage = %.1f V',Vo)
Io=Vo/R;// A
Pi=Vo*Io;// W
printf('\n Active power = %.1f W',Pi)
Qi=sqrt(2)*Vs/%pi*sin(alpha*%pi/180)*Io;// VAR
printf('\n Reactive power = %.0f VAR',Qi)
printf('\n\n part(iii)')
Vo=sqrt(2)*Vs/%pi/2*(1+cos(alpha*%pi/180));// 
printf('\n Average load voltage = %.0f V',Vo)
Io=Vo/R;// A
printf('\n Average load current = %.2f A',Io)
