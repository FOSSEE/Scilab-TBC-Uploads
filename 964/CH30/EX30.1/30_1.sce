//clc()
l = 10;//cm
k1 = 0.49;//cal/(s.cm.C)
x = 2;//cm
dt = 0.1;//sec
T0 = 100;//C
T10 = 50;//C
C = 0.2174;//cal/(g.C)
rho = 2.7;//g/cm^3
k = k1/(C*rho);
L = k * dt / x^2;
disp(L,"L =")
T(1,1) = 100;
T(1,2) = 0;
T(1,3) = 0;
T(1,4) = 0;
T(1,5) = 0;
T(1,6) = 50;
T(2,1) = 100;
T(2,6) = 50;
for i = 2:3
    for j = 2:5
        T(i,j) = T(i-1,j) + L * (T(i-1,j+1) - 2* T(i-1,j) + T(i-1,j-1));
    end
end
disp(T(2,2),"T11 = ")
disp(T(2,3),"T12 = ")
disp(T(2,4),"T13 = ")
disp(T(2,5),"T14 = ")
disp(T(3,2),"T21 = ")
disp(T(3,3),"T22 = ")
disp(T(3,4),"T23 = ")
disp(T(3,5),"T24 = ")
