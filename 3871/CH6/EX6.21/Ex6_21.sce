//============================================================================
//Chapter 6 Example 21


clc;
clear all;

//variable declaration
R       = 25;           //rate burden in VA
Is      = 5;            //current in A
r       = 6;            //Rs/Es ratio of resistance to reactance 
IL      = 0.2;          //iron loss in W
Im         = 1.5;       //magnetising compnent of current in A


//calculations
KT      = 100/5;            //turn ratio
Es      = R/Is;             // Secondary rated voltage in V
Zs      = Es/Is;            //total secondary impedance in Ω
theta       = (atan(1/r))*180/%pi;        //angle in °
Zs1          = (Zs*cos(theta*%pi/180))+(Zs*sin(theta*%pi/180))*%i;
Ie          = KT*0.04;          //energy component of exciting current on primary side 
r           = (((Im*sin(theta*%pi/180))+(Ie*cos(theta*%pi/180)))/((KT*Is)+(Ie*cos(theta*%pi/180))+(Im*sin(theta*%pi/180))))*100;      //percentage ratio error in %
beta        = (180/%pi)*(((Im*cos(theta*%pi/180))-(Ie*sin(theta*%pi/180)))/(KT*Is));        //phase angle erro in  °

//result
mprintf("percentage ratio error  = -%3.1f percentage",r);
mprintf("\nphase angle error = %3.4f °",beta);
