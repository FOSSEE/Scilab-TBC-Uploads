//chapter-6 page 244 example 6.13
//==============================================================================
clc;
clear;

wg=7.2;//guide wavelength in cm
x=10.5;//Position of reference null without the waveguide component in cm
y=9.3;//Position of reference null with the waveguide component in cm

//CALCULATION
z=x-y;//Path difference introduced due to the component in cm
p=(2*(%pi)*(z/wg));//Phase difference introduced in rad
Pd=(p*180)/(%pi);//Phase shift introduced in deg

//OUTPUT
mprintf('\nPhase shift introduced is Pd=%2.0f deg',Pd);

//=========================END OF PROGRAM===============================


