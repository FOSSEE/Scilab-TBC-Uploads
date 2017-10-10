//Example 4.3
clc;

Im=50*10^-6; //Full Scale Deflection Current
Rm=500;      //Internal resistance of movement

//Case I: For Range 0-20 V
V=20;        //Full range voltage of the instrument
Rs=V/Im-Rm;  //Multiplier resistence
disp(Rs,'Value of Multipliier Resistence 0-20 V')

//Case II: For Range 0-50 V
V=50;        //Full range voltage of the instrument
Rs=V/Im-Rm;  //Multiplier resistence
disp(Rs,'Value of Multipliier Resistence for 0-50 V')

//Case III: For Range 0-100 V
V=100;        //Full range voltage of the instrument
Rs=V/Im-Rm;  //Multiplier resistence
disp(Rs,'Value of Multipliier Resistence for 0-100 V')