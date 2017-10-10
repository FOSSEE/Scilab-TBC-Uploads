//Clearing console
clc
clear

//Intializing Variables
d = 0.06
k1 = 200
k2 = 389
L1 = 0.25
T(5,1) = 80
Q(1:4,1) = ((%pi*d^2)/4)*[4000;0;0;0]

//Calculating elemental conductance matrices
K1 = ((k1*%pi*(d^2))/(4*L1))*[1 -1;-1 1]
K2 = ((k2*%pi*(d^2))/(4*L1))*[1 -1;-1 1]

//Calculating conductance matrices
K(1,1:5) = [K1(1,1:2) 0 0 0]
K(2,1:5) = [K1(2,1) K1(2,2)+K1(1,1) K1(1,2) 0 0]
K(3,1:5) = [0 K1(2,1) K1(2,2)+K2(1,1) K2(1,2) 0 ]
K(4,1:5) = [0 0 K2(2,1) K2(2,2)+K2(1,1) K2(1,2)]
K(5,1:5) = [0 0 0 K2(2,1) K2(2,2)]

//Accounting for the known temperature at node 5, and modifying Q matrix for solving
q(1:4,1) = Q(1:4,1) - T(5,1)*K(1:4,5)

//Solving for Temperatures
T(1:4,1)=linsolve(K(1:4,1:4),-q(1:4,1))

//Sovling for heat at node 5
Q(5,1) = K(5,1:5)*T

//Sovling for heat flux at node 5
q5 = - Q(5,1)/((%pi*d^2)/4)

//Printing Results
printf('\nResults\n')
printf('\nNode-Temperatures \nT1=%f◦C \nT2=%f◦C \nT3=%f◦C \nT4=%f◦C \nT5=%f◦C',T(1,1),T(2,1),T(3,1),T(4,1),T(5,1))
printf('\nHeat flow at node-5 \nq5=%fW/m^2',q5)

