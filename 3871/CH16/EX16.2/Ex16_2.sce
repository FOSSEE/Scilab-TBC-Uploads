//=====================================================================================
//Chapter 16 example 2

clc;clear all;

//variable declaration
l    = 0.02;    //length of plates in m
d    = 0.005;    //distance between plates in m
S    = 0.3;      //the distance between the screen and centre of plates in m
Va   =2000;     //accelerating voltage in V
Y    =0.03;     //trace length in m


//cacualtions
//y   = lSVd/(2*d*Va)
Vd   = (d*Va*x)/(l*S);   //deflection voltgae in V
Vrms   = Vd/(sqrt(2));    //rms value of sinusoidal voltage applied to the X-deflecting plates in V
Vin  = Vrms/(Vd);      //input voltage required in V

//result
mprintf(" nput voltage required = %3.3f V",Vin);
