//Initilization of variables
theta1=73.9 //degrees
V=900 //mm/s
theta2=60 //degrees
theta3=46.1 //degrees
//Calculations
BC=sqrt((350*350)+(86.6*86.6)) //mm
CD=400 //mm
v_cb=(V*sind(theta2))/(sind(theta1)) //mm/s
v_c=((V*sind(theta3)))/(sind(theta1)) //mm/s
w_dc=v_c/CD //rad/s
w_cb=v_cb/BC //rad/s
//Result
clc
printf('The angular velocities are w_dc=%frad/s,w_bc=%frad/s',w_dc,w_cb)
