//Clearing console
clc
clear

//Intializing Variables
a = 0.5/12
b = 0.5/12
t = 0.5/12
kx = 20
ky = 20
h= 50

r(1) = sqrt(3)/3
r(2) = -sqrt(3)/3
s(1) = sqrt(3)/3
s(2) = -sqrt(3)/3
K11 = 0

//Gaussian quadrature Integration for calculating elements of stiffness matrix
for j =1:2
    for i =1:2
        K11 = K11 + ((kx*t*(a/b)*(s(j)-1)^2)/16)+((ky*t*(b/a)*(r(i)-1)^2)/16)+((2*h*a*b*((1-r(i))^2)*((1-s(j))^2))/16)
    end
end

K22 = 0
for j =1:2
    for i =1:2
        K22 = K22 + ((kx*t*(a/b)*(s(j)-1)^2)/16)+((ky*t*(b/a)*(r(i)+1)^2)/16)+((2*h*a*b*((1+r(i))^2)*((1-s(j))^2))/16)
    end
end

K12 = 0
for j =1:2
    for i =1:2
        K12 = K12 + (-(kx*t*(a/b)*(s(j)-1)^2)/16)+((ky*t*(b/a)*(r(i)+1)*(1-r(i)))/16)+((2*h*a*b*(1-r(i))*(1+r(i))*((1-s(j))^2))/16)
    end
end

K13 = 0
for j =1:2
    for i =1:2
        K13 = K13 + ((kx*t*(a/b)*(s(j)-1)*(s(j)+1))/16)+((ky*t*(b/a)*(r(i)+1)*(r(i)-1))/16)+((2*h*a*b*(1-r(i))*(1+r(i))*(1-s(j))*(1+s(j)))/16)
    end
end

K14 = 0
for j =1:2
    for i =1:2
        K14 = K14 + (-(kx*t*(a/b)*(s(j)-1)*(1+s(j)))/16)+(-(ky*t*(b/a)*(1-r(i))^2)/16)+((2*h*a*b*(1-s(j))*(1+s(j))*((1-r(i))^2))/16)
    end
end

//Similarly Calculating other elements
K = [K11 K12 K13 K14;K12 K22 K12 K13;K13 K12 K22 K12;K14 K13 K12 K22]

printf('\nComplete Element Conductance Matrix in Btu/(hr-◦F )\n')
disp(K)
