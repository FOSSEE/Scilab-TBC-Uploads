//=====================================================================================
//Chapter 16 example 1


clc;clear all;

//variable declaration
l    = 0.025;    //length of plates in m
d    = 0.005;    //distance between plates in m
S    = 0.2;      //the distance between the screen and centre of plates in m
Va   =3000;     //accelerating voltage in V
x    =0.1;     //trace length(2*y) in m


//cacualtions
//y   = lSVd/(2*d*Va)
Vd   = (d*Va*x)/(l*S);   //deflection voltgae in V
Vrms   = Vd/(sqrt(2));    //rms value of sinusoidal voltage applied to the X-deflecting plates in V
Sd     = (l*S)/(2*d*Va);       //deflection voltage in mm/V

//result
mprintf("rms value of sinusoidal voltage applied to the X-deflecting plates = %3.2d V",Vrms);
mprintf("\ndefelection sensitivity = %3.3f mm/V",(Sd*10**3));
