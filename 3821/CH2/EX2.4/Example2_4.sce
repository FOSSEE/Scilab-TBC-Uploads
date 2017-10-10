////Example 1.4 Page No:22
///Find Stress in square rod
//Input data
clc;
clear;
A1=30*30*10^-6;      //Area of square rod in mm**2
L1=5;                 ///Length of square rod in m
Pc=150*10^3;        //Axial comperessive load of a rod  in kN
E1=215*10^9;         //Modulus of elasticity in GN/m**2


//Calculation
sigmac=((Pc)/(A1));   //Stress in square rod
ec=(sigmac)/(E1);   //Modulusof elasticity is E1=sigmac/ec ,therefore strain in square rod is
deltaLc=ec*5;        ///Therefore shortening of length of the rod 


///Output
printf('stress in square rod %f N/m^2',sigmac);
printf('\n');
printf('strain in square rod ec= %f\n',ec);
printf('shortening of length of the rod= %f m \n',deltaLc);

