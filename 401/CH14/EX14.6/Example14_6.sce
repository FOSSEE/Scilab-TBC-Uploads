//Example 14.6
//Program to determine outer diameter of the optical fiber in micrometer

clear;
clc ;
close ;

//Given data
l=0.1;                //m - MIRROR POSITION
d_PHI_by_dt=4;        //rad/s - ANGULAR VELOCITY
We=300*10^(-6);       //us - WIDTH OF SHADOW PULSE

//Outer diameter of the optical fiber
d0=We*l*d_PHI_by_dt;

//Displaying the Result in Command Window
printf("\n\n\t  The Outer diameter of the optical fiber is %1.0f um.",d0*10^6);