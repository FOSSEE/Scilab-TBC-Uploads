//Initilization of variables
W=322 //lb
F=12 //lb
a=0 //lower limit (where the cyliner starts rolling)
b=%pi/2 //Upper Limit (where the cyliner stops rolling)
d=3.2 //ft
g=32.2 //ft/s^2
//Calculations
dR=1.6 //Differential Radius
d_U=2*dR*F //differential work done
//Integration Calculations
//As it is a simple integration we can resort to this
U=d_U*(b-a) //ft-lb
//Determination of K.E
w=sqrt(U/((0.5*(W/g)*(1/(d/2)^2))+((0.5*0.5)*(W/g)*(d/2)^2))) //rad/s
//Result  
clc
printf('the angular velocity of the is %f rad/s',w)
