//chapter 5 example 7
//=============================================================================
clc;
clear;
//Given Data
Va    =  1200;//Anode potential
F     =  10*10^9;//Operating frequency in Hz 
S     =  5*10^-2;//spacing b/w 2 cavities
GS    = 1*10^-3;//gap spacing in either cavity
e     =  1.6*10^-19;//charge of electron
m     =  9.1*10^-31;//mass of electron in kg
//Calculations
//Condition of maximum output is (V1/Vo)max  =  (3.68)/((2*pi*n)-(pi/2);
//(2*pi*n)-(pi/2) = Transit angle b/w two cavities
//V1  = Peak amplitude of RF i/p
//Vo  = accelarating potential

Vo    = sqrt(2*e*Va/m);//velocity of the electrons 
T     = S/Vo;//Transit time b/w the cavities
TA    = 2*%pi*F*T;//transit angle in radians
V1    = (3.68*Va)/TA;
//Output
mprintf('Required Peak Amplitude of i/p RF signal is %3.2f volts',V1);
//=============================================================================
