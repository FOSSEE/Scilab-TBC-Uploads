//Finding of Circulation,Theoretical Drag,Actual Drag,Lift,Resultant,Direction
//Given
V=20;
D=2;
A=2*10;
R=D/2;
N=300;
L=10;
Cd=0.65;
Cl=3.4;
rho=1000;
//To find
Vp=(%pi*D*N)/60;
//case 1
C=2*(%pi)*R*Vp;
disp("Circulation ="+string(C)+" m^2/sce");
//case 2
Fl=rho*V*L*C;
disp("Theoretical Lift ="+string(Fl)+" Newtons");
//case 3
si=C/(4*(%pi)*V*R);
theta1=(180+si);
theta2=(360-si);
disp("theta ="+string(theta1)+" Degrees");
disp("theta ="+string(theta2)+" Degrees");
//case 3
FL=0.5*rho*A*V^2*Cl;
disp("Lift Force ="+string(FL)+" Newtons");
//case 4
FD=0.5*rho*A*(V^2)*Cd;
disp("Drag Force ="+string(FD)+" Newtons");
//case 5
F=sqrt((FL^2)+(FD^2));
disp("Resultant Force ="+string(F)+" Newtons");
//case 6
theta=1/tan(FL/FD);
disp("Direction ="+string(theta)+" Degrees");
//case 7
C1=4*(%pi)*V*R;
Vp=C1/(2*(%pi)*R);
N=(Vp*60)/(2*(%pi));
disp("Speed ="+string(N)+" rpm");
