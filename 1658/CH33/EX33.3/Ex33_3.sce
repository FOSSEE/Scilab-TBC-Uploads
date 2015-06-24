clc;
R1=10*10**3;
Cf=0.01*10**-6;
f=1/(2*%pi*R1*Cf);
disp('HZ',f*1,"f=");//ans given in book is wrong
fmin=f/10;
disp('HZ',fmin*1,"fmin=");
