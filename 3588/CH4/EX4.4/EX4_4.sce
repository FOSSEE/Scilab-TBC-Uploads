//Clearing console
clc
clear

//Intializing Variables
b = 1
h = 1
A = 1
L = 20
I = (b*h^3)/12
E = 10*10^6
M = 90

//Calculating elemental stiffness matrices
k1([2,3,5,6],1:6) = ((E*I)/(L^3))*[0 12 6*L 0 -12 6*L;0 6*L 4*(L)^2 0 -6*L 2*(L)^2;0 -12 -6*L 0 12 -6*L;0 6*L 2*(L)^2 0 -6*L 4*(L)^2]
k1([1,4],1:6) = (A*E/L)*[1 0 0 -1 0 0;-1 0 0 1 0 0]
k2 = k1 //as L1 = L2 and both are of same material (E1 = E2)

//Calculating transformation matrix
R = [cosd(M) sind(M) 0 0 0 0;-sind(M) cosd(M) 0 0 0 0;0 0 1 0 0 0;0 0 0 cosd(M) sind(M) 0;0 0 0 -sind(M) cosd(M) 0;0 0 0 0 0 1]

//Constructing elemental Stiffness matrix in global system
K1 = (R)'*k1*R

//Constructing Global Stiffness matrix
K(1,[1:9])= [K1(1,[1:6]) 0 0 0]
K(2,[1:9])= [K1(2,[1:6]) 0 0 0]
K(3,[1:9])= [K1(3,[1:6]) 0 0 0]
K(4,[1:9])= [K1(4,[1:3]) K1(4,4)+k2(1,1) K1(4,5)+k2(1,2) K1(4,6)+k2(1,3) k2(1,[4:6])]
K(5,[1:9])= [K1(5,[1:3]) K1(5,4)+k2(2,1) K1(5,5)+k2(2,2) K1(5,6)+k2(2,3) k2(2,[4:6])]
K(6,[1:9])= [K1(6,[1:3]) K1(6,4)+k2(3,1) K1(6,5)+k2(3,2) K1(6,6)+k2(3,3) k2(3,[4:6])]
K(7,[1:9])= [0 0  0 k2(4,[1:6])]
K(8,[1:9])= [0 0  0 k2(5,[1:6])]
K(9,[1:9])= [0 0  0 k2(6,[1:6])]

//Constructing Force matrix (required values)
F([4:6],1) = [0;-100;-333.3]
U([1:3],1) =[0; 0; 0]

//Solving for displacements
U(4:6,1)=linsolve(K(4:6,4:6),-F(4:6,1)) //K*U=F (equlibrium equation)

//Solving for local displacements
u(1:6,1) = R*U(1:6,1)

//Printing Results
printf('\nResults\n')
printf('\nNode-B Displacement Components \nUx=%fin \nUy=%fin \nTheta=%frad',u(4,1),u(5,1),u(6,1))
