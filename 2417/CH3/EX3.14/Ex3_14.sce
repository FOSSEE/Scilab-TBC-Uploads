clear;
clc;
printf("\t\t\tProblem Number 3.14\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.14 (page no. 114) 
// Solution

//In problem 3.13 ,
p1=150; //Unit:psia //Initial pressure
T1=1000; //Unit:R //Temperature at pressure p1
p2=15; //Unit:psia //Final pressure
T2=600; //Unit:R //Temperature at pressure p2
Cp=0.24; //Unit:Btu/(LBm*R) //Specific heat for constant pressure process
v1=2.47; //Unit:ft^3/LBm //Specific volume at inlet conditions
v2=14.8; //Unit:ft^3/LBm //Specific volume at outlet conditions

//For a non-flow,constant pressure process
//w/J=deltah=h2-h1=Cp(T2-T1) //deltah=change in enthalpy
//W=w/J
W=Cp*(T1-T2); //W=Work output //Unit:Btu/LBm //h2-h1
printf("In problem 3.13,The work output of the turbine per pound of working fluid is %f Btu/LBm \n \n",W);

//Now,In problem 3.14 , 
q=1.1; //Unit:Btu/LBm //Heat losses
//For a non-flow,constant pressure process
//q-w/J=deltah=h2-h1=Cp(T2-T1) //deltah=change in enthalpy
//W1=w/J
W1=-q+W; //W=Work output //Unit:Btu/LBm //W=h2-h1 //Because q  is out of the system,it is a negative quantity
printf("In problem 3.14,heat loss equal to 1.1 Btu/LBm,\n");
printf("The work output of the turbine per pound of working fluid is %f Btu/LBm \n",W1);
