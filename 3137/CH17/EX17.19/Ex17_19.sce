//Initilization of variables
W=100 //lb
lo=4 //ft
theta=45 //degrees
g=32.2 //ft/s^2
l=8/3 //ft
//Calculations
//Taking moment about point O and equating it to zero
alpha=(W*(lo*0.5)*cosd(theta))/((W/g)*(l)*2) //rad/s^2
//Summing forces in the t direction
Ot=(W*cosd(theta))-((W/g)*lo*0.5*alpha) //lb
//Work Done
Work=W*(lo*0.5*cosd(theta)) //ft/lb
//Moment of inertia
Io=(1/3)*(W/g)*(lo^2) //kg-ft^2
//Using the concept for work done=chane in K.E
w=sqrt(Work/(0.5*Io)) //rad/s
//Summing forces along the bar
On=-(-((W/g)*lo*0.5*w^2)-(W*cosd(theta))) //lb
//Result
clc
printf('The bearing reaction at O on the rod is %flb',On)
