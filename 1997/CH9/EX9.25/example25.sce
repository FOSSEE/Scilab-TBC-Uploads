//Chapter-9 example 25
//=============================================================================
clc;
clear;
//input data
F     = 200*10^6;//radar operating frequency in hz
Vo    = 3*10^8;//velocity of EM wave in m/s
D     = 1.5;//Directivity of the Hertzian dipole
//Calculations
lamda = Vo/F;//wavelength
Ae    = (lamda^2*D)/(4*%pi);//effective area of antenna
//Output
mprintf('Effective Area of the antenna is %3.4f m^2',Ae);

//=============end of the program==============================================
