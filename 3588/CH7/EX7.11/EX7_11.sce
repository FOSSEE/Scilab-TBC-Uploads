//Clearing console
clc
clear

//Intializing Variables
d = 0.012
L = 0.1
k = 200
c = 900
p = 2700
T(1,1) = 80
T(5,1) = 30
Td(1,1) = 0
Td(5,1) = 0
Q(1:4,1) = ((%pi*d^2)/4)*[4000;0;0;0]

//Calculating elemental conductance and capacitance matrices
C1 = ((c*p*L*%pi*(d)^2)/(16*6))*[2 1;1 2]
K1 = ((k*%pi*(d)^2)/(L))*[1 -1;-1 1]

//Calculating globLal capacitance matrices
C(1,1:5) = [C1(1,1:2) 0 0 0]
C(2,1:5) = [C1(2,1) C1(2,2)+C1(1,1) C1(1,2) 0 0]
C(3,1:5) = [0 C1(2,1) C1(2,2)+C1(1,1) C1(1,2) 0]
C(4,1:5) = [0 0 C1(2,1) C1(2,2)+C1(1,1) C1(1,2)]
C(5,1:5) = [0 0 0 C1(2,1) C1(2,2)]

//Calculating global conductance matrices
K(1,1:5) = [K1(1,1:2) 0 0 0]
K(2,1:5) = [K1(2,1) K1(2,2)+K1(1,1) K1(1,2) 0 0]
K(3,1:5) = [0 K1(2,1) K1(2,2)+K1(1,1) K1(1,2) 0]
K(4,1:5) = [0 0 K1(2,1) K1(2,2)+K1(1,1) K1(1,2)]
K(5,1:5) = [0 0 0 K1(2,1) K1(2,2)]

//Calculating Inverse of Capacitance matrix
Ci = inv(C(2:4,2:4))

//Caluculating Coefficents Temperature odes
A = Ci*K(2:4,2:4)
B = Ci*(Q(2:4,1)-C(2:4,1)*Td(1,1)-C(2:4,5)*Td(5,1)-K(2:4,1)*T(1,1)-K(2:4,5)*T(5,1))

//solving for T2 T3 and T4
T2(1) =30
T3(1) =30
T4(1) =30

for i = 2:301
    T2(i) = T2(i-1)-(A(1,1:3)*[T2(i-1);T3(i-1);T4(i-1)])+B(1,1)
    T3(i) = T3(i-1)-(A(2,1:3)*[T2(i-1);T3(i-1);T4(i-1)])+B(2,1)
    T4(i) = T4(i-1)-(A(3,1:3)*[T2(i-1);T3(i-1);T4(i-1)])+B(3,1)
end

printf('\nResults\n')
printf('\nNode-Temperatures \nT2=%fK \nT3=%fK \nT4=%fK',T2(300),T3(300),T4(300))

