
//Function to calculate the roots of a cubic equation
function[r]  = cubic(a, b, c)
//Use Gerolamo Cardano's solution for cubic equations with real roots
//roots function can also be used
//Use auxiliary variables p and q
p =((3 * b)-(a^2))/3
q =(c)+((2 * (a^3))/27)-((a * b)/3) 
//Calculate discrimant Di for the cubic equation
Di = ((p/2)^2)+((q/3)^3)
//Calculate values of cos(Fi) and Fi
if(p<0)
//For |p|
    p = p * -1 
end
Fi = acos((-1 * q)/(2 * (sqrt((p/3)^3))))
Fi1 = Fi/3
Fi2 = (Fi + (4 *%pi))/3
Fi3 = (Fi + (2 *%pi))/3
//x,y and z are the three real distinct roots of the cubic equation
x = (-1 * (a/3)) + (2 * cos(Fi1) * sqrt(p/3))
y = (-1 * (a/3)) + (2 * cos(Fi2) * sqrt(p/3))
z = (-1 * (a/3)) + (2 * cos(Fi3) * sqrt(p/3))
printf('\nx,y and z are the three real roots of this cubic equation\n')
printf('x = %f\ny = %f\nz = %f\n',x,y,z)
//d should be maximum for cost and area of friction lining to be minimum
//Assigning proper value to d
if (x > y) then
    e = x
    if (e > z) then
        r = e
    else
        r = z
    end
else 
    e = y
    if (e > z) then
        r = e
    else
        r = z
    end
end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution11_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data11_3.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Consider torque transmitted by one pair of contacting surfaces
Mt = Mt / 2
printf('\nApplying uniform-wear theory\n')
//Evaluate the inner diameter of the friction disk d (mm)
printf('\nInner diameter of the friction disk is d (mm)\n')
printf('\nUsing the torque transmitting capacity formula:\n')
printf('\nMf = (pi * mu * Pa * d)*((D^2)-(d^2)))/8\n')
printf('we get the following cubic equation in d\n')
//Representing cubic equation in the form x3 + ax2 + bx + c = 0 (x=d)
a = 0
b = -1 * (D^2)
c = (8 * Mt * 1000)/(%pi * mu * Pa)
printf('\n(d^3) + (%fd) + (%f)= 0\n',b,c)
//Call the declared function
d = cubic(a, b, c)
//Evaluate spring force P (N)
P = ((%pi * Pa * d)*(D - d))/2
//Print results
printf('\nInner diameter of the friction disk(d)= %f(mm)\n',d)
printf('\nSpring force for keeping the clutch engaged(P)= %f(N)\n',P)