//===========================================================================
//chapter 10 example 11

clc;clear all;

//variable declaration
P	= 1000;		//resistance in arm AC in  Ω
Q	= 1000;		//resistance in arm AD in Ω
S	= 100;		//resistance in  arm CB in Ω
R	= 101;		//resistance in arm BD in Ω
Rg	= 50;		//galvanometer resistance in Ω
E	= 2;		//voltage in V

//calculations
R1  = (Q*S)/P;		//resistance required in arm BD for balance bridge 
dR  = R-R1;		//the deviation from balanced condition in  Ω
Eth = E*(((R1+dR)/(R1+dR+S))-(P/(P+Q)));	//thevenin's open circuit voltage in V
Rth = (((R1+dR)*S)/(R1+dR+S))+((P*Q)/(P+Q));	//thevenin's equivalent resistance of bridge in Ω
Ig  = Eth/(Rth+Rg);			//galvanometer current in A

//result
mprintf("galvanometer current = %3.3f uA",(Ig*10^6));
mprintf("\nsince the point B is at higher potential with respect to point A ,current will floe from terminal A");
