//===========================================================================
//chapter 10 example 14

clc;
clear all;

//variable declaration
P	= 500;		//resistance in arm AB in  Ω
Q	= 500;		//resistance in arm BC in Ω
S	= 500;		//resistance in  arm CD in Ω
R	= 500;		//resistance in arm BD in Ω
Rg	= 100;		//galvanometer in Ω
E	= 10;		//battery voltage in V
Rth	= 500;		//thevenin's equivalent resistanceof bridge  Ω
Ig	= 10^-9;		//galavanometer capable of detecting Ig current in A

//calculations
//Eth	= (E*dR)/(4*R);
x	= E/(4*R);		//thevenin or open -circuit voltage in dR
//Ig	= Eth/(Rth+Rg)
y	= x/(Rth+Rg);	//current through galvanometer 
dR	= (Ig*(Rth+Rg))/x;		//the smallest change in resistance that can be detected in Ω

//result
mprintf("the smallest change in resistance that can be detected = %3.2f m Ω",(dR*10^3));

