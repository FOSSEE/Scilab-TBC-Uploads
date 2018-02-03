//=====================================================================================
//Chapter 12 example 14

clc;clear all;

//variable declaration

R2         = 4.8; 		//resistance of arm  in  Ω
R3         = 2000; 		//resistance of arm  in  Ω
R4         = 2850; 		//resistance of arm  in  Ω
C2        = 0.5*10^-6;		//capacitance in F
f           = 500;		//frequency in Hz
r2        =0.4;			//resistance  in  Ω

//calculations
w        = 2*(%pi)*f;
C1      = C2*(R4/(R3));		//unknown capacitance in F
x       =R2+r2
r1       = (R3/R4)*(x);		//resistance  in  Ω
D        = w*C1*r1;			//dissipation factor 

//result
mprintf("unknown capacitance = %3.2e uF",(C1*10^6));
mprintf("\nresistance = %x3.2f Ω",x);
mprintf("\ndissipation factor = %3.5f",D);


