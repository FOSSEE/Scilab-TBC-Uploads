// Initilization of variables
r=200 // m // radius of the curved road
v_1=72*(1000/3600) // m/s // initial speed of the car
v_2=36*(1000/3600) // m/s // speed of the car after 10 seconds
t=10 // seconds
// Calculations
A_n=v_1^2/r // m/s^2 // normal component of acceleration
A_t=0 // since dv/dt=0 // tangential component of acceeration
delv=v_1-v_2
delt=t-0
a_t=delv/delt // m/s^2 // tangential component of deceleration after the brakes are applied
a_n=v_1^2/r // m/s^2 // normal component of deceleration  after the brakes are applied
// Results
clc
printf('The normal component of acceleration is %f m/s^2 \n',A_n)
printf('The tangential component of acceleration is %f m/s^2 \n',A_t)
printf('The normal component of deceleration is %f m/s^2 \n',a_n)
printf('The tangential component of deceleration is %f m/s^2 \n',a_t)
