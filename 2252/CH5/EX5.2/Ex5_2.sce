
l=80D-2//length of conductor
B=1.2//flux density of uniform magnetic field
v=30//velocity of conductor in m/s
//when the direction of motion is perpendicular to field
e=B*l*v
mprintf("emf induced in the conductor when the direction of motion is perpendicular to field=%f V\n",e)
//when the direction of motion is inclined 45 degrees to field
e=B*l*v*sin(%pi/4)
mprintf("emf induced in the coil when the direction of motion is inclined 45 degrees to field=%f V",e)
