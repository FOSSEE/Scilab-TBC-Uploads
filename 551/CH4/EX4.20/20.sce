clc
p1=190; //kPa
V1=0.035; //m^3
p2=420; //kPa
V2=0.07; //m^3
dU=3.6*(p2*V2-p1*V1);
// p=a+b*v
// a+0.035*b=190
// a+0.07*b=420
// solving the two equations
p=[1,0.035;1,0.07];
q=[190;420];
X=inv(p)*q;
a=X(1,1);
b=X(2,1);
W=integrate('a+b*V', 'V', V1, V2);
disp("Work done by the system = ")
disp(W)
disp("kJ")


Q=dU+W;
disp("Heat transfer into the system = ")
disp(Q)
disp("kJ")