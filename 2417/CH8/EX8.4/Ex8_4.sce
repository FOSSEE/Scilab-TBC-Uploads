//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.4\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.4  (page no. 383) 
// Solution

//Refer to figure8.3.The desired  quantities are obtained as follows:
//at 14.696 psia,saturated vapor (x=1),s=1.7566 Btu/lbm*R
h5=1150.4; //Unit:Btu/lbm //enthaply
//at 14.696 psia,saturated liquid (x=0),s=0.3122 Btu/lbm*R
h2=180.17; //Unit:Btu/lbm //enthaply 
h1=h2;
//at 400 psia,s=1.7566 Btu/lbm*R,
h4=1514.0; //Unit:Btu/lbm //Enthalpy
t=982.07; //Unit:F //tempearature
//at 400 psia,s=0.3122 Btu/lbm*R, //s=entropy
h=181.39; //Unit:Btu/lbm //Enthalpy
//Note the agreement of these values with the ones obtained for problem8.4.Alos,note the temperature of 982.07F compared to 982.4F.Continuing,
//Neglecting pump work 
nR=(h4-h5)/(h4-h2); //Thermal efficiency of the cycle
printf("Neglecting the pump work,The thermal efficiency of the cycle is %f percentage\n\n",nR*100);
Pumpwork=h-h2; //Unit:kJ/kg ///pumpwork
//The efficiency of the cycle including pump work is
nR=((h4-h5)-Pumpwork)/((h4-h2)-Pumpwork); //Thermal efficiency of the cycle
printf("The thermal efficiency of the cycle including pump work is %f percentage\n\n",nR*100);
