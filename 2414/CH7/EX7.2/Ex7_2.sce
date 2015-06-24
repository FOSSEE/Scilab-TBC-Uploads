clc;
close();
//page no 230
//prob no. 7.2
//v(t)=80*cos[(2*%pi*10^8*t)+20*sin(2*%pi*10^3*t)]     --eq
//v(t)=A*cos[Wc*t+Bsin(Wm*t)]    --eq7-27
//comparing the above 2 equations we get 
A=80;     //volts
fc=10^8;  //Hz
fm=10^3;  //Hz
B=20;
disp('Hz',fc,'(a) The carrier cyclic frequency is ');
disp('Hz',fm,'(b) The modulating frequency is ');
disp(B,'(c) The modulation index is ');
delta_f=B*fm;
disp('Hz',delta_f,'(d) The frequency deviation is ');
R=50;  //ohm
P=A^2/(2*R);
disp('W',P,'(e) The average power is ');
