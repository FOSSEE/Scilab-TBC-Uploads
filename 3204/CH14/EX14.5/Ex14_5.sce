// Initilization of variables
u=72*(1000/(60*60)) // km/hr // speed of the vehicle
s=300 // m // distance where the light is turning is red
t=20 // s // traffic light timed to remain red
// Calculations
// Now to find the acceleration we use the eq'n s=u*t+(1/2)*a*t^2
a=(((s)-(u*t))*2)/t^2 // m/s^2 (Deceleration) 
v=(u+(a*t))*((60*60)/1000) // km/hr // here we multiply with (60*60)/1000 to convert m/s to km/hr
// Results
clc
printf('(a) The required uniform acceleration of the car is %f m/s^2 \n',a)
printf('(b) The speed at which the motorist crosses the traffic light is %f km/hr \n',v)
