//chapter-10 page 489 example 10.10
//==============================================================================
clc;
clear;

//For a parabolic antenna
Gp=1500;//Power gain
w=0.1;//wavelength in m

//CALCULATION
D=sqrt(Gp)*(w/(%pi));//Diameter of the circular mouth of a parabolic antenna in m
HPBW=58*(w/D);//Half Power BeamWidth of the antenna in deg

//OUTPUT
mprintf('\nDiameter of the circular mouth of a parabolic antenna is D=%1.4f m \nHalf Power BeamWidth of the antenna is HPBW=%1.3f deg',D,HPBW);

//=========================END OF PROGRAM=============================== 
