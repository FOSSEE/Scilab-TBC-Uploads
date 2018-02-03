clear
//

// A hollow right circular cylinder of radius 800 mm is open at both ends and rests on a smooth horizontal plane. Inside the cylinder there are two spheres having weights 1 kN and 3 kN and radii 400 mm and 600 mm, respectively. The lower sphere also rests on the horizontal plane. 
// Join the centres of spheres, O1 and O2 and drop O1D perpendicular to horizontal through O2. 

//variable declaration
R=800.0
W1=1.0
r1=400.0
W2=3.0
r2=600.0
O1O2=1000              //mm
O2D=600                //mm

//If alpha is the inclination of O2O1 to horizontal
alpha=acos(O2D/O1O2)

//Free body diagrams of cylinder and spheres are shown.  Considering the equilibrium of the spheres.
//Sum of Moment at O2

R1=W1*O2D/(O1O2*sin(alpha))
//sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up

R2=R1
R3=W1+W2

//Sum of Moment at A

W=R1*O1O2*sin(alpha)/R

printf("\n W= %0.2f  KN",W)
