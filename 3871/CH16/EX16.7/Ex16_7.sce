//=====================================================================================
//Chapter 16 example 7

clc;clear all;

//variable declaartion
l    = 0.025;    //length of plates in m
d    = 0.005;    //distance between plates in m
S    = 0.2;      //the distance between the screen and centre of plates in m
Va    = 2500;    //accelerating voltage in V

//calculations 
//y   = (s*(d/2))/(l/2)
y    = (S*d)/(l);    //defelction in m

//result
mprintf("deflection= %3.2f m",y);
