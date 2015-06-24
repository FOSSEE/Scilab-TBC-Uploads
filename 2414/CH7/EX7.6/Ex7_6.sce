clc;
close();
//page no 231
//prob no. 7.6
delta_f=12;   //kHz
fm=4;   //kHz
B=delta_f/fm;  //modulating index for FM
disp('The expression is');
mprintf('v(t)=A*cos[(2*pi*10^8*t)+%i*sin(%i*2*pi*10^3*t)]',B,fm);
