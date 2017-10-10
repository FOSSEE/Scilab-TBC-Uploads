l1=8;
l2=4;
v=120;
f=60;
x_l1=2*%pi*f*l1;
x_l2=2*%pi*f*l2;
x_l=1/(1/x_l1+1/x_l2);
i=v/x_l;
disp("the total current (in mA) drawn from the supply is"); disp(i*10^3);