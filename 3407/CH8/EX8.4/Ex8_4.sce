clear;
clc;
funcprot(0);

//given data
cm3_U2 = 0.25;
nu = 0.4;
r3s_r2 = 0.7;
w3av_w2 = 2.0;

//Calculations
r3av_r3s = 0.5*(1+nu);
r3av_r2 = r3av_r3s*r3s_r2;
beta3_av = (180/%pi)*atan(r3av_r2/cm3_U2);
beta3s = (180/%pi)*atan(r3s_r2/cm3_U2);
w3s_w2 = 2*cos(beta3_av*%pi/180)/cos(beta3s*%pi/180);

//Results
printf('The relative velocity ratio = %.3f.',w3s_w2);
