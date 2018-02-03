//=====================================================================================
//Chapter 16 example 6

clc;clear all;

//varable declaration
l    = 2.5;    //length of plates in cm
d    = 1;    //distance between plates in cm
theta   = 1;     //angular defelecction of electron beam  in degrees
Va    = 1000;    //accelerating voltage in V

//calculations
//tan(theta)   = l*Vd/(2*d*Va)
x     = tan(((theta*%pi)/180));
Vd   =(( 2*d*Va)/(l))*x;      //required voltage in V

//result
mprintf("Voltage required across the deflection plates = %3.2f V",Vd);

