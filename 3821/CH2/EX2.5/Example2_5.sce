////Example 1.5 Page No:23
////Find Stress in metallic rod
////input data
clc;
clear;
d1=50*10^-3;                //Diameter of metalic rod in mm**2
L1=220*10^-3;               //Length of metalic rod in mm
Pt1=40*10^3;                //Load of metalic rod in KN
deltaLt1=0.03*10^-3;        //Elastic enlongation in mm
ypl=160*10^3;              //Yield point load in KN
ml=250*10^3;               //Maximum load in KN
lsf=270*10^-3;             //Length of specimen at fracture in mm
pi=3.142;

//calculation
A1=(((pi)/(4))*((d1)^2));   //(1)Cross section area
sigmat1=Pt1/A1;              //Stress in metallic rod
et1=deltaLt1/L1;             //Strain n metallic rod
E1=sigmat1/et1;              //Young's modulus
ys=ypl/A1;                 //(2)Yeild strength
uts=ml/A1;                 //(3)Ultimate tensile strength
Pebf1=((lsf-L1)/L1)*100;       //Percentage elongation before fracture 

//output
printf('cross section area = %f m^2\n',A1);
printf('stress in metallic rod= %f N/m^2 \n',sigmat1);
printf('strain n metallic rod= %f \n',et1);
printf('youngs modulus= %f GN/m^2\n',E1);
printf('yeild strength= %f MN/m^2\n',ys);
printf('ultimate tensile strength= %f MN/m^2 \n',uts);
printf('percentage elongation before fracture= %f percent \n ',Pebf1);
