//Clearing Console
clc
clear

//Node 1 Displacement
U1=0

//Stiffness of Springs
k1=4
k2=6
k3=3

//Nodal Forces
F2=-30
F3=0
F4=50

//varible decleration
K=zeros(3,3)

//Constructing Stiffness and Force matrices
K(1,1)=k1 + 2*k2
K(1,2)=-2*k2
K(2,1)=-2*k2
K(2,2)=2*k2 +k3
K(2,3)=-k3
K(3,2)=-k3
K(3,3)=k3

F(1,1)=F2
F(2,1)=F3
F(3,1)=F4

//Solving for Nodal Displacements U2, U3 and U4
U=linsolve(K,-F) //K*U=F (equlibrium equation)

//Solving for Nodal force F1
F1=-4*U(1,1)

//Printing Results
printf('\nResults\n')
printf('\nNodal displacements \nU1=%fmm \nU2=%fmm \nU3=%fmm \nU4=%fmm\n',U1,U(1,1),U(2,1),U(3,1))
printf('\nNodal Force F1=%fN\n',F1)
