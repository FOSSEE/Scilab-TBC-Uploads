//Finding of Volume ,Diameter
//Given
L=44145;
H=10;
E=0.55;
P=490.5*10^4;
//To Find
W=L*H;
F=P*(%pi/4);
Energy=F*5;
d=W/(Energy*E);
d1=d^(.33);
V=((%pi/4)*d1^2)*(5*d1);
disp("Diameter ="+string(d1)+" meter");
disp("Volume ="+string(V)+" m^3");
