clear;
clc;
HP = 80;
N = 200;// RPM
m = 30/100;
f = 12000;// lb/in^2
T = HP*33000/(2*%pi*N);// lb-feet
T_max = (1+m)*T;// lb-feet
D = (T_max*12*16/(%pi*f))^(1/3);// inches
printf('Suitable diameter is D = %.3f inches',D);

//the answer is approximated in the textbook.
