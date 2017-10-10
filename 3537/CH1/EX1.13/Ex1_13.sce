//Example 1_13
clc();
clear;
//To calculate the fringe width
D=0.005                        //units in mm
d=15                          //units in cm
lemda=6000                    //units in angstroam
lemda=6000*10^-8              //units in cm
alpha=D/d                     //units in radians
beta=lemda/(2*alpha)
printf("fringe width is %.2f cm",beta)
