clc;
l=0.5; // length of conductor lying along Y-axis
B=1.2; // Flux density along the X-axis
v=2; // velocity of conductor
//e=Blv; for maximum induced emf all the three quantities should be perpendicular to each other
e=B*l*v; 
printf('Maximum induced EMF in conductor is %f V',e);
