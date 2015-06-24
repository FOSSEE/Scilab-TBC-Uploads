// 1 APPENDIX. Ex no 13. Page no 648
// Initilization of vriables
// Notations have been changed
// Force Vector
F=[50,-80,30]
// from fig.13
theta1=30 // angles by which the axis is rotated ( all in degrees)
theta2=60
theta3=90
theta4=120
theta5=0
// Calculations
// Unit vector in u-direction
u_unit=[1*cosd(theta1),1*cosd(theta2),1*cosd(theta3)]
// Unit vector in v-direction
v_unit=[1*cosd(theta4),1*cosd(theta1),1*cosd(theta3)]
// Unit vector in w-direction
w_unit=[1*cosd(theta3),1*cosd(theta3),1*cosd(theta5)]
// Components of force
// finding the dot product as
u=F(1)*u_unit(1)+F(2)*u_unit(2)+F(3)*u_unit(3) // N
v=F(1)*v_unit(1)+F(2)*v_unit(2)+F(3)*v_unit(3) // N
w=F(1)*w_unit(1)+F(2)*w_unit(2)+F(3)*w_unit(3) // N
// Results
clc
printf('The components of the force is,along u=%f N,along v=%f N,along w=%f N \n',u,v,w)
