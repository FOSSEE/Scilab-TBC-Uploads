//===========================================================================
//chapter 11 example 5

clc;clear all;

//variable declaration
R1	= 1;		//standard resistance in Ω
V3	= 0.952-0.340*%i;	//voltage  through the coil in A
a	= 10;		//multiplying power of potential divider 
V2	= 1.35+1.28*%i;	//voltage  across potential in A

//calculations
x  = complex([0.952,-0.342])
y  = complex([1.35,1.28])
I	= x/R1;,		//current through coil in A
I	= x/R1		//current through coil in A
I1   = 0.952-0.340*%i;
V1	= a*y		//voltage across coil in V
V11 = 13.5+12.8*%i;
Z	= V11/I1
R	= real(Z)		//resistance of coil in Ω
X	= imag(Z)		//reactance of coil Ω

//result
mprintf("%g + %gi\n",R,X);
mprintf("resistance of coil  = %3.4f Ω",R);
mprintf("\nreactance of coil = %3.2f Ω",X);
