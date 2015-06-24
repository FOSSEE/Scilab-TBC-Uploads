//Initilization of variables
W=2.5 //lb
w=36 //rad/s
Idisk=0.4 //slug-ft^2
g=32.2 //ft/s^2
//Calculations
Ii=Idisk+(2*(W/g)*(3/12)^2) //slug-ft^2
If=Idisk+(2*(W/g)*(11/12)^2) //slug-ft^2
//Since no external moments act
//Applying conservation of momentum
wf=(Ii*w)/If //rad/s
//Result
clc
printf('The final angular speed is %f rad/s',wf)
