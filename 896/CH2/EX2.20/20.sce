clc
//calc thickness of liquid strip at the bottom of the industrial centrifuge
//Let difference between heights at bottom and top be d
d=20;//in
r_a=14;//in
f=1000/60;//rps
g=32.2;//ft/s^2
r_b=[(r_a)^2-2*(d)*g*12/(2*(%pi)*f)^2]^0.5;//in
disp("The thickness of water strip at bottom of industrial centrifuge")
disp(r_b)
disp("in")