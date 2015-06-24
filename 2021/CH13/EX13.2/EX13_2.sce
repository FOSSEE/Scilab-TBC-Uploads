//Finding of Boundary layer thickness , Drag Force
//Given
x=1;
L=1.5;
b=1.2;
vs=0.25;
mu=0.001;
rho=1000;
x2=1.2;
L2=1.2;
//To Find
A=L*b;
R=(rho*vs*x)/mu;
t=(5.477*x)/sqrt(R);
tau=(0.365*mu*vs*sqrt(R))/x;
R1=(rho*vs*L)/mu;
Cd=1.46/sqrt(R1);
Fd=(1/2)*Cd*rho*(vs)^2*A;
disp("Boundary Layer Thickness ="+string(t)+" meter");
disp("Drag Force ="+string(Fd)+" Newtons");

