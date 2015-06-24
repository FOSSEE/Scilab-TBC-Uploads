//chapter-10 page 490 example 10.12
//==============================================================================
clc;
clear;

D=3;//dimension of a paraboloid in m
f=3*10^9;//frequency (S band) in Hz
c=3*10^8;//Velocity of light in m/sec

//CALCULATION
w=c/f;//wave length in m
BWFN=140*(w/D);//BeamWidth between First Nulls in deg
BWHP=70*(w/D);//BeamWidth between HalfPower points in deg
G=6*(D/w)^2;//Gain of the antenna 

//OUTPUT
mprintf('\nBeamWidth between First Nulls is BWFN=%1.2f deg \nBeamWidth between HalfPower points is BWHP=%1.2f deg \nGain of the Antenna is G=%4.0f ',BWFN,BWHP,G);

//=========================END OF PROGRAM=============================== 
