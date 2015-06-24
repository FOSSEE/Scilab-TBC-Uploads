clear;
clc;
funcprot(0);

//given data
X = 10583;//in N
D = 30;//rotor diameter in m
Cx = X/23856;
rho = 1.2;//density in kg/m^3
cx1 = 7.5;//in m/s

//sloving quadratic eqaution
a = 0;//inital guess
res = 1;
i = 0;
while (res~=0)
    res = a*(1-a) - Cx/4;
    if (res>0) then
        a = a-0.001;
    elseif (res<0)
        a = a+0.001;
    end
    if abs(res)<0.0001
        break;
    end    
end
A2 = 0.25*%pi*D^2
P = 2*rho*A2*(cx1^3)*a*(1-a)^2;

//Results
printf('P = %.3f kW.',P/1000);

//there is small error in the answer given in textbook
