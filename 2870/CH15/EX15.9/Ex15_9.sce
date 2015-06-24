clc;clear;
//Example 15.9

//from Table A-26E
//Gibbs function of formation at 77°F
gfc=0;//for carbon
gfo=0;//for oxygen
gfco=-169680;//for carbondioxide

//calculations
// C + O2 = CO2
Wrev=1*gfc+1*gfo-1*gfco;
disp(Wrev,'the reversible work for this process in Btu')
