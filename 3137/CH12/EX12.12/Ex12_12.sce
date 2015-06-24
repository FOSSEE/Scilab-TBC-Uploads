//Initilization of variables
//Calling upward direction positive
xdot1=6 //ft/s
xdot3=3 //ft/s
xdoubledot=2 //ft/s^2
xdoubledot3=-4 //ft/s^2
//Calculations
xdot=-xdot1 //ft/s
xdot2=2*xdot-xdot3 //ft/s
xdoubledot2=2*xdoubledot-xdoubledot3 //ft/s^2
//Result
clc
printf('The value of velocity is %f ft/s and acceleration is %f ft/s^2',xdot2,xdoubledot2)
