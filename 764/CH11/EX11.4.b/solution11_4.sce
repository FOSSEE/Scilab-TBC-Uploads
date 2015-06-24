
//(Friction Clutches) Example 11.4
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
path = get_absolute_file_path('solution11_4.sce')
//Obtain path of function file
datapath = path + filesep()+'function11_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Define variable i and arrays y and z
i = 1
//Initialise y and z vectors
y = zeros(1,11)
z = zeros(1,11)
printf('\nTorque characteristic(T) is given by:\n')
printf('\nT = (8 * Mt)/(pi * mu * Pa * (D^3))\n')
printf('\nd/D = x\n')
//x is the independent variable and T is the dependent variable
//Store values of x and T in y and z vectors
for x=0:0.005:1
    T = tchar(x)
    y(1,i) = x
    z(1,i) = T
    i = i + 1
end
//Plot the graph
plot(y,z)
//Get the handle of current axes
g = gca()
//Give labels and set label properties
g.labels_font_color=5
g.font_size=2
g.grid=[2,2]
g.box="off"
title('Variation of Torque against d/D')
xlabel('d/D')
ylabel('Torque characteristic')
a = max(z)
printf('\nMaximum value of torque characteristic(Tmax) = %f\n',a)
//Find corresponding value of d/D
r = cubic(0, -1, a) 
//As two positive roots are almost equal, print their average value
printf('\nd/D value corresponding to Tmax = %f\n',r)






 
