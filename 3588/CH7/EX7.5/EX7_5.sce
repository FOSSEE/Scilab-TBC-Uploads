//Clearing console
clc
clear

//Intializing Variables
h = 50
kx = 20
ky = 20
a = 0.5/12
b = 0.5/12
t = 0.5/12
Ta = 68
T(1,1) = 180
T(2,1) = 180
T(3,1) = 180

//Surface Convection stiffness matrix from problem EX7.4
k = [0.6327160 -0.1003086 -0.2584877 -0.1003086;-0.1003086 0.6327160 -0.1003086 -0.2584877;-0.2584877 -0.1003086 0.6327160 -0.1003086;-0.1003086 -0.2584877 -0.1003086 0.6327160]

k1 = integrate('(1-r)^2','r',-1,1)
k2 = integrate('(1+r)^2','r',-1,1)
k3 = integrate('1-r^2','r',-1,1)

//Edge Convection stiffness matrix and force vector
k1h = (h*t*a/4)*[k1 k3 0 0;k3 k2 0 0;0 0 0 0;0 0 0 0]
f1h = (h*t*Ta*a/2)*[2;2;0;0]

k2h = (h*t*a/4)*[k1 k3 0 0;k3 k2 0 0;0 0 0 0;0 0 0 0]+(h*t*b/4)*[0 0 0 0;0 k1 k3 0;0 k3 k2 0;0 0 0 0]
f2h = (h*t*Ta*a/2)*[2;4;2;0]

k3h = (h*t*a/4)*[0 0 0 0;0 k1 k3 0;0 k3 k1+k2 k3;0 0 k3 k2]
f3h = (h*t*Ta*a/2)*[0;2;4;2]

k4h = (h*t*a/4)*[0 0 0 0;0 0 0 0;0 0 k1 k3;0 0 k3 k2]
f4h = (h*t*Ta*a/2)*[0;0;2;2]

//Surface Convection force vector
feh = (h*t*Ta*a/2)*[4;4;4;4]

//Constructing Elemental stiffness matrices
k1 = k1h + k
k2 = k2h + k
k3 = k3h + k
k4 = k4h + k

//Constructing elemental force vectors
f1 = f1h + feh
f2 = f2h + feh
f3 = f3h + feh
f4 = f4h + feh

//Constructing Global stiffness matrix
K(1,1:9) = [k1(1,1) k1(1,4) 0 k1(1,2) k1(1,3) 0 0 0 0]
K(2,1:9) = [k1(4,1) k1(4,4)+k4(1,1) k4(1,4) k1(4,2) k1(4,3)+k4(1,2) k4(1,3) 0 0 0]
K(3,1:9) = [0 k4(4,1) k4(4,4) 0 k4(4,2) k4(4,3) 0 0 0]
K(4,1:9) = [k1(2,1) k1(2,4) 0 k1(2,2)+k2(1,1) k1(2,3)+k2(1,4) 0 k2(1,2) k2(1,3) 0]
K(5,1:9) = [k1(3,1) k1(3,4)+k4(2,1) k4(2,4) k1(3,2)+k2(4,1) k1(3,3)+k2(4,4)+k3(1,1)+k4(2,2) k3(1,4)+k4(2,3) k2(4,2) k2(4,3)+k3(1,2) k3(1,3)]
K(6,1:9) = [0 k4(3,1) k4(3,4) 0 k3(4,1)+k4(3,2) k3(4,4)+k4(3,3) 0 k3(4,2) k3(4,3)]
K(7,1:9) = [0 0 0 k2(2,1) k2(2,4) 0 k2(2,2) k2(2,3) 0]
K(8,1:9) = [0 0 0 k2(3,1) k2(3,4)+k3(2,1) k3(2,4) k2(3,2) k2(3,3)+k3(2,2) k3(2,3)]
K(9,1:9) = [0 0 0 0 k3(3,1) k3(3,4) 0 k3(3,2) k3(3,3)]

//Constructing Global force vector
F(4,1) = f1(2,1) +f2(1,1)
F(5,1) = f1(3,1) +f2(4,1)+f3(1,1)+f4(2,1)
F(6,1) = f3(4,1) +f4(3,1)
F(7,1) = f2(2,1)
F(8,1) = f2(3,1) +f3(2,1)
F(9,1) = f3(3,1)

//Resulting force vector by accounting for T1=T2=T3=180
Fd(4:9,1) = F(4:9,1) - K(4:9,1:3)*T(1:3,1)

//Solving for Temperatures
T(4:9,1)=linsolve(K(4:9,4:9),-Fd(4:9,1))

//Sovling for heat at node 1 2 and 3
F(1:3,1) = K(1:3,1:9)*T

//Sovling for heat flow at node 1 2 and 3
F1 = F(1,1) - f1(1,1)
F2 = F(2,1) -35.4168
F3 = F(3,1)-f4(4,1)

printf('\nResults\n')
printf('\nNode-Temperatures \nT1=%f◦F \nT2=%f◦F \nT3=%f◦F \nT4=%f◦F \nT5=%f◦F \nT6=%f◦F \nT7=%f◦F \nT8=%f◦F \nT9=%f◦F',T(1,1),T(2,1),T(3,1),T(4,1),T(5,1),T(6,1),T(7,1),T(8,1),T(9,1))
printf('\nHeat flow at node-1 \nF1=%fBtu/hr',F1)
printf('\nHeat flow at node-2 \nF2=%fBtu/hr',F2)
printf('\nHeat flow at node-3 \nF3=%fBtu/hr',F3)
