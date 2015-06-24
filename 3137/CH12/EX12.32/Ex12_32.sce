//Initilization of variables
//The symbols used here differ from the textbook solution to avoid conflict 
t1=0 //s
t2=0.5 //s
t3=2.5 //s
t4=1/3 //s
w=200 //rpm
w0=0 //rpm
//Calculations
theta1=0.5*(w0+w/60)*t2 //rev
theta2=(w/60)*(t3-t2) //rev
theta3=0.5*(w/60+w0)*t4 //rev here the values of w and w0 are interchanged but essentially the value comes out to be the same hence the decleration has not been changed
theta=theta1+theta2+theta3 //rev
//Result
clc
printf('The wheel undergoes %f of rotations',theta)
