// calculate angle to which tube is incliend to vertical
clc;
P=133;
g=9.81;
dm=13.56*10^3;
R=10^-3;
d=4;
D=20;
th=asind(P/(g*dm*R*(1+(d/D)^2)));
thV=90-th;
disp(thV,'angle to which tube is incliend to vertical(degree)')