//=====================================================================================
//Chapter 13 example 14

clc;
clear all;

//variable declaration
//Ph	= A*f
//Pe	= B*f^2
//Pi	= Ph+Pe
Pi	= 17.2;		//power in W
f	= 50;		//frequency in Hz
Pi1	= 28.9;		//iron loss in W

m       = 13;       //weight in kg

//calculations
//17.2	= 40*A+((40)^2)*B
//28.9	= 60*A+((60)^2)*B
A	= 0.326667
B	= 0.002583
Ph	= (A*f)/m		//hysteresis loss per kg in W
Pe	= (B*(f^2))/m	//eddy current loss per kg in W

//result
mprintf("hysteresis loss per kg = %3.2f W",Ph);
mprintf("\neddy current loss per kg = %3.3f W",Pe);

