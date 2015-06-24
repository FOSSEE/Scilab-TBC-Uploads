//Initilization of variables
Wp=130 //lb
Wb=150 //lb
Wbullet=2/16 //lb
g=32.2 //ft/s^2
vbullet=1200 //ft/s
//Calculations
v=((-Wbullet/g)*vbullet)/((Wb+Wp)/g) //ft/s
//Result
clc
printf('The speed of the boat is %f ft/s',v)
//Negative sign indicates direction opposite to that of bullet
