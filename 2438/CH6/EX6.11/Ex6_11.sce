//==========================================================================
//chapter 6 example 11
clc;
clear;


//input data
 d1  =0.0018;// inner diameter  in m
 d2  =0.005;//outer diameter in m
 R   =1820*10^6;//insulation resistance in ohm
 l   =3000;//length in m


//formula
 r1  =d1/2;//inner radius  in m
 r2  =d2/2;//outer radius in m

//calculation
 p=2*%pi*l*R/log(r2/r1);//resistivity of dielectric in ohm-m
 
//result
 mprintf('resistivity=%3.3e.ohm-m\n',p);
 
//==============================================================================
