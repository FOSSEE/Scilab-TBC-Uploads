


 clc
//to find velocity of alpha partical after collision
//to find which type of collision is this listed in fig. 6-17

// GIVEN::
//refer to diagram 6-17 from page no. 130

//we consider +ve x direction as initial velocity of alpha partical
//mass of alpha partical m1 = 4.0u
//assume u = 1
ma = 4.0
//mass of oxygen nucleus m2 = 16.0u
//assume u = 1
mo = 16.0
//initial velocity of alpha partical in +ve x direction
vaix = 1.52*10^7//in m/s
//initial velocity of oxygen nucleus in +ve x direction
//as oxygen nucleus is initially at rest 
voix = 0//in m/s
//final velocity of oxygen nucleus after collision
vofx = 6.08*10^6//in 


// SOLUTION:

//applying law of conservation of momentum in x direction
//final velocity of alpha partical after collision in x direction
vafx = ((ma*vaix)-(mo*vofx))/ma//in m/s
//applying law of conservation of momentum in x direction
//we can find out collision is elstic collision as alpha partical only reverses the direction of momentum after collision
//relative velocity
vx = (ma*vaix+mo*voix)/(ma+mo)//in m/s

printf ("\n\n Final velocity of alpha partical after collision in x direction vafx = \n\n %.2e m/s",vafx);
printf ("\n\n Relative velocity vx  = \n\n %.3e m/s",vx);
printf ("\n\n Collision is elstic collision");
