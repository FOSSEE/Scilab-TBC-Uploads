//Example 2.3.2.e: % error
clc;
clear;
close;
//given data :
Ae=80;// in V
Am=79;// in V
e=Ae-Am;
f=100;//full scale deflection
error1=(e/Ae)*100;
A=(1-abs(e/Ae));
accuracy=A*100;
P_error=(e/f)*100;
disp(P_error,"% error(%) = ")
