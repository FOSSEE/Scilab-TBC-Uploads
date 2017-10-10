clc;
tm=2; // ratio of maximum torque to full load torque
r=0.2; // per phase rotor resistance referred to stator
x=2; // per phase reactance referred to stator
s=r/x; // slip at maximum torque
disp('case a');
ts1=(2*s*tm)/(s^2+1); 
printf('Ratio of starting torque to full load torque is %f\n',ts1);
disp('case b');
ts2=ts1/3; 
printf('Ratio of starting torque to full load torque with star-delta starter is %f\n',ts2);
disp('case c');
t=0.7; // tapping point 
ts3=ts1*t^2; 
printf('Ratio of starting torque to full load torque with autotransformer starter is %f\n',ts3);
