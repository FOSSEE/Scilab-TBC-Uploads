//Chapter-11 example 36
//=============================================================================
clc;
clear;
//input data
Pt = 20*10^6;//peak pulse power in watts
RCS  = 1;//radar cross sectional area in m^2
f   = 3*(10^9);//radar operating frequency
Vo   = 3*(10^8);//vel of Em wave in m/s;
D    = 50;//diameter of antenna in m
F    = 2;//receiver noise figure 
BW   = 5000;//receiver bandwidth

//calculations

lamda = Vo/f//wavelength in m
Rmax = 48*((Pt*(D^4)*RCS)/(BW*lamda*lamda*(F-1)))^0.25;

//output
mprintf('Maximum Radar range of the Radar system is %g Kms\n ',Rmax/1000);
mprintf('Note:In textbook All values are correctly substituted in calculating Rmax.\n but incorrect final answer is printed in the book');

//==============end of the program=============================================
