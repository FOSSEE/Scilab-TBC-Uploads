//=====================================================================================
//Chapter 16 example 5

clc;clear all;

//variable declaration
l    = 0.02;    //length of plates in m
d    = 0.005;    //distance between plates in m
S    = 0.2;      //the distance between the screen and centre of plates in m
Va    = 2500;    //accelerating voltage in V

//calculations
Sd    = (l*S)/(2*d*Va);            //deflection sensitivity of the tube in mm/V

//result
mprintf("deflection sensitivity of the tube %3.2f mm/V",(Sd*10^3));

