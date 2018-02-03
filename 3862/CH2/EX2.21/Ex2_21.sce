clear
//

//A bar can develop a tensile force or a compressive force. Let the force developed be a compressive force S (push on the cylinder). 

//variable declaration
W=10.0                //weight of Roller,KN
IL=7.0                //inclined loading at angle of 45°,KN
H=5.0                 //Horizontal loading ,KN

theta=45.0*%pi/180      //angle of loading of IL
thetaS=30.0*%pi/180.0 

//Since there are more than three forces in the system, Lami’s equations cannot be applied. Consider the components in horizontal and vertical directions. 
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

S=(-H+IL*cos(theta))/cos(thetaS)
printf("\n S= %0.3f  N",S)

printf("\n Since the value of S is negative the force exerted by the bar is not a push, but it is pull (tensile force in bar) of magnitude %0.3f   kN.",-S)
 
R=W+IL*sin(theta)-S*sin(thetaS)
printf("\n R= %0.3f  kN",R)
