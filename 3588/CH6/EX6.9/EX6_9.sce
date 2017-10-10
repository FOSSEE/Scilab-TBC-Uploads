//Clearing console
clc
clear

//Intializing variables
r(1) = sqrt(3)/3
r(2) = -sqrt(3)/3
s(1) = sqrt(3)/3
s(2) = -sqrt(3)/3
t(1) = 0
t(2) = 0.7745967
t(3)= -0.7745967

Wt(1)= 0.8888889
Wt(2) = 0.5555556
Wt(3) = 0.5555556
//Not considering weight factors for cubic and quadratic functions as they are 1

I = 0
//Gaussian quadrature Integration
for k =1:3
    for j =1:2
        for i =1:2
            I = I + Wt(k)*((r(i))^2)*((s(j))^2 -1)*((t(k))^4 -2)
        end
    end
end

printf('\nResults')
printf('\nIntegration of given function I =%f',I) 
