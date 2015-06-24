//chapter 2
//example 2.5
//page 40
clear;
clc ;
//given
VF=0.7;//forward voltage drop across diode for temparature range 0-65 degree celcius
deltaT1=40;//change in temperature for T=65 in degree celcius
deltaVF=-1.8/10^3; //change in forward voltage drop per degree celcius
//finding required VF
VFmin=VF+deltaVF*deltaT1; //minimum forward voltage drop in volts

deltaT2=-25; //change in temperature for T=0 in degree celcius
VFmax=VF+deltaVF*deltaT2; //maximum forward voltage drop in volts

printf('Minimum and maximum values of forward voltage drop are %.3f V & %.3f V.',VFmin,VFmax)
