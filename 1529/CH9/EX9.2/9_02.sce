//Chapter 9, Problem 2
clc;
E=9;                    //emf
B=0.6;                  //flux density
l=75*10^-3;             //length of conductor
//since the conductor, the field and the direction of motion are mutually perpendicular
//calculating velocity
v=E/(B*l); 
printf("Velocity = %f m/s",v);
