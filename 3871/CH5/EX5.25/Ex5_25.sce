//===========================================================================
//chapter 5 example 25

clc;clear all;

//variable declaration
Emax    = 200;		//emf of peak value in V
R            = 10;		//resistance in Ω

//calculations
Imax     = Emax/(R);		//peak value of current in A
Iav         = (2*Imax)/(%pi);	//reading of moving -coil ammeter in A
Irms    = Imax/(sqrt(2));		//reading of moving -iron  ammeter in A

//result
mprintf("reading of moving -coil ammeter = %3.2f A",Iav);
mprintf("\nreading of moving -iron  ammeter = %3.2f A",Irms);
mprintf("\nreading of hot-wire ammeter = %3.2f A",Irms);



