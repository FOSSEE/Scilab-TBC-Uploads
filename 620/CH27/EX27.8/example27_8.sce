l=8;
r=400;
v=120;
f=60;
disp("Part a");
x_l=2*%pi*f*l;
q=x_l/r;
vc=q*v;
disp("the capacitor voltage (in V) is"); disp(vc);
disp("Part b");
c=1/(4*%pi^2*f^2*l)
disp("the necessary capacitance (in μF) is"); disp(c*10^6);