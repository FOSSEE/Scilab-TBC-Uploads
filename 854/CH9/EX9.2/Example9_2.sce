//clear//
//Caption: Program to determine the differential force between two differential current elements
//Example9.2
//page 265
clc;
ax = sym('ax');
ay = sym('ay');
az = sym('az');
//position of filament in cartesian coordinate system
P1 = [5,2,1]; 
P2 = [1,8,5];
//distance between filament 1 and filament 2
R12 = norm(P2-P1);
disp(R12,'R12 =')
I1dL1 = [0,-3,0]; //current carrying first filament 1
I2dL2 = [0,0,-4]; //current carrying second filament 2
u0 = 4*%pi*1e-07; //free space permeability in H/m
aR12  = UnitVector(P2-P1); //unit vector
disp(aR12,'aR12 =')
C1 = cross_product(I1dL1,aR12);
C2 = cross_product(I2dL2,C1);
dF2 = (u0/(4*%pi*R12^2))*C2;
dF2_y = float(dF2(2)*1e09);
disp(dF2_y*ay,'the differential force between two differential current elements in nN =')
//Result
//R12 = 8.2462113  
//aR12 =  - 0.4850713    0.7276069    0.4850713  
//the differential force between two differential current elements in nN = 8.560080878105142*ay  
