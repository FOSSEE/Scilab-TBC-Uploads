clc
clear
//Input data
C=[1.5145,1.5170,1.5230]//Refractive index of the crown glass for C,D and F line respectively
F=[1.6444,1.6520,1.6637]//Refractive index of the flint glass for C,D and F line respectively

//Calculations
w1=(C(3)-C(1))/(C(2)-1)//Dispersive power of the first lens 
w2=(F(3)-F(1))/(F(2)-1)//Dispersive power of the second lens 

//Output
printf('The dispersive power for crown glass is %3.4f \n The dispersive power for the flint glass is %3.5f',w1,w2)
