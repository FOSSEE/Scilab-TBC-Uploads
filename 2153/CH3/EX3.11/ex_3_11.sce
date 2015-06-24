//Example 3.11 : volume change in percentage
clc;
clear;
close;
//given data :
r_bcc=0.1258; // in nm
r_fcc=0.1292;// in nm
a_bcc=(r_bcc*4)/sqrt(3);
a_fcc=(r_fcc*4)/sqrt(2);
v_fcc=(a_fcc)^3;// in nmn^3
v_bcc=(a_bcc)^3; // in nm^3
V=((v_fcc-v_bcc)/v_bcc)*100;
disp(V,"volume change in percentage,V(%) = ")
