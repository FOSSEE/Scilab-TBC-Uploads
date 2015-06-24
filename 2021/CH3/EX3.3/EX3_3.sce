//Finding of Totoal Pressure , Depth of centre
//given
d=2.5;
rho=1000;
g=9.81;
y1=2;
//To Find
Ig=(%pi*d^4)/64;
Ay=(%pi/4)*d^2;
P=Ay*rho*g*y1;
a=4/6.25;
Ycp=((Ig*a)/(Ay*y1))+y1;
disp("P= "+string(P)+" Newtons");
disp("Ycp ="+string(Ycp)+" meter");
