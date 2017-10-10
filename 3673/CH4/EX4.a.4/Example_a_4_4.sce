//Example_a_4_4 page no:177
clc;
Irms=20;
f=50;
Im=sqrt(2)*Irms;
//at t=0.0025s
t1=0.0025;
i_t1=Im*cos(2*%pi*f*t1);
disp(i_t1,"the current at 0.0025s is (in A)");
//at t=0.0125s
t2=0.0125;
i_t2=Im*cos(2*%pi*f*t2);
disp(i_t2,"the current at 0.0125s is (in A)");
t=acos(14.14/28.28)/(2*f*%pi);
disp(t,"the time at which instantaneous current becomes 14.14 A is (in s)");
