//Chapter 2: Antenna Basics
//Example 2-7.1
clc;
clear;

//Variable declaration
n = 10     //Number of isotropic point sources
dr = %pi/2    //Distance(radians)
hpbw = 40    //Half power beamwidth (degrees)

//Calculation
deff('z=f(x,y)','z=(sin(%pi/20)*(sin((%pi/2)*(5*cos(y)-6))/sin((%pi/20)*(5*cos(y)-6))))**2')
X=[0 0;%pi/2 %pi/2;%pi/2 0];
Y=[0 0;2*%pi 2*%pi;0 2*%pi];
[g1,err]=int2d(X,Y,f)
gain = (4*%pi)/g1    //Gain (unitless)
gain_db = 10*log10(gain)//Gain (dB)
gain_hpbw = 40000/(hpbw**2)    //Gain from approx. equation (unitless)
gain_hpbw_db = 10*log10(gain_hpbw)    //Gain from approx. equation (dB)
gain_diff = gain_hpbw_db - gain_db    //Difference in gain (dB)

//Result
mprintf("The Gain G is %.2f dB",gain_db)
mprintf("\nThe Gain from approx. equation is %.0f dB",gain_hpbw_db)
mprintf("\nThe Difference is %.2f dB",gain_diff)

//An error arises due to incorrect integration of the normalized power pattern
//Subsequently, the difference in gain is varying
