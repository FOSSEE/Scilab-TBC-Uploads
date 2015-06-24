clc,clear
//Example 6.10
//To represent given complex number in trigonometric form

z=-2 + -1*%i ;//given number
x=real(z) ;//real part 
y=imag(z) ;//imaginary part

//theta is in third quadrant as x and y are -ve
theta=180 + atand(y/x);
r=sqrt(x^2+y^2) ;//modulus of z
printf('z= %f + i* %f  can be written as: \n',real(z),imag(z))
printf('z = sqrt(%.0f)*(cos(%.1f)+i*sin(%.1f))',r^2,theta,theta)

