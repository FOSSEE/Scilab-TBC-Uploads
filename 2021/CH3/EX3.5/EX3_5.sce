//Finding of Total Pressure , Depth of pressure
//Given
T=4;
rho=1000;
g=9.81;
l=2;
b=1/2;
y1=2;
y2=1/3;
//To Find
A=(6/2)*1;
A1=(l*b);
A2=l*5;
y3=((A1*y1)+(2*A2*y2))/(A1+2*A2);
P=rho*g*A*y3;disp(y3);
Ig=(l^2+(4*l*T)+T^2)/(36*(l+T));
Ycp=(Ig/(A*y3))+y3;
disp("P= "+string(P)+" Newtons");
disp("Ycp ="+string(Ycp)+" meter");
