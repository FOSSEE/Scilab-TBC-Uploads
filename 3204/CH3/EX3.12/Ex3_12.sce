// Initilization of variables
w1=1.5 //kN/m // intensity of varying load at the starting point of the beam
w2=4.5 //kN/m // intensity of varying load at the end of the beam
l=6 //m // ength of the beam
// Calculations
// The varying load distribution is divided into a rectangle and a right angled triangle
W1=w1*l //kN // where W1 is the area of the load diagram(rectangle ABED)
x1=l/2 //m // centroid of the rectangular load system
W2=(w2-w1)*l/2 //kN // where W1 is the area of the load diagram(triangle DCE)
x2=2*l/3 //m // centroid of the triangular load system
W=W1+W2 //kN // W is the resultant
x=((W1*x1)+(W2*x2))/W //m // where x is the distance where the resultant lies
//Results
clc
printf('The resultant of the distributed load system is %f kN \n',W)
printf('The line of action of the resulting load is %f m \n',x)
