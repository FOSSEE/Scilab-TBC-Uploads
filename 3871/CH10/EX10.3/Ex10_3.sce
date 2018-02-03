//===========================================================================
//chapter 10 example 3

clc;
clear all;


//variable declaration
V	= 120;		//voltage in V
I	= 8;		//current in A
RA	= 0.3;		//resistance in Ω
AR	= 0.01;		//maximum reading of ammeter in A
VR  = 0.1;		//maximum reading of voltmeter in V
AR1 = 10;		//ammeter rane 0-10 A
AV1	= 150;		//voltmeter range in 0-150 V
EA	= 0.25;		//constructional error of ammeter in %
EV	= 0.5;		//constructional error of voltmeter in %


//calculations
Rm      = V/I;		//measured value of unknown resistance in Ω
Rx      = Rm-RA;		//true value of unknown resistance in Ω
EA1     =  (AR/AR1)*100;	//reading error of ammeter in %
EV1     = (VR/AV1)*100;	//reading of voltmeter in %
dI      = EA+EA1;		//error in ammeter reading in %
dv      = EV+EV1;		//error in voltmeter reading in %
d       =dI+dv;		//total error in % ranging - to +
R1      = Rx+d;		//Value of Rx is specified as Ω
R2      = Rx-d;		//Value of Rx is specified as Ω

//result
mprintf("Value of Rx is specified = %3.3f,%3.3f Ω",R1,R2);
