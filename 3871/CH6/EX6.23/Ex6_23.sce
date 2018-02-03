//===========================================================================
//chapter 6 example 23

clc;
clear all;

//variable declaration
KT	= 8;		//turn ratio 
Ie	= 0;		//current in A
I0      = 0.08;
R1	= 1.5;		//resistance in Ω
R2	= 0.4;		//resistance in Ω
L1	=60*10^-3;	//inductance in H
L2	=0.7*10^-3;	//inductance in H
f	= 50;		//frequency in Hz
phi     = 0;        //angle in ° 

//calculations
Im	= 0.01*KT;		//Im = 1% of primary current = 0.01*Ip = 0.01*KT*Is
alpha	=atan(Ie/Im);	//phase angle in radians
R	= R1+R2;		//resistance of burden Ω
L	= L1+L2;		//inductance in H
theta	= (atan((2*%pi*f*L)/R)*%pi/180);	//phase angle in ° 
KC	= KT+((I0*sin(theta+alpha))/Is);
KC	= KT+((0.08*Is*sin(theta+alpha))/Is);
KC	= KT+(0.08*sin(theta+alpha));		//actual current ratio 
b	= (I0*cos(theta+phi))/(KT*Is);

//result
mprintf("actual current ratio = %3.1f ",KC);
mprintf("\nphase angle error = %3.2d ",b);
