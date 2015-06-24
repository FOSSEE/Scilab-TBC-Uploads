

//exapple 3.2 
clc; funcprot(0);
// Initialization of Variable
P=102.7*1000;
M=28.8/1000;
R=8.314;
temp=273+18;
Recrit=10^5;
u=18.4;
b=4.7;//width
x=1.3;
mu=1.827/100000;
//calculation
//part1
rho=P*M/R/temp;
xcrit=Recrit*mu/rho/u;
a=1-xcrit/1.65;
disp(a*100,"% of surface over which turbulent boundary layer exist is :");
//part2
Rex=rho*u*x/mu;
thik=0.375*Rex^-.2*x;
disp(thik*100,"thickness of boundary layer in (cm):");
y=0.5*thik;
ux=u*(y/thik)^(1/7);
disp(ux,"velocity of air at mid point is (m/s):")
//part4
lthik=74.6*Rex^-.9*x;
disp(lthik*1000,"thickness of laminar boundary layer in (mm):");
//part5
ub=u*(lthik/thik)^(1/7);
disp(ub,"velocity at outer edge of laminar sublayer in (m/s):");
//part6
R=0.0286*rho*u^2*Rex^-0.2;
disp(R,"shearforce expericienced in (N/m^2):");
//part7
x1=1.65;//length of plate
Rex1=rho*u*x1/mu;
Rms=0.0358*rho*u^2*Rex1^-0.2;
disp(Rms,"mean shearforce in (N/m^2):");
//part8
F=x1*Rms*b;
disp(F,"total drag force expericienced by the plate is (N):");

