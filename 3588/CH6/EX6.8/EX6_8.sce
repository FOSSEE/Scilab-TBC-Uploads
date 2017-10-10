//Clearing console
clc
clear

//Intializing variables
r(1) = sqrt(3)/3
r(2) = -sqrt(3)/3
s(1) = sqrt(3)/3
s(2) = -sqrt(3)/3

W(1) = 1
W(2) = 1
I = 0

//Gaussian quadrature Integration
for j =1:2
    for i =1:2
        I = I + W(i)*W(j)*((r(i))^3 -1)*(s(j)-1)^2
    end
end

printf('\nResults')
printf('\nIntegration of given function I =%f',-I) 
