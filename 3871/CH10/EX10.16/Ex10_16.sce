//===========================================================================
//chapter 10 example 16

clc;clear all;

//variable declaration
P	= 10000;		//resistance in arm AB in  Ω
Q	= 10;		//resistance in arm BC in Ω
S	= 5000;		//resistance in arm BD in Ω
Si	= 10^8;		//sensitivity 
Rg	=100;		//galvanometer resistance in  Ω
E	= 12;		//voltage in V
d	= 2.5;		//deflection in mm



//calculations
R	= P*S/Q;		//resistance required  in  arm CD in Ω
Rth	= ((R*S/(R+S))+(P*Q/(P+Q)));		//thevenin's equivalent resistance of bridge in Ω
dR	= ((d*(Rth+Rg)*((R+S)^2))/(Si*E*S));		//change in defelection in Ω

//result
mprintf("the maximum value of resistance that can be measured with the given arrangement = %3.2f Ω",R);
mprintf("\nchange in defelction = %3.2f k Ω",(dR*10^-3));
