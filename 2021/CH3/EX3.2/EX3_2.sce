//Finding of Total Pressure
//Given
d=1.5;
y1=2;
rho=1000;
g=9.81;
//To Find
Ig=(%pi*d^4)/64;
Ay=(%pi/4)*d^2;
P=Ay*rho*g*y1;
Ycp=(Ig/Ay)+y1;
disp("P= "+string(P)+" Newtons");
disp("Ycp ="+string(Ycp)+" meter");
