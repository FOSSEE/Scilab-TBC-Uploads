clc
clear
//Initialization of variables
kp=1.09
kp2=0.154
feed=[ 1 5 0 0 0 ]
//calculations
x=poly(0,"x")
vec=roots(kp/4^4 /4 *(1-x)*(5-2*x)^2 *(6+2*x)^2 -x^5)
x=vec(5)
pro=feed- [x 2*x -x -4*x 0]
y=poly(0,"y")
vec2=roots(kp2*(0.273-y)*(0.727-y)*(7.454+2*y)^2 - 4*y^2 *(2.908+2*y)^2 *4)
y=vec2(4)
pro2=pro-[ y 0 y -2*y -2*y]
z=poly(0,"z")
vec3= roots(kp*(0.189-z)*(3.546-2*z)^2 *(7.622+2*z)^2 -(0.643+z)*(3.076+4*z)^4 *4)
z=vec3(5)
pro3=pro2 - [z 2*z -z -4*z 0]
w=poly(0,"w")
vec4=roots(kp2*(0.229-w)*(0.603-w)*(7.542+2*w) - (2.916+2*w)^2 *(0.168+2*w)^2 *4)
w=vec4(4)
w=0.01
pro4=pro3-[w 0 w -2*w -2*w]
//results
disp("feed = ")
format('v',6);feed
disp(feed)
disp("After reactor 1,")
format('v',6);pro
disp(pro)
disp("After reactor 2,")
format('v',6);pro2
disp(pro2)
disp("After reactor 3,")
format('v',6);pro3
disp(pro3)
disp("After reactor 4")
format('v',6);pro4
disp(pro4)
disp("The answers are a bit different due to rounding off error in textbook")
