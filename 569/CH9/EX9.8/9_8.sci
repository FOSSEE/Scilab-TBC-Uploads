// calculate angle to which tube is incliend to horizontal
clc;
P=9.81;
g=9.81;
dm=0.864*10^3;
R=4*10^-3;
d=2;
D=20;
th=asind(P/(g*dm*R*(1+(d/D)^2)));
disp(th,'angle to which tube is incliend to horizontal(degree)')