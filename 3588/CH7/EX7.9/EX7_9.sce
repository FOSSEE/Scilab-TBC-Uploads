//Clearing console
clc
clear

//Intializing Variables
d = 0.02
L = 0.1
k = 0.156
c = 0.523
h = 300
m = 0.2*60
Ta = 15
T(1,1) = 50

//Calculating elemental conductance capcitance  matrices
Kc = ((k*%pi*(d)^2)/(L))*[1 -1;-1 1]
Kh = (h*%pi*d*L/24)*[2 1;1 2]
Km = (m*c/2)*[-1 1;-1 1]

//Calculating elemental stiffness matrice
K1 = Kc+Kh+Km

//Calculating global stiffness matrice
K(1,1:5) = [K1(1,1:2) 0 0 0]
K(2,1:5) = [K1(2,1) K1(2,2)+K1(1,1) K1(1,2) 0 0]
K(3,1:5) = [0 K1(2,1) K1(2,2)+K1(1,1) K1(1,2) 0]
K(4,1:5) = [0 0 K1(2,1) K1(2,2)+K1(1,1) K1(1,2)]
K(5,1:5) = [0 0 0 K1(2,1) K1(2,2)]


f = (h*%pi*d*Ta*L/8)*[1;1]
F(2:5,1) = [f(1,1)+f(2,1);f(1,1)+f(2,1);f(1,1)+f(2,1);f(1,1)]

Fd(2:5,1) = F(2:5,1)-K(2:5,1)*T(1,1)

//Solving for Nodal temperatures
T(2:5,1)=linsolve(K(2:5,2:5),-Fd(2:5,1))

//Calculating qs
qm1 = m*c*T(1,1)*10
qm5 = m*c*T(5,1)*10

printf('\nResults\n')
printf('\nNode-Temperatures \nT1=%fK \nT2=%fK \nT3=%fK \nT4=%fK \nT5=%fK',T(1,1),T(2,1),T(3,1),T(4,1),T(5,1))
printf('\nHeat rate at node-1 \nq1=%fW',qm1)
printf('\nHeat rate at node-5 \nq5=%fW',qm5)
