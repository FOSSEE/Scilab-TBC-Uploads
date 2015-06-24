//chapter-9 page 412 example 9.8
//==============================================================================
clc;
clear;

//For a Gunn Diode
L=20*10^(-4);//Active Length in cm
Vd=2*10^7;//Drift Velocity of Electrons in cm/sec
Ec=3.3*10^3;//Criticl Field for GaAs in V/cm

//CALCULATION
fn=(Vd/L)/10^9;//Natural(Rational) Frequency in GHz
Vc=L*Ec;//Critical Voltage of the diode in volts

//OUTPUT
mprintf('\nNatural(Rational) Frequency is fn=%2.0f GHz \nCritical Voltage of the diode is Vc=%1.1f volts',fn,Vc);

//=========================END OF PROGRAM===============================
 
