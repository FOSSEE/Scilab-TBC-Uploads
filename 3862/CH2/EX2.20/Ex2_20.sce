clear
//

//The body is in equilibrium under the action of applied force P, self-weight 1500 N and normal reaction R from the plane. Since R, which is normal to the plane, makes 30° with the vertical (or 60° with the horizontal), 

//variable declaration
W=1500.0                //weight of block,N
theta=30.0*%pi/180      //angle of inclination 

//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

R=W/cos(theta)
printf("\n R= %0.2f  N",R)

P=R*sin(theta)
printf("\n P= %0.2f  N",P)
