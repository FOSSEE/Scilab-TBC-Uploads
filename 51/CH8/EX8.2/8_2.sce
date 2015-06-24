clc;
clear;
vis=0.4;//Ns/(m^2)
d=900;//kg/(m^3)
D=0.02;//m
Q=2.0*(10^-5);//(m^3)/s
x1=0;
x2=10;//m
p1=200;//kPa
x3=5;//m
V=Q/(%pi*(D^2)/4);//m/s
Re=d*V*D/vis;
disp("Hence the flow is laminar.",Re,"a) Reynolds number =")
pdiff=128*vis*(x2-x1)*Q/(%pi*(D^4)*1000);
//for part b0 p1=p2; Q=%pi*(pdiff-(sw*l*sin(ang)))*(D^4)/(128*vis*l)
ang=(asin(-128*vis*Q/(%pi*d*9.81*(D^4))))*180/%pi;
//since sin(ang) doesn= not depend on pdiff, the the pressure is constant all along the pipe
//hence for c)
p3=p1;//kPa
disp("kPa.",pdiff,"The pressure drop required if the pipe is horizontal=")
disp("degrees.",ang,"b) The angle of the hill the pipe must be on if the oil is to flow at the same rate as a) but with (p1=p2) =")
disp("kPa",p3,"c) For conditions of part b), the pressure at x3=5 m = ")