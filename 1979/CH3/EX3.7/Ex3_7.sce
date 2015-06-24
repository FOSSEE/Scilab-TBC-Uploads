//chapter-3 page 50 example 3.7
//==============================================================================
clc;
clear;

Z0=50;//Characteristic Impedance in ohms
S=3.2;//Voltage Standing Wave Ratio(VSWR)

//It is possible to measure the load impedance if the line is assumed lossless,by measuring the VSWR,wavelength and the distance from the load to the nearest voltage minimum
//CALCULATIONS
w=1;//Assume Wavelength in met
Xmin=0.23*w;//Distance from the load to the nearest voltage minimum in met
b=(2*(%pi))/w;
Zl=Z0*((1-(S*(%i)*tan(b*Xmin)))/(S-((%i)*tan(b*Xmin))));//Load impedance in ohms
disp('Load impedance in ohms is');
disp(Zl);


//=========================END OF PROGRAM===================================================

//Note: Check the answer given in Text book once. I think it is wrong in text book..
