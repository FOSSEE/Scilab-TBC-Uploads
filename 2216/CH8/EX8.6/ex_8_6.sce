//Example 8.6: Gain and The output photocurrent
clc;
clear;
close;
//given data :
format('v',6)
disp("part (a)")
tf=6*10^-12;// in s
del_f=450*10^6;// in Hz
G=1/(2*%pi*tf*del_f);
disp(G,"the gain = ")
disp("part (b)")
format('e',10)
tf=6*10^-12;// in s
del_f=450*10^6;// in Hz
G=1/(2*%pi*tf*del_f);
eta=75/100;
P_in=5*10^-6;// in W
e=1.6*10^-19;// in J
lamda=1.3*10^-6;
h=6.626*10^-34;//in Js
c=3*10^8;// in m s^-1
I=(G*eta*P_in*e*lamda)/(h*c);
disp(I,"The output photo-current,I(A)")
