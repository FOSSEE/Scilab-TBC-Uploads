//Finding of Total Pressure
//Given
BC=2;
d=2;
y1=2.5;
rho=1000;
g=9.81;
//To Find
Ig=(1*BC^3)/2;
Ay=((1*BC^3)/2)*y1;
Px=Ay*rho*g/2;
Ycp=(Ig/Ay)+y1;
Py=((2*1.5)*(%pi/4)*d^2)*rho*g;
disp("Px= "+string(Px)+" Newtons");
disp("Ycp ="+string(Ycp)+" meter");
disp("Py= "+string(Py)+" Newtons");
