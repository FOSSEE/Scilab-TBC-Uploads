//Example 1.69// power factor
clc;
clear;
close;
//given data :
W1=920; // in watt
W2=300; // in watt
fi=atand(sqrt(3)*(W1-W2)/(W1+W2));
cos_fi=cosd(fi)
disp(cos_fi,"the power factor,cos_fi(lag) = ")
