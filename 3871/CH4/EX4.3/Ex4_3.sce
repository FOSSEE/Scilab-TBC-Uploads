//===========================================================================
//chapter 4 example 3

clc;
clear all;


//variable decalartion
Smax    = 3.0*10^6;     //maximum stress in kg/m**2
E       = 1.2*10^10;            //young's modulus  in kg/m**2
w       = 0.0006;           //width of spring in m
Td      = 1.2*10^-4;        //deflecting torque in kg-m
d       = 90;                       //deflection in degrees

//calucaltions
theta = %pi/(2);        //deflection in radians
//since T        = ((E*W*(t*3))/(12*L))*theta
//t^3/l    = (12*Tc)/(E*W*theta)
Tc            = Td/(2);             //controlling torque of each spring in kg-m
//x  = t**3/l
x         = (12*Tc)/((E*w*theta));          //equqation 1
//y     =l/t   
y   = (E*theta)/(2*Smax);           //equation 2 
//by multiplying equations 1 and 2 (x*y =t**2 =z)
z    = x*y; 
t    = sqrt(z);             //thickness of spring strip in mm
l   = y*t;                  //length on m

//result
mprintf("thickness of spring strip = %3.2f mm",(t*10^3));
mprintf("\nlength in  = %3.2f m",l);
