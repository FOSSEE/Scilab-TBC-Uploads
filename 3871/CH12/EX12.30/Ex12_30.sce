//=====================================================================================
//Chapter 12 example 30

clc;clear all;

//variable declaration
f1    = 1*10^6;		//frequency in Hz
f2   = 2*10^6;		//frequency in Hz
C1        = 480*10^-12;	//capacitance in F	
C2        = 90*10^-12;		//capacitance in F
R       = 10;       //resistance 

//calculations
Cd    = (C1-(4*C2))/3;		//self capacitance of the coil in pF
Q1     = 1/(2*%pi*f1*(C1+Cd)*R);		 //the indicated or effective  Q of the coil  
Q11     = 1/(2*%pi*f1*(C1)*R);		 //the true  Q of the first instrument
Q2     = 1/(2*(%pi)*f2*(C2+Cd)*R);		 //the indicated or effective  Q for the second instrument
Q22     = 1/(2*(%pi)*f2*(C2)*R);		 //the true  Q of the second  instrument

//result
mprintf("the indicated or effective  Q of the coil  = %3.1f ",Q1);
mprintf("\nthe true  Q of the first instrument = %3.3f",Q11);
mprintf("\nthe indicated or effective  Q for the second instrument = %3.3f",Q2);
mprintf("\nthe true  Q of the second  instrument = %3.2f",Q22);

