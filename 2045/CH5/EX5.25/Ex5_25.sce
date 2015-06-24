//pagenumber 304 example 25
clear
vce2=7.5;//volt
vb=0.7;//volt
beta1=200;
v1=25;//volt
r1=10*10^3;//ohm
vcc=15;//volt
i1=(vcc-vb)/r1;
r=(vcc-vce2)/i1;
z1=beta1*v1/i1;
z=v1/i1;
disp("input impedance q1   =   "+string((z))+"ohm");//correction in the book
disp("input impedance q2   =   "+string((z1))+"ohm");

