//Page Number: 337
//Example 6.12
clc;
//Given
I0=35D-3; //A
V0=4D+3; //V
Z0=20; //ohm
f=10D+9; //Hz

//(i) Gain parameter
C=((I0*Z0)/(4*V0))^(1/3);
disp(C,'Gain parameter:');

ve=0.593D+6*sqrt(V0);
be=(2*%pi*f)/ve;

//Four propogation constants
gam1=((-sqrt(3)*be*C)/2)+(%i*be*(2+C))/2;
gam2=((sqrt(3)*be*C)/2)+(%i*be*(2+C))/2;
gam3=%i*be*(1-C);
gam4=-%i*be*(1-((C*C*C)/4));

disp(gam4,gam3,gam2,gam1,'Four propogation constants:');

//Calculations for propogation constants are wrong hence answers dont match
