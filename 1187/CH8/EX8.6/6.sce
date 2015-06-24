clc

Re_t=5*10^5;
Re_l=5*10^6;

r1=Re_t/Re_l; // r1=x_t/l
r2=1-36.9*(1/Re_t)^(3/8); // r2=x_0/x_t

r=r1*r2; // r=x_0/l;

disp("(a) the proportion of the plate occupied by the laminar boundary layer =")
disp(r*100)
disp("%")

C_F = 0.074/Re_l^(1/5)*(1-r)^(4/5);
disp("(b) the skin friction coefficient CF evaluated at the trailing edge =")
disp(C_F)
