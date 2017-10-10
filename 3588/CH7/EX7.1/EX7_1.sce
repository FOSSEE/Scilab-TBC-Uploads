//Clearing console
clc
clear

//Intializing Variables
d = 0.06
k1 = 200
k2 = 389
L = 0.5
T(5,1) = 80
Q(1:4,1) = ((%pi*d^2)/4)*[4000;0;0;0]
A = (%pi*d^2)/4

//Calculating elemental stiffness matrices
function K= matri(k,A,L)
    K=[(7*k*A)/(3*L) -(8*k*A)/(3*L) (k*A)/(3*L);-(8*k*A)/(3*L) (16*k*A)/(3*L) -(8*k*A)/(3*L);(k*A)/(3*L) -(8*k*A)/(3*L) (7*k*A)/(3*L)]
endfunction

K1 = matri(k1,A,L)
K2 = matri(k2,A,L)

//Calculating global stiffness matrice
K(1,1:5) = [K1(1,1:3) 0 0]
K(2,1:5) = [K1(2,1:3) 0 0]
K(3,1:5) = [K1(3,1) K1(3,2) K1(3,3)+K2(1,1) K2(1,2:3)]
K(4,1:5) = [0 0 K2(2,1:3)]
K(5,1:5) = [0 0 K2(3,1:3)]

//Accounting for T5 = 80◦C and Calculating Qd
Qd(1:4,1) = Q(1:4,1)-T(5,1)*K(1:4,5)

//Solving for Temperatures
T(1:4,1)=linsolve(K(1:4,1:4),-Qd(1:4,1))

//Sovling for heat at node 5
Q(5,1) = K(5,1:5)*T

//Sovling for heat flux at node 5
q5 = - Q(5,1)/((%pi*d^2)/4)

//Printing Results
printf('\nResults\n')
printf('\nNode-Temperatures \nT1=%f◦C \nT2=%f◦C \nT3=%f◦C \nT4=%f◦C \nT5=%f◦C',T(1,1),T(2,1),T(3,1),T(4,1),T(5,1))
printf('\nHeat flow at node-5 \nq5=%fW/m^2',q5)
