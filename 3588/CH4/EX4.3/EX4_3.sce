//Clearing console
clc
clear

//Intializing Variables
b = 40
h = 40
I = (b*h^3)/12
L1=300
L2=300
L3=200
E1 = 207*10^3
E3 = 69*10^3
A1= 1600
A3 = 78.54

//Calculating elemental stiffness matrices
K1 = ((E1*I)/(L1^3))*[12 6*L1 -12 6*L1;6*L1 4*(L1)^2 -6*L1 2*(L1)^2; -12 -6*L1 12 -6*L1; 6*L1 2*(L1)^2 -6*L1 4*(L1)^2]
K2 = K1 //as L1 = L2 and both are of same material (E1 = E2)
K3 = (A3*E3/L3)*[1 -1;-1 1]

//Constructing Global Stiffness matrix
K(1,[1:7])= [K1(1,[1:4]) 0 0 0]
K(2,[1:7])= [K1(2,[1:4]) 0 0 0]
K(3,[1:7])= [K1(3,[1:2]) K1(3,3)+K2(1,1)+K3(1,1) K1(3,4)+K2(1,2) K2(1,[3:4]) K3(1,2)]
K(4,[1:7])= [K1(4,[1:2]) K1(4,3)+K2(2,1) K1(4,4)+K2(2,2) K2(2,[3:4]) 0]
K(5,[1:7])= [0 0 K2(3,[1:4]) 0 ]
K(6,[1:7])= [0 0 K2(4,[1:4]) 0 ]
K(7,[1:7])= [0 0 K3(2,1) 0 0 0 K3(2,2)]

//Constructing Force matrix (required values)
F([2:6],1) = [0; 0; 0; -10000; 0]

//Solving for displacements
U(2:6,1)=linsolve(K(2:6,2:6),-F(2:6,1)) //K*U=F (equlibrium equation)

//Solving Axial stress of BD element
stress_BD = E3*[-1/L3 1/L3]*[0 1 0 0;0 0 0 1]*[0;U(3,1);0;0]
U(1,1)=0
U(7,1)=0

//Calculating Reaction forces
F = [K]*[U]

//Printing Results
printf('\nResults\n')
printf('\nNode-C Displacement Components \nU=%fmm \nTheta=%frad',U(3,1),U(4,1))
printf('\nReaction Forces \nR1=%fN \nR4=%fN',F(1,1),F(7,1))

