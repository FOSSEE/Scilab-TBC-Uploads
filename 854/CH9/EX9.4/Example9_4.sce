//clear//
//Caption: Program to find the torque and force acting on each side of planar loop
//Example9.4
//page 271
clc;
ax = sym('ax');
ay = sym('ay');
az = sym('az');
I = 4e-03; //current in Amps
B = [0,-0.6,0.8]; //Magentic Field acting on current loop in Tesla
L1 = [1,0,0];  //length along x-axis
L2 = [0,2,0]; //length along y-axis
F1 = I*cross_product(L1,B);
F3 = -F1;
F2 = I*cross_product(L2,B);
F4 = -F2;
R1 = [0,-1,0];  //distance from center of loop for side1
R2 = [0.5,0,0]; //distance from center of loop for side2
R3 = [0,1,0]; //distance from center of loop for side3
R4 = [-0.5,0,0];//distance from center of loop for side4
T1 = cross_product(R1,F1);
T2 = cross_product(R2,F2);
T3 = cross_product(R3,F3);
T4 = cross_product(R4,F4);
T = T1+T2+T3+T4;
Tx = float(T(1)*1e03);
disp(F1,'F1 =')
disp(F2,'F2 =')
disp(F3,'F3 =')
disp(F4,'F4 =')
disp(T1,'T1 =')
disp(T2,'T2 =')
disp(T3,'T3 =')
disp(T4,'T4 =')
disp(Tx*ax,'Total torque acting on the rectangular planar loop in milli N/m T =')
//Result
// F1 =   
//     0.      
//  - 0.0032  
//  - 0.0024  
// F2 =   
//    0.0064  
//    0.      
//    0.      
// F3 =   
//    0.      
//    0.0032  
//    0.0024  
// F4 =   
//   - 0.0064  
//    0.      
//    0.      
// T1 =   
//    0.0024  
//    0.      
//    0.      
// T2 =   
//    0.  
//    0.  
//    0.  
// T3 =   
//    0.0024  
//    0.      
//    0.      
// T4 =   
//    0.  
//    0.  
//    0.  
// Total torque acting on the rectangular planar loop in milli N/m T = 4.8*ax   
