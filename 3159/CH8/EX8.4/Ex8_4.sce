// Calculate time required to get required boron concentration
clc
D = 4e-17 // diffusion coefficient
c1 = 0
cs = 3e26
c_x = 1e23 // number of atoms
x = 2e-6 // depth in m
printf("\n Example 8.4")
A = cs
B = cs - c1
k = (A-c_x)/B
if k >0.99966 then
    if k< 0.9997 then
        z = 2.55 // from table
    end
end
t = x^2/(z^2*4*D)// time in sec

printf("\n Time required to get required boron concentration is %d sec",t)// answer in book is 3845 sec

