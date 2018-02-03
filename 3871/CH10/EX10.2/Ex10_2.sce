//===========================================================================
//chapter 10 example 2


clc;clear all;

//variable declaration
RA      = 2.5;		//resistance of ammeter Ω
RV      = 6000;		//resistance of voltmeter Ω
V       = 38.4;		//voltage in V
I       = 0.4;		//current in A

//calculations
Rx          = sqrt(RA*RV);	//value of unknown resisitance in Ω
Rm          = V/I;		//measured value of unknown resistance in Ω
Rx1         = V/(I*(1-(V/(I*RV))));		//true value of unknown resistance in Ω
EA          = (1/2)*(1/100)*1;			//error on ammeter reading in A
EV          = (1/2)*(50/100);			//error on voltmeter  reading in V
PEA         = (EA/I)*100;			//percentage error at 0.4 A reading in %
PEV         = (EV/V)*100;			//percentage error at 38.4 A reading in %
E           = sqrt((PEA^2)+(PEV^2));		//error due to ammeter and voltmeter in %
AE          = (E/100)*Rx1;			//absolute error due to ammeter and voltmeter in Ω
R1          =Rx1+AE;				//resistance in Ω
R2          = Rx1-AE;				//resistance in Ω

//result
mprintf("resistance is specified as %3.3f and %3.3f Ω",R1,R2);
