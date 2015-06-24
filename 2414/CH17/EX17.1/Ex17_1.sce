clc;
close();
clear();
//page no 547
//prob no. 17.1
H=10^6;    //meter
v=20*10^6/sqrt(H+6.4*10^6);   //m/s
mprintf('(a)velocity , v=%i m/s\n',v);
R=6.4*10^6;    //data rate in bits per second
C=2*%pi*(H+R);    //circumference in m
mprintf(' (b)circumference , C=%i m\n',C);    //raunded value of C shown in book solution
T=C/v;
mprintf(' (c)The period is , T=%.2f seconds or %.2f minutes',T,T/60);
