//Clearing console
clc
clear

//Intializing Variables
d = 0.5
L = 4
kx = 120
ha = 50
hw = 100
Ta = 72
T(1,1) = 180
Q(1:4,1) = ((%pi*d^2)/4)*[4000;0;0;0]
A = (%pi*d^2)/(4*144)
Le = 1/12
P = %pi*d/12

//Calculating elemental conductance capcitance  matrices
Kc = ((kx*A)/(Le))*[1 -1;-1 1]
Kh = (ha*P*Le/(6))*[2 1;1 2]

K1 = Kc + Kh

//Calculating global stiffness matrice
K(1,1:5) = [K1(1,1:2) 0 0 0]
K(2,1:5) = [K1(2,1) K1(2,2)+K1(1,1) K1(1,2) 0 0]
K(3,1:5) = [0 K1(2,1) K1(2,2)+K1(1,1) K1(1,2) 0]
K(4,1:5) = [0 0 K1(2,1) K1(2,2)+K1(1,1) K1(1,2)]
K(5,1:5) = [0 0 0 K1(2,1) K1(2,2)]

f = (ha*P*Ta*Le/(2))*[1;1]
Fh(2:5,1) = [f(1,1)+f(2,1);f(1,1)+f(2,1);f(1,1)+f(2,1);f(1,1)]
Fg(2:4,1) = Fh(2:4,1)
Fg(5,1) = Fh(5,1)+A*hw*40
K(5,5) = K(5,5) +A*hw
Fd(2:5,1) = Fg(2:5,1)-K(2:5,1)*T(1,1)

//Solving for Temperatures
T(2:5,1)=linsolve(K(2:5,2:5),-Fd(2:5,1))


//Sovling for heat at node 5
Fg(1,1) = K(1,1:5)*T

//Sovling for heat flux at node 5
q1 = ((-f(1,1)+ Fg(1,1))/(A))

printf('\nResults\n')
printf('\nNode-Temperatures \nT1=%f◦F \nT2=%f◦F \nT3=%f◦F \nT4=%f◦F \nT5=%f◦F',T(1,1),T(2,1),T(3,1),T(4,1),T(5,1))
printf('\nHeat flow at node-1 \nq1=%fBtu/hr-ft^2',q1)
