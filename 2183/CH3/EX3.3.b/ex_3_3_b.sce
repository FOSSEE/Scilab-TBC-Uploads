// Example 3.3.b:insertion loss
clc;
clear;
close;
n12=1.5;//refractive index
y=5;//lateral misalignment in micro meter
a2=50;//dia in micro meter
nlat=(1/(%pi))*((2*acos(y/a2))-(y/a2)*sqrt(1-(y/a2)^2));//
loss=-10*log10(nlat);//loss in dB
disp(loss,"insertion loss in dB is")
//answer is wrong in the textbook
