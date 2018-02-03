clear
//


// Let O1 and O2 be the centres of the first and second spheres. Drop perpendicular O1P to the horizontal line through O2. show free body diagram of the sphere 1 and 2, respectively. Since the surface of contact are smooth, reaction of B is in the radial direction, i.e., in the direction O1O2. Let it make angle a with the horizontal. Then,

//Variable declaration

W=100.0                     //weight of spheres,N

r=100.0                     //radius of spheres,mm

d=360.0                     // horizontal channel having vertical walls, the distance b/w,mm

O1A=100.0
O2D=100.0
O1B=100.0
BO2=100.0

O2P=360.0-O1A-O2D
O1O2=O1B+BO2

alpha=acos(O2P/O1O2)

//////sum of vertical Fy & sum of horizontal forces Fx is zero
//Assume direction of Fx is right
//Assume direction of Fy is up
RB=W/sin(alpha)
RA=RB*cos(alpha)
printf("\n RB= %0.2f  N",RB)
printf("\n RA= %0.2f  N",RA)

RC=100+RB*sin(alpha)

RD=RB*cos(alpha)

printf("\n RC= %0.0f  N",RC)

printf("\n RD= %0.2f  N",RD)
