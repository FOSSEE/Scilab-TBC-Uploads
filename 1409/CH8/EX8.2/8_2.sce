clc;
//Page no 8-6
//Example 8.2
//fr value is taken from the previous example
fr=5*10^6;
Bw=50*10^3;
Q=fr/Bw;
disp(Q,'Q of the tuned circut is ');
L=15*10^(-6);
XL=2*%pi*5*10^6*15*10^(-6);
R=XL/Q;
disp(+'ohm',R,'Resistance of the coil is ');
