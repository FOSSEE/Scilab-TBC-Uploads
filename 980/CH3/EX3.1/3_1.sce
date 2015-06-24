clc;
clear;
format('v',11);
//3.1.1
p=[1 1 1];
q=[1 1 1.001];
delta=q-p;   //as it is rectangular coordinates.
disp(delta,"linear element dl in rectangular coordinates=");

//3.1.2
p=[1,1,1];
q=[1,1.01,1.001];
D=q-p;
R=1;
delta=[D(1) R*D(2) D(3)]; //as it is cylindrical coordinates.
disp(delta,"linear element dl in cylindrical coordinates=");

//3.1.3
p=[1,1,1];
q=[1,1.01,1.001];
D=q-p;
R=1;
delta=[D(1) R*D(2) R*sin(1)*D(3)];   //as it is spherical coordinates.
disp(delta,"linear element dl in spherical coordinates=");
