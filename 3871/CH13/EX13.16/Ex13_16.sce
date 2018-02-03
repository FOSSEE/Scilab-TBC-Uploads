//=====================================================================================
//Chapter 13 example 16

clc;
clear all;

//variable declaration
x	= 0.8;		//Kf2/Kf1
y	=1.2;

//Pe2/Pe1 = (Kf2/Kf1)^2 
p	= x^2;		
//Pe2	= p*Pe1;	//
//p1	= (Pe1-Pe2)/Pe1;	
p1	= (1-p)*100;		//percentage change in hysteresis current loss 
p2	= y^2;		
p12	= (y-1)*100;		//percentage change in hysteresis current loss 
p3	=(p2-1)*100;		//percentage change in eddy current loss in %

//result
mprintf("percentage change in hysteresis current loss  = %3.3f percentage decrease",p1);
mprintf("\npercentage change in hysteresis current loss  = %3.3f percentage increase",p12);
mprintf("\npercentage change in eddy current loss in = %3.2f percentage increase",p3);
