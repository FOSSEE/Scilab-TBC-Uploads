clear
//

//When the roller is about to turn over the curb, the contact with the floor is lost and hence there is no reaction from the floor. The reaction R from the curb must pass through the intersection of P and the line of action of self weight, since the body is in equilibrium under the action of only three forces (all the three forces must be concurrent). 

//variable declaration
W=2000.0               //weight of roller,N
r=300.0                //radius of roller,mm
h=150.0                // height of curb,mm
OC=r-h
AO=r

alpha=acos(OC/AO)

//angleOAB=angleOBA,Since OA=OB,
angleOBA=(alpha)/2

//the reaction makes 30° with the vertical
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

R=W/cos(angleOBA)
P=R*sin(angleOBA)

printf("\n P= %0.2f  N",P)

//Least force through the centre of wheel: Now the reaction from the curb must pass through the centre of the wheel since the other two forces pass through that point. Its inclination to vertical is theta = 60°. If the triangle of forces ABC  representing selfweight by AB, reaction R by BC and pull P by AC, it may be observed that AC to be least, it should be perpendicular to BC. In other words, P makes 90° with the line of action of R.
//From triangle of forces ABC, we get 
P=W*sin(alpha)
printf("\n P= %0.2f  N",P)
