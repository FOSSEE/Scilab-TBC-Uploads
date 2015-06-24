//Example 11.2
//Fracture Toughness
//Page No. 354
clc;clear;close;

K_Ic=57;            //in MPam^(1/2)
sigma0=900;          //in MPa
sigma=360;           //in MPa
Q=2.35;               //no unit
a_c=K_Ic^2*Q/(1.21*%pi*sigma^2);
a_c=a_c*1000;                         //cpnversion to mm
printf('\nCritical Crack depth = %g mm\nwhich is greater than the thickness of the vessel wall, 12mm',a_c);
