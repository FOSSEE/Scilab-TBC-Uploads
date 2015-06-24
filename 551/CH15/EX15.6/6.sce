clc
L=0.012; //m
t_hf=95; //0C
t_cf=15; //0C
k=50; //W/m 0C
h_hf=2850; //W/m^2 0C
h_cf=10; //W/m^2 0C

disp("(i) Rate of heat loss per m^2 of the tank surface area")
U=1/(1/h_hf + L/k + 1/h_cf);
A=1; //m^2
q=U*A*(t_hf-t_cf);
disp("q=")
disp(q)
disp("W/m^2")


disp("(ii) Temperature of the outside surface of the tank =")
t2=q/h_cf+t_cf;
disp(t2)
disp("0C")