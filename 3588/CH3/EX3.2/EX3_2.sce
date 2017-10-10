//Clearing Console
clc
clear

//Intialing given values
E1=10*10^6
E2=10*10^6
A1=1.5
A2=1.5
L1=56.57
L2=40
//Calculating stiffnesses of elements
k1=A1*E1/L1
k2=A2*E2/L2

//Calculating Stiffness matrix
K= [k1/2 k1/2 0 0 -k1/2 -k1/2;k1/2 k1/2 0 0 -k1/2 -k1/2;0 0 k2 0 -k2 0;0 0 0 0 0 0;-k1/2 -k1/2 -k2 0 k1/2+k2 k1/2;-k1/2 -k1/2 0 0 k1/2  k1/2]

//Intializing known nodal displacements and forces
U(1,1)=0
U(2,1)=0
U(3,1)=0
U(4,1)=0

F(5,1)=500
F(6,1)=300

//Calculating Nodal Displacements
U(5:6,1)=linsolve(K(5:6,5:6),-F(5:6,1)) //K*U=F (equlibrium equation)

//Calculatiing Nodal Forces
F(1:4)=K(1:4,5:6)*U(5:6)

//Calculating Elemental forces displacements and stress
//For Element-1
R1= [1/sqrt(2) 1/sqrt(2) 0 0;0 0 1/sqrt(2) 1/sqrt(2)]
u1 = R1*U([1 2 5 6],1)
sigma_1 = E1*[-1/L1 1/L1]*R1*U([1 2 5 6],1)
f1 = [k1 -k1;-k1 k1]*u1
//For Element_2
R2= [1 0 0 0;0 0 1 0]
u2 = R2*U([3:6],1)
sigma_2 = E2*[-1/L2 1/L2]*R2*U([3:6],1)
f2 = [k2 -k2;-k2 k2]*u2

//Printing Results
printf('\nResults\n')
printf('\nNodal Displacements \nU1x=%fin \nU1y=%fin \nU2x=%fin \nU2y=%fin \nU3x=%fin \nU3y=%fin\n',U(1,1),U(2,1),U(3,1),U(4,1),U(5,1),U(6,1))
printf('\nNodal Forces \nF1x=%flb \nF1y=%flb \nF2x=%flb \nF2y=%flb \nF3x=%flb \nF3y=%flb\n',F(1,1),F(2,1),F(3,1),F(4,1),F(5,1),F(6,1))
printf('\nElement-1 Displacements \nux=%fin \nuy=%fin \n',u1(1,1),u1(2,1))
printf('\nElement-1 Forces \nFx=%flb \nFy=%flb\n',f1(1,1),f1(2,1))
printf('\nElement-1 Stress \nSigma_1=%flb/in^2\n',sigma_1)
printf('\nElement-2 Displacements \nux=%fin \nuy=%fin \n',u2(1,1),u2(2,1))
printf('\nElement-2 Forces \nFx=%flb \nFy=%flb\n',f2(1,1),f2(2,1))
printf('\nElement-2 Stress \nSigma_2=%flb/in^2\n',sigma_2)
