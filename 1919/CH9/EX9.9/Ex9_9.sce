
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 9

clear ;clc;

//Given data
V1 = 2                  // volume of air conditioner delivers in cubic meter
T1 = 278.15             // Temp of air completely saturates in K
V2 = 5                  // volume of air mixed in cubic meter
T2 = 308.15             // Temp of air mixed in K
RH = 0.4                // relative humidity in room
R = 8.314               // gas constant
M = 28.97               // molecular weight of air

// data from psychometric chart
SH1 = 0.0056            // in kg H2O/kg air
pw1 = 0.8               // in kPa
// at TDB = 5 degree C;  RH =  1 
SH2 = 0.0138            // in kg H2O/kg air
pw2 = 2.2               // in kPa

// at TDB = 5 `C;  RH =  1 
ma1 = (101.325-pw1)*1e3*V1*M/(R*1e3*T1)
ma2 = (101.325-pw2)*1e3*V2*M/(R*1e3*T2)

//ma1/ma2 = (SH2-SH3)/(SH3-SH1)
deff('y=SH(SH3)', 'y = ma1/ma2 - (SH2-SH3)/(SH3-SH1)') 
SH3 = fsolve(0.01,SH)

// Join the states 1 and 2 by a straight line and read TDB = 26 degree C and
// RH3=0.55 at the intersection of the line with SH3=0.0113 kg H20/kg air


// Output Results
mprintf('Specific humidity of air after mixing = %4.4f kg H20/kg air' , SH3);
