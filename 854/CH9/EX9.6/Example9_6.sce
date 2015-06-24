//clear//
//Caption: Program to find the boundary conditions on magnetic field
//Example9.6
//page 283
clc;
ax = sym('ax');
ay = sym('ay');
az = sym('az');
u1 = 4e-06; // relative permeability in medium1
u2 = 7e-06; //relative permeability in medium2
k = [80,0,0]; //in A/m
B1 = [2e-03,-3e-03,1e-03];//field in region1
aN12 = [0,0,-1];
//To find Normal Components of Magnetic Field
Bz = dot(B1,aN12);
BN1 = [0,0,-Bz];
BN1 = float(BN1);
BN2 = float(BN1);
//To Find the Tangential Components of Magnetic Field
Bt1 = float(B1 - BN1);
Ht1 = float(Bt1/u1);
v = cross_product(aN12,k);
Ht2 = float(Ht1-v');
Bt2 = float(u2*Ht2);
disp(BN1(1)*ax+BN1(2)*ay+BN1(3)*az,'BN1 =')
disp(BN2(1)*ax+BN2(2)*ay+BN2(3)*az,'BN2 =')
disp(Bt1(1)*ax+Bt1(2)*ay+Bt1(3)*az,'Bt1 =');
disp(Ht1(1)*ax+Ht1(2)*ay+Ht1(3)*az,'Ht1 =');
disp(Ht2(1)*ax+Ht2(2)*ay+Ht2(3)*az,'Ht2 =');
disp(Bt2(1)*ax+Bt2(2)*ay+Bt2(3)*az,'Bt2 =');
//Total Magnetic Field Region2
B2 = (BN2+Bt2)*1e03;
B2 = B2(1)*ax+B2(2)*ay+B2(3)*az;
disp(B2,'Total Magnetic Field Region2 in milli Tesla B2 =')
//Result
// BN1 =   
//  0.001*az   
//BN2 =   
// 0.001*az   
//Bt1 =   
// 0.002*ax-0.003*ay   
//Ht1 =   
// 500.0*ax-750.0*ay   
//Ht2 =   
// 500.0*ax-670.0*ay   
//Bt2 =   
// 0.0035*ax-0.00469*ay   
//Total Magnetic Field Region2 in milli Tesla B2 =   
// 1.0*az-4.69*ay+3.5*ax   
