

//exapple 3.3 
clc; funcprot(0);
// Initialization of Variable
Q=37.6/1000000;
d=3.2/100;
mu=1.002/1000;
rho=998;
pi=3.14;
//calculation
//part1
u=4*Q/pi/d^2;
Re=rho*u*d/mu;
disp(Re,"pipe flow reynolds no :");
disp("Water will be in streamline motion in the pipe");
//part2
a=-8*u/d;
disp(a,"velocity gradient at the pipe wall is (s^-1):");
//part3
Ro=-mu*a;
printf("Sherastress at pipe wall is (N/m^2) %.2e",Ro);
//part4
Q=2.10/1000;
u=4*Q/pi/d^2;
u=round(u*1000)/1000;
disp(u,"new av. fluid velocity is (m/s):");
Re=rho*u*d/mu;
phi=0.0396*Re^-0.25;//friction factor
phi=round(phi*10^5)/10^5;
delb=5*d*Re^-1*phi^-.5;
disp(delb*10^6,"thickness of laminar sublayer in (10^-6m):");
//part5
y=30*d/phi^0.5/Re;//thickness
tbl=y-delb;
disp(tbl*1000,"thickness of buffer layer in (mm):");
//part6
A=pi*d^2/4;//cross sectional area of pipe
dc=d-2*y;//dia of turbulent core
Ac=pi*dc^2/4;
p=(1-A/Ac)*100;
disp(p,"percentage of pipe-s core occupied by turbulent core is (%):");
//part7
uplus=5;//from reference
ux=uplus*u*phi^0.5;
disp(ux,"velocity where sublayer and buffer layer meet is (m/s):");
//part8
yplus=30;//from reference
ux2=u*phi^0.5*(2.5*log(yplus)+5.5);
disp(ux2,"velocity where turbulent core and buffer layer meet is (m/s):");
//part9
us=u/0.81;
disp(us,"fluid velocity along the pipe axis (m/s):");
//part10
Ro=phi*rho*u^2;
disp(Ro,"shearstress at pipe wall (N/m^2):");
