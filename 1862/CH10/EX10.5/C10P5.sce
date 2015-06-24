clear
clc
//to find angular speed of combination of disk

//Given:
//refer to figure 10-17(a)and(b) from page no. 219
//mass of disk
M = 125//in g
//radius of disk
r = 7.2//in centimeters
// initial angular speed of disc about vertical axis
omega_i = 0.84//in rev/s

//Solution:
//completely inelastic collision.
//appllying conservation of angular momentum
//ratio of rotational inertia of disks
R = (1/3)
//angular speed of combination of disk
omega_f = omega_i*(R)//in rev/s

printf ("\n\n Angular speed of combination of disk omega_f = \n\n %.2f rev/s" ,omega_f);
