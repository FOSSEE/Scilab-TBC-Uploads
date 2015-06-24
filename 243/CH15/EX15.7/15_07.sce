//Example No. 15_07
//Hyperbolic Equations
//Pg No. 500
clear ; close ;clc ;

h = 1
Tbyp = 4
tau = sqrt(h^2 /4)
r = 1+(2.5 - 0)/tau
c = 1+(5 - 0)/h
for i = 2:c-1
    f(1,i) = (i-1)*(5 - (i-1) )
end
f(1:r,1) = 0
f(1:r,c) = 0
for i = 2:c-1
    g(i) = 0
    f(2,i) = (f(1,i+1) + f(1,i-1))/2 + tau*g(i) 
end
for j = 2:r-1
    for i = 2:c-1
        f(j+1,i) = -f(j-1,i) + f(j,i+1) + f(j,i-1)
    end
end
disp(f,'The values estimated are ')
