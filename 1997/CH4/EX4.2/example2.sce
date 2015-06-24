//Chapter-4 example 4.2
//=============================================================================
clc;
clear;
//input data
F       = 1*10^9;       //operating frequency of monopulse radar in Hz
Vo      = 3*10^8;       //velocity of EM wave in m/s
theta_d   = 10          //angle blw los and perpendicular bisector of line joining two antennas
PD_d    = 20;           //phase difference in degrees

// calculations
lamda = Vo/F            //wavelength in m
//PD  = (2*%pi/lamda)*(d*sin(theta));
theta_r   = theta_d*(%pi/180)   //degree to radian conversion
PD_r      = PD_d*(%pi/180)      //degree to radian conversion
d         = (PD_r*lamda)/(2*%pi*sin(theta_r));

//output
mprintf('Spacing between the antennas is %3.2f cms',d*100);

//===============end of the program============================================
