clc
clear
//input data
a=1.28 //refractive index of X
b=1.41 //refractive index of Y
//calculation of condition for total internal reflection
x=(a/b) 
c=asind(x) // calculating critical angle
//output
printf("light incident with an angle greater than %3.3f degrees will be totally internally reflected",c)
