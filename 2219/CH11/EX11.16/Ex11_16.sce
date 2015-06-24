// Chapter 11 example 16
//------------------------------------------------------------------------------
clc;
clear;
// Given data
H       = 35800;        // height of orbit in kms
re      = 6364;         // radius of earth in kms
i       = 2;            // angle of inclination in degrees

// Calculations
r       = H+re;         // radius of orbit in kms
lamdamax = i;           // max latitude deviation
long_dev = (i^2)/228;   // max. longitude deviation
disp_lamda = (r*i*%pi/180)// max disp in km due to lamdamax
max_disp1  = disp_lamda*(long_dev/lamdamax) // max disp.due to max.longitude deviation

// Output
mprintf('Maximum deviation in latitude = %d°\n Maximum deviation in longitude = %3.4f°\n Maximum displacements due to latitude displacement = %d Km\n Maximum displacements due to longitude displacement = %3.1f Km\n',lamdamax,long_dev,disp_lamda,max_disp1 );
    
