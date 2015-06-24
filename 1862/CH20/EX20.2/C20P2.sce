clear
clc
//to find speed of missile measured by observer on the Earth

//Given:
//refer to figure 20-9 from page no. 457
//speed of spaceship
u = 0.80// times c
//speed of missile
v0 = 0.60//times c


//Solution:
//appiying formule for relativistic addition of velocities
//speed of missile measured by observer on Earth
v = (v0+u)/(1+(v0*u))//times c

printf ("\n\n Speed of missile measured by observer on the Earth v = \n\n %.2fc" ,v);
