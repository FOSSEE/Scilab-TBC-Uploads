///Example 1.2 Page No:20
///Find Cross-Section Area
///Input data
clc;
clear;
L1=5;                       //Length of steel bar in m
d1=25*10^-3;               //Diametr of steel bar in mm
deltaLt1=25*10^-3;         ///Steel 
pt1=800;
pi1=3.142;                  //Power load of steel bar in N

////Calculation
A1=(pi1/4)*((deltaLt1)^2); ///Cross-section area
sigmat1=pt1/A1;           //Stress in  steel bar
et1=deltaLt1/L1;            ///Strain in steel bar
E1=sigmat1/et1;         //Young's modulus

///Output
mprintf('value of Cross-section area= %f  \n',A1);
printf('value of stress in  steel bar= %f MN/m^2 \n',sigmat1);
printf('value of strain in steel bar= %f \n',et1);
printf('value of Youngs modulus= %f N/m^2 \n',E1);
