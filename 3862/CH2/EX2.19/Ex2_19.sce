clear
//

//Free body diagram of the sphere  shows all the forces moving away from the centre of the ball. Applying Lami’s theorem to the system of forces.

//variable declaration
W=100.0                //weight of sphere,N
theta=15.0*%pi/180      //angle of inclination of string with wall

T=(W*sin((%pi/2)))/sin((%pi/2)+theta)
R=(W*sin((%pi-theta)))/sin((%pi/2)+theta)
printf("\n T= %0.2f  N",T)
printf("\n R= %0.2f  N",R)
