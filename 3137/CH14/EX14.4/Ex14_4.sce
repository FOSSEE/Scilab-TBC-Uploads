//Initilization of variables
V_A=20 //mi/h
V_B=70 //mi/h
theta1=60 //degrees
phi=45 //degrees
//Result
//Vector's in matrix form
v_A=[-V_A*cosd(phi),V_A*sind(phi)] //mi/h
v_B=[V_B*cosd(theta1),V_B*sind(theta1)] //mi/h
a=v_A(1)+v_B(1) //mi/h
b=v_A(2)+v_B(2) //mi/h
v_ab=sqrt(a^2+b^2) //mi/h
theta=atand(b/a) //degrees
//The relative velocity v_ba is just different in sign while the magnitude stays the same
//Result
clc
printf('The relative velocity is %fmi/h making an angle %fdegres',v_ab,theta)
