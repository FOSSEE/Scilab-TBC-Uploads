clc
m=1; //kg
p1=20*10^5; //Pa
V1=0.05; //m^3
V2=2*V1;
p2=p1*(V1/V2)^2;
C=p1*V1^2;
V3=V1;
W_12=integrate('C/V^2', 'V', V1,V2);

W_23=p2*(V2-V3);

W_net=W_12-W_23;
disp("Net work done = ")
disp(W_net)
disp("Nm")