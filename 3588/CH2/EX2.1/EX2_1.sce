//Clearing Console
clc
clear

//Node 1 Displacement
U1=0
//Stiffness of Springs
K1=50
K2=75
//Nodal Forces
F2=75
F3=75
//varible decleration
K=[]
F=[]
U=[]

//Constructing Stiffness and Force matrices
K(1,1)=K1+K2
K(1,2)=-K2
K(2,1)=-K2
K(2,2)=K2
F(1,1)=F2
F(2,1)=F3

//Solving for Nodal Displacements U2 and U3
U=linsolve(K,-F) //K*U=F (equlibrium equation)

//Solving for Nodal force F1
F1=-50*U(1,1)

//Printing Results
printf('\nResults\n')
printf('\nNodal displacements \nU1=%fin \nU2=%fin \nU3=%fin\n',U1,U(1,1),U(2,1))
printf('\nNodal Force F1=%flb\n',F1)
