
//Problem 7
//Calculation of various orders in which Bragg's reflection takes place
clear
clc
w=1.5//wavelength of monochromatic X-rays in A
d=1.61//interplanar spacing in A
a=1,b=2,c=3//a=1 for 1st order b=2 for 2nd order and c=3 for 3rd order
x=asind((a*w)/(2*d))//angle of reflection in 1st order in degrees
y=asind((b*w)/(2*d))//angle of reflection in 2nd order in degrees
Q=(c*w)/(2*d)//Q is the sine of angle of reflection in 3rd order 
printf('angle of reflection in 1st order = %.3f degrees\n',x)
printf('angle of reflection in 2nd order = %.3f degrees\n',y)
printf('sine of angle of reflection in 3rd order = %.3f \n',Q)
printf('now z(angle of reflection in 3rd order ) > 90 degrees therefore there is no third order maxima \n hence 1st and 2nd order maxima would be possible')