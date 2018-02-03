//=====================================================================================
//Chapter 16 example 8

clc;clear all;

//variable declaration
//as shown in patern is straight line
dvo   = 0;
Dv    = 6;
//pattern is ellipse
dvo1   = 3;
Dv1  =6;
//pattern is circle 
dvo2  = 1;
Dv2 = 1;
//pattern is ellipse
dvo3   = 3;
Dv3  =5;

//calculations
y4   =dvo1/(Dv1);
phi1  = asin(dvo/(Dv));     //phase angle in degrees
phi2  = asin(dvo1/(Dv1));     //phase angle in degrees
phi3  = asin(dvo2/(Dv2));     //phase angle in degrees 
phi4  = asin(dvo3/(Dv3));     //phase angle in degrees
phi22 = 180-((phi2*180)/(%pi));
phi44 = 180-((phi4*180)/(%pi)); 

//result

mprintf("phase angle = %3.2f °",((phi1*180)/%pi));
mprintf("\nphase angle = %3.2f ° or %3.2f °",((phi2*180)/%pi),(phi22));
mprintf("\nbut from figure ellipse is inn 2nd and fourt quarterso the valid value of phase angle is %3.2f °",phi2);
mprintf("\nphase angle = %3.2f °",((phi3*180)/(%pi)));
mprintf("\nphase angle = %3.2f°   or %3.2f °",(((phi4*180)/%pi)),(phi44));
mprintf("\nbut from figure ellipse is inn 2nd and fourt quarterso the valid value of phase angle is %3.2f °",phi44);


