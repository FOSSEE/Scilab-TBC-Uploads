clear
clc
//to find final velocity of particalas measured in the laboratory frame 

//Given:
//refer to figure 20-14 from page no. 461
//velocity of partical
vx_dash = 0.60//times c
////velocity of partical w.r.t. frame moving with it
u = 0.60//times c
//speed of light
c = 3.00e8//in m/s

//Solution:
//appiying transformations of velocities
//final velocity of particalas measured in the laboratory frame
vx = (vx_dash+u)/(1+(u*vx_dash))//times c

printf ("\n\n Final velocity of particalas measured in the laboratory frame vx = \n\n %.2fc" ,vx);
