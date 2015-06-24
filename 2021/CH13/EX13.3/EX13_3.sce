//Finding of //Finding of Boundary layer thickness , Drag Force
//Given
x=1.5;
L=2;
b=1.4;
vs=0.2;
mu=0.001;
rho=1000;
//To Find
A=L*b;
R=(rho*vs*x)/mu;
t=(4.64*x)/sqrt(R);
t1=t*1000;
tau=(0.323*mu*vs*sqrt(R))/x;
R1=(rho*vs*L)/mu;
Cd=1.292/sqrt(R);
Fd=(1/2)*Cd*rho*(vs)^2*(2*A);
disp("Co-efficient of Drag ="+string(Cd)+" no units")
disp("Boundary Layer Thickness ="+string(t1)+" millimeter");
disp("Drag Force ="+string(Fd)+" Newtons");

