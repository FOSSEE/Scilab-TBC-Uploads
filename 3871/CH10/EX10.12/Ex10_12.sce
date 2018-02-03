//===========================================================================
//chapter 10 example 12
clc;clear all;

//variable declaration
P	= 100;		//resistance in arm AB in  Ω
Q	= 1000;		//resistance in arm BC in Ω
S	= 2000;		//resistance in  arm CD in Ω
R	= 202;		//resistance in arm BD in Ω
Rg	= 200;		//galvanometer resistance in Ω
E	= 5;		//voltage in V
Si	= 5;		//current sensitivity of the galavanometer in mm/uA

//calculations
Si1	= 5*10^9;		//current sensitivity of the galavanometer in mm
R1	= (P*S)/Q;		//resistance required in arm BD for balance bridge 
dR	= R-R1;		//the deviation from balanced condition in  Ω
Eth	= E*(((R1+dR)/(R1+dR+S))-(P/(P+Q)));	//thevenin's open circuit voltage in V
Rth	= (((R1+dR)*S)/(R1+dR+S))+((P*Q)/(P+Q));	//thevenin's equivalent resistance of bridge in Ω
Ig 	= Eth/(Rth+Rg);			//galvanometer current in A
d	= Si1*Ig;				//deflection of the galvanometre theta in mm
S	= d/dR;				//sensitivity of the bridge in mm/Ω

//result
mprintf("galvanometer current = %3.2e A",Ig);
mprintf("\ndeflection of the galvanometre theta = %3.1f mm",(d*10^-3));
mprintf("\nsensitivity of the bridge = %3.2f  mm/Ω",(S*10^-3));
