///Example 1.3 Page No:21
///Find Stress in the Steel wire
//Input Data
clc;
clear;
Pt1=600;                  //Tensils force in N
d1=2*10^-3;              //Diameter of steel wire in mm
L1=15;                    //Length of wire in m
E1=210*10^9;             //Modulus of elasticity of the material in GN/M**2
pi1=3.1482;


//Calculation
A1=(pi1/4)*(d1^2);     //(1)cross section area
sigmat1=(Pt1)/(A1);         //stress in the steel wire 
et1=((sigmat1)/(E1));       //(2)Therefore, strain in steel wire is given by
deltaLt1=et1*L1;            //(3)Enlongation of the steel wire is given by 
pe=((deltaLt1/L1)*100);    //(4)Percentage elongation


/////Output
printf('cross section area= %f m^2\n',A1);
printf('stress in the steel wire= %f GN/m^2 \n',sigmat1);
printf('modulus of elasticity=%f \n',et1);
printf('strain in steel wire=%f  mm \n',deltaLt1)
printf('percentage elongation=%f percent \n',pe)
