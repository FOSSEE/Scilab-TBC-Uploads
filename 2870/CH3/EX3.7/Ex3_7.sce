clc;clear;
//Example 3.7

//given values
P=0.5;
h=2890;

//from Table A–6
//at P=0.5 MPa
T1=200;
h1=2855.8;
T2=250;
h2=2961.0;
// we need linear interpolation 

//calculatiom
//by interpolation we cab say that
//h=h1+(T-T1)/(T2-T1)*(h2-h1)
//we have to find T
T=(h-h1)/(h2-h1)*(T2-T1)+T1;
disp(T,'temperature of water in celcius')
