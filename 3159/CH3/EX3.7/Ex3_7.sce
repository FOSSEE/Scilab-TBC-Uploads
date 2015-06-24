//  Determine Interplanar spacing and miller indices
clc
a = 3.16 // lattice parameter in angstrom
l1 = 1 // line number
l2 = 2 // line number
l3 = 3 // line number
l4 = 4 // line number
theta1 = 20.3 // angle for line 1
theta2 = 29.2// angle for line 2
theta3 = 36.7// angle for line 3
theta4 = 43.6// angle for line 4
n = 1 // order 
lambda = 1.54 // wavelength in angstrom
printf("\n Example 3.7")
d1 = lambda/(2*sin(theta1*%pi/180))
d2 = lambda/(2*sin(theta2*%pi/180))
d3 = lambda/(2*sin(theta3*%pi/180))
d4 = lambda/(2*sin(theta4*%pi/180))
x1 = a^2/d1^2  
x2 = a^2/d2^2  
x3 = a^2/d3^2  
x4 = a^2/d4^2 // where x is function of h,k and l
printf("\n Interplanar spacing is  %.3f angstrom ",x1) // answer in book is 2.220 angstrom
if  floor(x1) == 2 then
    printf("\n\n For a^2/d^2 = %d \t Reflection plane is {110}",x1)
end

if floor(x2) == 4 then
        printf("\n For a^2/d^2 = %d \t Reflection plane is {200}",x2)
end

 if floor(x3) == 6 then
    printf("\n For a^2/d^2 = %d \t Reflection plane is {211}",x3) 
end

 if floor(x4) == 8 then
    printf("\n For a^2/d^2 = %d \t Reflection plane is {220}",x4) 
end

