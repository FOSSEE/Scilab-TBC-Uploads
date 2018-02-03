//===========================================================================
//chapter 10 example 13
clc;
clear all;

//variable declaration
P	= 1000;		//resistance in arm AB in  Ω
Q	= 100;		//resistance in arm BC in Ω
R	= 200;		//resistance in arm BD in Ω
Si1	= 10;		//sensitivity 
Si2	= 5;		//sensitivity 
Rg1	=400;
Rg2	=100;

//calculations
S	= R*Q/P;		//resistance required  in  arm CD in Ω
Rth	= ((R*S/(R+S))+(P*Q/(P+Q)));		//thevenin's equivalent resistance of bridge in Ω
//theta	= (Si*E*S*dR)/((R+S)^2)*(Rth+Rg1))
//theta2/theta1   = (Si*E*S*dR)/((R+S)^2)*(Rth+Rg1))*(((R+S)^2)*(Rth+Rg1)/(Si*E*S*dR))
r		= (Si2/Si1)*((Rth+Rg1)/(Rth+Rg2));	//ratio deflection of  two galvanometer  

//result
mprintf("ratio deflection of  two galvanometer   = %3.3f Ω",r);
mprintf("\nthe first galvanometer (internal resistance 400 Ω and sensitivity 10 mm/uA) is less sensitive to a small unbalance on the given bridge ,through on its own it is more sensitive than the other galavanometer")
