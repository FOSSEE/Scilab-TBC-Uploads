clc
B=5*10^(-5); // /K
K=8.6*10^(-12); // m^2/N
v=0.114*10^(-3); //m^3/kg
p2=800*10^5; //Pa
p1=20*10^5; //Pa
T=288; //K
disp("(i) Work done on the copper = ")
W=-v*K/2*(p2^2-p1^2);
disp(W)
disp("J/kg")

disp("(ii) Change in entropy =")
ds=-v*B*(p2-p1);
disp(ds)
disp("J/kg K")

disp("(iii) The heat transfer =")
Q=T*ds;
disp(Q)
disp("J/kg")

disp("(iv) Change in internal energy =")
du=Q-W;
disp(du)
disp("J/kg")

disp("(v) cp – cv =")
R=B^2*T*v/K;
disp(R)
disp("J/kg K")