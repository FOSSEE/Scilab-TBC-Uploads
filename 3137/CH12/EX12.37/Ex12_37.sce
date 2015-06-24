//Initilization of variables
V_ao=29.3 //ft/s
OA=50 //ft
theta=45 //degrees
OB=50*sqrt(2) //ft
//Calculations
w_ao=V_ao/OA //rad/s
V_bo=V_ao*cosd(theta) //ft/s
w_bo=V_bo/OB //rad/s
//Result
clc
printf('The angular velocity with respect to the observer is %frad/s\n The angular velocity after moving 50ft is %frad/s',w_ao,w_bo) 
