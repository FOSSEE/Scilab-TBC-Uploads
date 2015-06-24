
clear
 clc
//to find direction in which Fred is skating after breaking in contact

// GIVEN::
//we consider +ve x direction for initial motion
//refer to figure 6-11 on page no. 125
//mass of Fred
mF = 75//in kg
//mass of Ginger cart
mG = 55//in kg
//common velocity of Fred ang Ginger
vG = 3.2//in m/s
vF = 3.2//in m/s 
//after breaking contact angle of Ginger skating
theta1 = 32//in degrees

// SOLUTION:

//refer to figure 6-11(a) on page no. 125
//using consevation of momentum
//x component of Ginger orignal momentum
PGx = mG*vG //in kgm/s 
//x component of Fred orignal momentum
PFx = mF*vF //in kgm/s 
//after they push off y component of Ginger momentum
PGy = PGx*tand(theta1)//in kgm/s
//after they push off y component of Fred momentum will be opposite that of Ginger
//using consevation of momentum
PFy = -(PGy)//in kgm/s
tan_theta = (PFy/PFx)
//direction in which Fred is skating after breaking in contact
theta = atand(PFy/PFx)//in degrees
PGy = round(PGy)
theta = round(theta)

printf ("\n\n X component of Ginger orignal momentum PGx = \n\n %3i Kg.m/s",PGx);
printf ("\n\n X component of Fred orignal momentum PFx = \n\n %3i Kg.m/s",PFx);
printf ("\n\n After they push off y component of Ginger momentum PGy = \n\n %3i Kg.m/s",PGy);
printf ("\n\n Value of tan_theta = \n\n %.3f degrees",tan_theta);
printf ("\n\n Direction in which Fred is skating after breaking in contact theta = \n\n %2i degrees",theta);
