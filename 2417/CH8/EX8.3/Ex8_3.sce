//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.3\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.3  (page no. 382) 
// Solution

//Solution for (a)
//Figurre 8.3 with the cycle extending into the superheat region and expanding along 4->5 is the appropriate diagram for this process.

printf("Solution for (b)\n");
//This problem can be solved either by use of the Mollier chart or the Steam Tables.If the chart is used,14.696 psia is first located on the saturated vapor line.Because the expansion,4->5,is isentropic,a vertical line on the chart is the path of the process.The point corresponding to 4 in figure 8.3 is found where this vertical line intersects 400 psia.At this point,the ent-halpy is 1515 Btu/lbm,and the corresponding temperature is approximatelty 980F.Saturated vapor at 14.696 psia  has an enthalpy of 1150.5 Btu/lbm(from the Mollier chart).The Steam Tables sh-ow that saturated liquid at 14.696 psia has an enthalpy of 180.15 Btu/lbm.In terms of figure 8.3,and neglecting pump work,we have 
h1=180.15; //Unit:Btu/lbm //enthalpy
h2=h1; //Enthalpy //Unit:Btu/lbm
h4=1515; //Unit:Btu/lbm //enthalpy
h5=1150.5; //Unit:kJ/kg //enthalpy
//Neglecting pump work yields
nR=(h4-h5)/(h4-h2); //Thermal efficiency of the cycle
printf("Neglecting the pump work,The thermal efficiency of the cycle is %f percentage\n\n",nR*100);
p2=400; //Unit:Psia //Upper pressure
p1=14.696; //Unit:Psia //Lower pressure
vf=0.01167; //Specific volume of saturated liquid  //ft^3/lbm
J=778; //Conversion factor
Pumpwork=((p2-p1)*vf*144)/J; //Unit:Btu/lbm //1ft^2=144 in^2 //pumpwork
//The efficiency of the cycle including pump work is
nR=((h4-h5)-Pumpwork)/((h4-h1)-Pumpwork); //Thermal efficiency of the cycle
printf("The thermal efficiency of the cycle including pump work is %f percentage\n\n",nR*100);
//where the denominator is h4-h2=h4-h1-(h2-h1).Neglecting pump work is obviously justified in this case.An alternative solution is obtained by using the Steam Tables:at 14.696 psia ans sat-uration,sg=1.7567 ; at 400 psia,s= 1.7567.From Table 3(at 400 psia)
//   s      h      t
//1.7632  1523.6  1000 
//1.7567  1514.2  982.4
//1.7558  1512.9  980
 
