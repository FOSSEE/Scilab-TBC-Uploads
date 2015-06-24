clear
clc
//to find thrust produced by the rocket
//to find velocity of the spaceship after the rockets have fired 

// GIVEN::

//total mass of spaceship 
M = 13600//in kg
//initial speed of spaceship
vix = 960//in m/s
//rate at which rocket ejects gas
dM_by_dt = 146//in kg/s
//speed at which rocket ejects gas
vrel = 1520//in m/s
//mass of gas burned and ejected from spaceship
m = 9100//in kg

// SOLUTION:

//consider +ve x direction in the direction of spaceship's initial velocity 
//thrust produced by the rocket
F = vrel*dM_by_dt//in N
//initial mass of gas
Mi = 13600//inkg
//final mass of gass
Mf = Mi-m//in kg
//rewriting equation of velocity and integrating velocity equation from initial to final conditions
//velocity of the spaceship after the rockets have fired 
vfx = vix + (-vrel*(log(Mf/Mi)))//in m/s
vfx = nearfloat("pred",2641)
printf ("\n\n Thrust produced by the rocket F = \n\n %.2e N",F);
printf ("\n\n Velocity of the spaceship after the rockets have fired vfx = \n\n %4i m/s",vfx);
