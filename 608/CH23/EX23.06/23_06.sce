//Problem 23.06: Two impedances in an electrical network are given by Z1 = (4.7,35°) and Z2 = (7.3, -48)°. Determine in polar form the total impedance ZT given that ZT = Z1*Z2/(Z1 + Z2)

//initializing the variables:
r1 = 4.7; // magnitude
theta1 = 35; // in degree
r2 = 7.3; // magnitude
theta2 = -48; // in degree

//calculation:
x1 = r1*cos(theta1*%pi/180)
y1 = r1*sin(theta1*%pi/180)
z1 = x1+%i*y1
x2 = r2*cos(theta2*%pi/180)
y2 = r2*sin(theta2*%pi/180)
z2 = x2+%i*y2
z3 = z1*z2/(z1 + z2)
x3 = real(z3)
y3 = imag(z3)
r3 = (x3^2 + y3^2)^0.5
theta3 = atan(y3/x3)*180/%pi

printf("\n\n Result \n\n")
printf("\n ZT is (%.2f/_%.2f°)", r3,theta3)