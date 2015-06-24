//Initilization of variables
Wa=96.6 //lb
Wb=128.8 //lb
g=32.2 //ft/s^2
I=12 //slug-ft^2
v=16 //ft/s
ratio=1/3 //ratio of Sb/Sa
r=3//ft
va=6 //ft/s
vb=2 //ft/s
//Calculations
//Work Done without S in it
W=Wa-(ratio*Wb)
//System has zero KE initially and final KE is given by
w=va/r //rad/s
T2=(0.5*(Wa/g)*va^2+0.5*I*w^2+0.5*(Wb/g)*vb^2) //ft-lb
//Distance Calculations
S=T2/W //ft
//Result
clc
printf('The distance through which A falls is %f ft',S)
