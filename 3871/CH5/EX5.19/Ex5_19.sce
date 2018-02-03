//===========================================================================
//chapter 5 example 19
clc;
clear all;

//variable declaration
L      = 150;		//length of working wire  at room temperature in mm
alpha  = 16*10^-6;		//coefficient of linear expansion 
T         = 85;			//temperature in  ° C
Si      =1;			//initial sag in mm
//calculations
dL     = alpha*L*T;		//increase in length of the wire when gets heated through 85 ° C in mm
M     = sqrt(L/(2*dL));		//magnification with no intial sag 
S      = sqrt((L*dL)/(2));	//Sag in mm
Sn    = S-Si;			//net increase in Sag in mm
M1   = Sn/(dL);			//magnification with initial Sag of 1 mm

//result
mprintf("magnification with no intial sag  = %3.2f",M);
mprintf("\nSag = %3.2f mm",S);
mprintf("\nnet increase in Sag =%3.2f mm",Sn);
mprintf("\nmagnification with initial Sag of 1 mm = %3.2f",M1);
