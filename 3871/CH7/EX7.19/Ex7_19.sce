//===========================================================================
//chapter 7 example 19

clc;
clear all;

//variable declaration
W1	= 3000;		//wattmeter reading in W
W2	= 1000;		//wattmeter reading in W
f	= 50;		//frequency in HZ
V	= 400;		//voltage in V

	
//calculations
VP	= V/sqrt(3);	              //voltage in V		
P	      = W1+W2;		                //input power in kW
phi	    = atan(((W1-W2)/(W1+W2))*sqrt(3));		            //phase angle in radians
phi1    = phi*180/%pi;                              //phase angle in degrees
pf	     =cos(phi1*%pi/180);		                        //power factor lagging
IL	     = P/((sqrt(3))*V*pf);	                       //line current in A
ZP	     =VP/IL;		                            //impedance of the circuit per phase in Ω
R	      = ZP*pf;	                 	//resistance per phase Ω
XL	     = sqrt((ZP^2 )-(R^2));	              	//reactance per phase in Ω
L	      = XL/(2*%pi*f);		                 //inducatance per phase in H

//result
mprintf("resistance per phase = %3.2f Ω",R);
mprintf("\ninducatance per phase in = %3.3f H",L);

