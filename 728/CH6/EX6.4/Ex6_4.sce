//Caption:Determine the powers in the remaining ports
//Exa:6.4
clc;
clear;
close;
a_2=0;
a_3=0;
a_1=32;//in mW
b_1=(a_1/2^2)+(a_2/-2)+(a_3/sqrt(2));
b_2=(a_1/(-2)^2)+(a_2/-2)+(a_3/sqrt(2));
b_3=(a_1/2)+(a_2/sqrt(2))+(a_3/-sqrt(2));
disp(b_1,'Power at port1(in mW)=');
disp(b_2,'Power at port2(in mW) =');
disp(b_3,'Power at port3(in mW) =');