//Chapter-11 example 3
//=============================================================================
clc;
clear;
Vo = 3*10^8;//velocity of EM wave in m/s
F  = 0.8*10^3;//pulse repetitive frequency
Tp = 1.2*10^-6;//pulse width in sec
//Calculations
Rmax = Vo/(2*F);//maximum Range of Radar in m
Rmin = (Vo*Tp)/2;//minimum Range of radar in m

//Output
mprintf('Maximum Range of Radar is %g Km\n Minimum Range of the Radar is %g m',Rmax/1000,Rmin);

//==========end of program===================================================== 

