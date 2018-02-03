//===========================================================================
//chapter 7 example 13
clc;clear all;

//variable declaration
m	= 10;		//wattmeter multiplying factor 

//calculations
x	= 100/5;		//CT ratio 
y 	= 1000/100;	//PT ratio
W	= x*y*m;		//new multiplying factor of wattmeter

//result
mprintf("new multiplying factor of wattmeter = %3.2f",W);
