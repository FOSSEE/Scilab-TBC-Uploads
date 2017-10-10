
clc;
D=60;  //I^2*t(rated) value
Is=100;
tmax=(D)/(Is)^2;
disp('ms',tmax*1000,"tmax=");//The answers vary due to round off error
