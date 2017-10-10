//Example 4.2(a)
clc;
V=10;        //Full range voltage of the instrument
Im=50*10^-6; //Full Scale Deflection Current
Rm=500;      //Internal resistance of movement
Rs=V/Im-Rm;  //Multiplier resistence
disp(Rs,'Value of Multipliier Resistence')