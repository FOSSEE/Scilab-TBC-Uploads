//============================================================================
//Chapter 6 Example 22


clc;
clear all;

//variable declaration
r       = 12.5;         //rate burden in VA
Is      = 5'            //secondary rated curret in A
f       = 50;           //frequency in Hz
L          = 0.96*10^-3;
Im          = 16;           //magnetising component of exciting current in A
Ie          = 12;           //energy component of exciting current in A
Is          = 5;            //secondary rated current in A


//calculations
KN      = 1000/5;           ///nominal ration
KT      = 196/1;            //turn ratio 
Es      = r/Is;             //secondary rated voltage in V
Zs      = Es/Is;            //secondary impedance in Ω
Xs      = 2*%pi*f*L;        //secondary reactance in Ω
theta       = (asin(Xs/Zs))*180/%pi;        //secondary circuit phase angle in °
KC          = KT+(((Ie*cos(theta*%pi/180))+(Im*sin(theta*%pi/180)))/Is);
e           = ((KN-KC)/KC)*100;       //ratio error
beta        = (180/%pi)*(((Im*cos(theta*%pi/180))-(Ie*sin(theta*%pi/180)))/(KT*Is));        //phase angle erro in  °

//result
mprintf("ratio error = %3.2f percentage ",e);
mprintf("\nphase angle error = %3.2f °",beta);
