//Chapter-4 example 4.1
//=============================================================================
clc;
clear;
//input data
//d = lamda/2
theta_d = 5//angle blw los and perpendicular bisector of line joining two antennas

// calculations

//PD  = (2*%pi/lamda)*(d*sin(theta));
//PD  = (2*%pi/lamda)*(lamda/2*sin(theta));
theta_r   = theta_d*(%pi/180)
PD_r      = (2*%pi)*((sin(theta_r))/2);//phase difference in radians
PD_d      = PD_r*(180/%pi);//phase difference in radians
//output
mprintf('Phase difference b/w two echo signals is %3.2f degrees;  %3.3f radians',PD_d,PD_r);

//===============end of the program============================================
