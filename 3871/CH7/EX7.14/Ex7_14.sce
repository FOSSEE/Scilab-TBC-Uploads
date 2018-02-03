//===========================================================================
//chapter 7 example 14
clc;
clear all;

//variable declaration

V	= 6000;		//load voltage in V
I	= 100;		//load current in A
p	= 0.5;		//power factor cos(phi) lagging
theta	= 0;		//since wattmeter reads correctly
x1      = 20;           // current transformers nominal ratio
x2      = 60;           // potenetial transformers nominal ratio 
e1      =-0.005;          // ration error 
e2      = 0.01;         // ratio error 

//calculations
P	= V*I*p;		//actual power consumed in W
phi	=acos(p);
phi1    = (phi*180)/%pi;
d	= -1;		//phase angle in ° 
b	= 2;		//phase angle in ° 
g	= phi1+d-theta1-b;	//phase angle in ° 
theta1      =theta*180/%pi
g1      = g*180/%pi;
A       =cos(phi1)
K   = (cos(phi1*%pi/180))/((cos(theta1*%pi/180))*(cos(g*%pi/180)));
CT      =  x1*(1+e1);            //actual transformation ratio of CT
PT          = x2*(1+e2);        //actual transformation ratio of PT
P1          = P/(K*CT*PT);      //power indicated by wattmeter in kW
T           = P/(x1*x2);        //true reading of wattmeter in kW
e           = ((P1-T)/T)*100;     //percentage errror in %  
//result
mprintf("phase angle between the currents in CC and PC of wattmeter %3.2f ° ",K);
mprintf("\npercentage error = %3.0f percentage ",e);
