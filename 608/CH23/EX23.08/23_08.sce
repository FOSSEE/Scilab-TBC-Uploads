//Problem 23.08: Determine the two square roots of the complex number (12 + i5) in cartesian and polar form, correct to three significant figures. Show the roots on an Argand diagram.

//initializing the variables:
z = 12 + %i*5;

//calculation:
x = real(z)
y = imag(z)
r = (x^2 + y^2)^0.5
theta1 = atan(y/x)*180/%pi
if ((x<0)&(y<0)) then
    theta1 = theta1 -180;
elseif ((x<0)&(y>0)) then
    theta1 = theta1 +180;
end
theta2 = theta1 + 360
rtheta1 = theta1/2
rtheta2 = theta2/2
if (rtheta2 > 180) then
    rtheta2 = rtheta2 -360;
elseif ((x<0)&(y>0)) then
    rtheta2 = rtheta2 +360;
end
rr = r^0.5
x1 = rr*cos(rtheta1*%pi/180)
y1 = rr*sin(rtheta1*%pi/180)
z1 = x1 + %i*y1
x2 = rr*cos(rtheta2*%pi/180)
y2 = rr*sin(rtheta2*%pi/180)
z2 = x2 + %i*y2

printf("\n\n Result \n\n")
printf("\n two roots are (%.2f + (%.2f)i) and (%.2f + (%.2f)i)", x1,y1,x2,y2)
printf("\n two roots are (%.1f/_%.2f°) and (%.1f/_%.2f°)", rr,rtheta1, rr,rtheta2)