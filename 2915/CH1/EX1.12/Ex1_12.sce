clc,clear
//Example 1.12
//To find the height of mountain

//from the figure
//h is height of mountain in degree
//x is distance from base of mountain to the point under top of mountain

d1=400 //initial ditance from base of mountain in feet
d2=500 //final ditance from base of mountain in feet
theta1=25 //initial angle of elevation in degrees
theta2=20 //final angle of elevation in degrees

//from the figure
//h= (x+d1) * tand(theta1)
//h= (x+d2) * tand(theta2)
//eliminating h and solving for x
x=((d1+d2)*tand(theta2) - d1*tand(theta1))/(tand(theta1)-tand(theta2))
//substituting x in expression for h
h= (x+d1) *tand(theta1)
printf('Height of mountain = %.0f feet',h)
