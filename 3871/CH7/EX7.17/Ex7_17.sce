//===========================================================================
//chapter 7 example 17

clc;clear all;

//variable declaration
P	= 30000;	//total power in kW
pf	= 0.4;	//power factor assuming lagging

//calculations
phi	= acos(pf);	//phase angle in radians
phi1    = (phi*180)/%pi;
y       = sqrt(3);
z       =y*pf;
x	= P/(y*pf);	//VL*IL in VA

//W	= VL*IL*cos(30-phi)
//VL*IL 	= x;
W1	= x*cos((30*%pi/180)-(phi1*%pi/180));	//reading of wattemeter in W
W2	=  x*cos((30*%pi/180)+(phi1*%pi/180));	//reading of wattemeter in W

//result
mprintf("reading of wattemeter %3.2f W %3.0f W",W1,W2);
mprintf("\nNote:x value is taken approximate value,so the w1 and w2 differing ")
mprintf("\nif power factor is leading the readings of wattmeters interchange ");

