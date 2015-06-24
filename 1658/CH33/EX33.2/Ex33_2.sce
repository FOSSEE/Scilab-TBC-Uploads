clc;
R1=1*10**3;
Rf=51*10**3;
Cf=0.1*10**-6;
f=1/(2*%pi*Rf*Cf);
disp('HZ',f*1,"f=");//ans given in book is wrong
fmin=10*f;
disp('HZ',fmin*1,"fmin=");
