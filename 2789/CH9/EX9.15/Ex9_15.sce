clear;
clc;

//page no. 324

Q = 2.5;//cfs
T = 50;//degreeF
d1 = 8;//in
d2 = 6;//in
l1 = 1000;//ft
l2 = 2000;//ft
V8 = Q/(0.25*%pi*(d1/12)^2);
V6 = Q/(0.25*%pi*(d2/12)^2);
R8 = V8*0.667/0.0000141;
f8 = 0.020;
R6 = V6*0.5/0.0000141;
f6 = 0.019;
h_L8 = f8*(l1/0.667)*(V8^2 /(2*32.2));
h_L6 = f6*(l2/0.5)*(V6^2 /(2*32.2));
Ep = 100+h_L8+h_L6;
n = Q*62.4*(Ep)/550;
V8 = sqrt((30/f8)*2*32.2/(l1/0.667));
Q_max = V8*0.25*%pi*(d1/12)^2;
printf('Maximum reliable flow that can be pumped = %.1f cfs',Q_max);
