//Ex:98
clc;
clear;
close;
f_d1=3;// in db
A=10^(-f_d1/10);
B=1-A;
l_s=-10*log(B)/log(10);
f_d2=4.76;// in db
A2=10^(-f_d2/10);
B2=1-A2;
l_s2=-10*log(B2)/log(10);
f_d3=6;// in db
A3=10^(-f_d3/10);
B3=1-A3;
l_s3=-10*log(B3)/log(10);
f_d4=6.97;// in db
A4=10^(-f_d4/10);
B4=1-A4;
l_s4=-10*log(B4)/log(10);
l_o=f_d3+l_s4;//in db
printf("The power loss suffered of the five carriers after all have combined=%f db",l_o);