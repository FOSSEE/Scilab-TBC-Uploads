


 clc
//to find final speed of larger craft

// GIVEN::
//refer to diagram 6-14 from page no. 127

//we consider +ve x direction as original motion of spaceship(and also that of final velocity of smaller craft)
//total mass of spaceship
//M = m//in kg
//let us consider m = 1
M = 1//in kg 
//mass of smaller crafy
//m1 = m/4//in kg
m1 = 1/4//in kg
//mass of larger craft
//m2 =3* m/4//in kg
m2 =3* 1/4//in kg
//initial velocity of spaceship in +ve x direction
vix = 8.45//in km/s
//final speed of smaller craft in +ve x direction
v1fx = 11.63//in km/s


// SOLUTION:

//applying conservation of momentum
//final velocity of larger craft in +ve x direction
v2fx = (((m1 + m2)*vix)-(m1*v1fx))/m2//in m/s

printf ("\n\n Final velocity of larger craft in +ve x direction v2fx  = \n\n %.2f km/s",v2fx);
