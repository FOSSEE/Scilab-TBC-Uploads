//Clearing console
clc
clear

//Intializing variables
r1 = 0
r(1) = sqrt(3)/3
r(2) = -sqrt(3)/3

t(1) = 0
t(2) = 0.7745967
t(3)= -0.7745967

W11 = 2
Wt(1)= 0.8888889
Wt(2) = 0.5555556
Wt(3) = 0.5555556

f(1) = 0.339981043583856
f(2) = -0.339981043583856
f(3) = 0.861136311590453
f(4) = -0.861136311590453

Wf(1) = 0.652145154862526
Wf(2) = 0.652145154862526
Wf(3) = 0.347854845137454
Wf(4) = 0.347854845137454

//Gaussian quadrature Integration one point
I1 = -2*(1/3)

//Not considering weight factors for cubic and quadratic functions as they are 1
//Gaussian quadrature Integration two points
I2 = 0
for i =1:2
    I2 = I2 + (r(i)^2 -1)/((r(i)+3)^2)
end

//Gaussian quadrature Integration three points
I3 = 0
for i =1:3
    I3 = I3 + Wt(i)*(t(i)^2 -1)/((t(i)+3)^2)
end

//Gaussian quadrature Integration three points
I4 = 0
for i =1:4
    I4 = I4 + Wf(i)*(f(i)^2 -1)/((f(i)+3)^2)
end

printf('\nResults')
printf('Integration of given function')
printf('\n One Point Integration I1 =%f',I1)
printf('\n Two Point Integration I2 =%f',I2) 
printf('\n Three Point Integration I3 =%f',I3) 
printf('\n Four Point Integration I4 =%f',I4) 
