clc,clear
//Example 4.14
//To find linear and angular speed of a moving object

t=0.5 //time in second
r= 3 //radius in m of the circle
theta = %pi/3 // central angle in radian
w = theta/t //angular speed in rad /sec
v=w*r//linear speed in m/sec

printf('Angular speed= %f radian/sec\n',w)
printf('Linear speed = %f m/sec',v)

printf('\n\n(or)\n\nAngular speed= %f*pi radian/sec\n',w/%pi)
printf('Linear speed = %f*pi m/sec',v/%pi)
