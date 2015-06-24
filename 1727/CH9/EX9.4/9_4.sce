clc
//Initialization of variables
k=1.5
r=40 //cm
theta=45 //degrees
//calculations
vr= -2*k*r*cosd(2*theta)
vt= 2*k*r*sind(2*theta)
//results
printf("velocity in radial direction = %d cm/s",vr)
printf("\n velcoity in angular direction = %d cm/s",vt)
