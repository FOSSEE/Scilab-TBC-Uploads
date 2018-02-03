clear
//

//variable declaration

P1=300.0
P2=500.0
thetaI=30.0*%pi/180.0
thetaP2=30.0*%pi/180
thetaP1=40.0*%pi/180
// Let the x and y axes be If the resultant is directed along the x axis, its component in y direction is zero.
//Taking horizontal direction towards left as x axis and the vertical downward direction as y axis. 
////sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

F=(P2*sin(thetaP2))/(P1)
theta=(asin((F/(cos(20*%pi/180)*2)))*180/%pi)-20

printf("\n theta= %0.2f  °",theta)
