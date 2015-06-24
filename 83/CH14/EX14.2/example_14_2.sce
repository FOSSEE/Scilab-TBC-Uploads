//Chapter 14
//Example 14.2
//page 534
//To estimate the values of the random variables x1 and x2 using WLSE
clear;clc;

w=diag([0.1;1;0.1]); //assumed matrix
H=[1 0;0 1;1 1];  //given matrix
k=inv(H'*w*H)*H'*w; // from eq 14.12b
y=['y1';'y2';'y3'];
Px=k*k';
k=string(k);
x=[k(1,1)+y(1,1)+k(1,2)+y(2,1)+"+"+k(1,3)+y(3,1) ;k(2,1)+y(1,1)+"+"+k(2,2)+y(2,1)+"+"+k(2,3)+y(3,1)];
printf('The weighted least square s estimate of the vector x =\n');
disp(x);
printf('\n\nThe matrix k is in this case found to be \n');
disp(k);
//covariance of measurement is assumed is assumed to be unit matrix
printf('\n\nThe covariance of the estimation error is obtained as Px=\n');
disp(Px);

printf('\n\n\n Now choosing W=1\n');
w=diag([1;1;1]); //assumed matrix
H=[1 0;0 1;1 1];  //given matrix
k=inv(H'*w*H)*H'*w; // from eq 14.12b
Px=k*k';
printf('\n\nThe matrix k is in this case found to be \n');
disp(k);
printf('\n\nThe covariance of the estimation error is obtained as Px=\n');
disp(Px);