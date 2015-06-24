//Example 1.70// power factor and line current
clc;
clear;
close;
//given data :
W1=14.2; // in k-watt
W2=-6.1; // in k-watt
El=440; // in volts
P=W1+W2;
fi=atand(sqrt(3)*(W1-W2)/(W1+W2));
cos_fi=cosd(fi);
IL=P*1000/(sqrt(3)*El*cos_fi);
disp(P,"true power,P(k-watt) = ")
disp(cos_fi,"the power factor,cos_fi(lag) = ")
disp(IL,"the line current,IL(A) = ")
