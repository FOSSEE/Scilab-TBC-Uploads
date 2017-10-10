//Clearing Console
clc
clear

//First, note that the 3-D truss with four nodes has 12 possible displacements. However,
//since nodes 1–3 are fixed, nine of the possible displacements are known to be zero. There-
//fore, we need assemble only a portion of the system stiffness matrix to solve for the three
//unknown displacements.

//Calculating Elemental Stiffness Matrices
for i=1:3
    if i==1 then
        cx=0.8
        cy=0
        cz=-0.6
        K1=3*10^5*[cx^2 cx*cy cx*cz -cx^2 -cx*cy -cx*cz;cx*cy cy^2 cy*cz -cx*cy -cy^2 -cy*cz;cx*cz cy*cz cz^2 -cx*cz -cy*cz -cz^2;-cx^2 -cx*cy -cx*cz cx^2 cx*cy cx*cz;-cx*cy -cy^2 -cy*cz cx*cy cy^2 cy*cz;-cx*cz -cy*cz -cz^2 cx*cz cy*cz cz^2]
    end
    if i==2 then
        cx=0.8
        cy=0
        cz=0.6
        K2=3*10^5*[cx^2 cx*cy cx*cz -cx^2 -cx*cy -cx*cz;cx*cy cy^2 cy*cz -cx*cy -cy^2 -cy*cz;cx*cz cy*cz cz^2 -cx*cz -cy*cz -cz^2;-cx^2 -cx*cy -cx*cz cx^2 cx*cy cx*cz;-cx*cy -cy^2 -cy*cz cx*cy cy^2 cy*cz;-cx*cz -cy*cz -cz^2 cx*cz cy*cz cz^2]
    end
    if i==3 then
        cx=0.8
        cy=0.6
        cz=0
        K3=3*10^5*[cx^2 cx*cy cx*cz -cx^2 -cx*cy -cx*cz;cx*cy cy^2 cy*cz -cx*cy -cy^2 -cy*cz;cx*cz cy*cz cz^2 -cx*cz -cy*cz -cz^2;-cx^2 -cx*cy -cx*cz cx^2 cx*cy cx*cz;-cx*cy -cy^2 -cy*cz cx*cy cy^2 cy*cz;-cx*cz -cy*cz -cz^2 cx*cz cy*cz cz^2]
    end
end

//Calculating required elements of global Stiffness Matrix
K([10:12],[10:12]) = [K1(4,4)+K2(4,4)+K3(4,4) K1(4,5)+K2(4,5)+K3(4,5) K1(4,6)+K2(4,6)+K3(4,6); K1(4,5)+K2(4,5)+K3(4,5) K1(5,5)+K2(5,5)+K3(5,5) K1(5,6)+K2(5,6)+K3(5,6); K1(4,6)+K2(4,6)+K3(4,6) K1(5,6)+K2(5,6)+K3(5,6) K1(6,6)+K2(6,6)+K3(6,6)]

//Constructing required Force matrix
F([10:12],1)=[0;-5000;0]

//Solving for node 4 displacements
U(10:12,1)=linsolve(K(10:12,10:12),-F(10:12,1)) //K*U=F (equlibrium equation)

//Printing Results
printf('\nResults\n')
printf('\nNode-4 Displacement Components \nUx=%fin \nUy=%fin \nUz=%fin',U(10,1),U(11,1),U(12,1))


