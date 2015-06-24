clear
clc
//to find work done by three different paths

//Given:
//refer to figure 23-17 from page no. 529
//final volume
vf = 1.0//in m^3
//initial volume
vi = 4.0//in m^3
//final pressure
pf = 40//in Pa
//initialvolume
pi = 10//in Pa

//Solution:
//applying laws of thermodynamics
//work done by constant pressure in path 1
W = -pi*(vf-vi)//in J
//work done in constant volume in path 1
w = 0//in J
//work done by path 1
W1 = W+w//in J
//work done by path 2
W2 = -pi*vi*(log(vf/vi))//in J
//work done by path 3
W3 = 0-(pf*(vf-vi))//in J

printf ("\n\n Work done by constant pressure in path 1 W = \n\n %2i J" ,W);
printf ("\n\n Work done by path 1 W1 = \n\n %2i J" ,W1);
printf ("\n\n Work done by path 2 W2 = \n\n %2i J" ,W2);
printf ("\n\n Work done by path 3 W3 = \n\n %2i J" ,W3);
