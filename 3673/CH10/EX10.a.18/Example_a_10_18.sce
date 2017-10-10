//Example_a_10_18 page no:479
clc;
l=0.6;
r=l/(2*%pi);
N=300;
I=1;
AT=300;
a=%pi*r^2;
mu=4*%pi*10^-7
R=l/(mu*N*a);
lg=90.345/299;
disp(lg,"the air gap is (in m)");
disp(R,"the reluctance is (in AT/wb)");
//reluctance value varies in the textbook hence area and radius is rounded off in text book
