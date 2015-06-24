clc;
//e.g 13.9
A=0.2;
C=0.428*10**-6;
e0=8.85*10**-12;
er=1200;
d=(e0*er*A)/C;//ans printed in the book is wrong
disp('mm',d*10**3,"d=");
