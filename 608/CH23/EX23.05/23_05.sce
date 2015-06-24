//Problem 23.05: Convert (5,-132°) into a + ib form correct to four significant figures.

//initializing the variables:
r = 5; // magnitude
theta = -132; // in degree

//calculation:
x = r*sin(theta*%pi/180)
y = r*cos(theta*%pi/180)
z = x+%i*y

printf("\n\n Result \n\n")
printf("\n Z is %.3f + (%.3f)i", x,y)