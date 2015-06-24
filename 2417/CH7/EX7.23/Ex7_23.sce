//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.23\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.23  (page no. 358) 
// Solution

//The cooling tower
//From the Steam tables,
//For water:
h100F=68.05;  //Btu/lbm //enthalpy at 100 F
h70F=38.09;   //Btu/lbm  //enthalpy at 70 F
//For air:
h=20.4; //Unit:Btu/lb //at inlet,total heat/lb dry air
w=38.2; //Unit:grains/lb  //at inlet,moisture pickup/lb dry air (at 60F D.B. and 50% R.H.)
H=52.1; //Unit:Btu/lb //at outlet,total heat/lb dry air
W=194.0; //Unit:grains/lb //at outlet,moisture pickup/lb dry air (at 90F D.B. and 90% R.H.)

//Per pound of dry air,the heat interchange is H-h Btu per pound of dry air.
//Per pound of dry air,the moisture increase is (W-w)/7000 lb per pound of dry air.
//From the equation, ma*(H-h) = 200000*h100F - mwout*h70F             //ma=mass of air  mwout=mass of cooled water 
//and  ma*((W-w)/7000) = 200000 - mwout
//Solving the latter equation for mwout,we have  mwout=200000-(ma*((W-w)/7000))
//Substituting this into the heat balance yields,
// ma*(H-h) = 200000*h100F - 200000*h70F + ma*h70F*((W-w)/7000)
//Solving gives us,
ma=(200000*(h100F-h70F))/((H-h)-(h70F*((W-w)/7000))); //The amount of air required per hour //Unit:lbm/hr of dry air
printf("The amount of air required per hour is %f lbm/hr of dry air\n",ma);
printf("The amount of water lost per hour due to evaporation is %f lbm/hr\n",ma*((W-w)/7000));
//note that the water evaporated is slightly over 2% of the incoming water,and this is the makeup that has to be furnished to the tower.
//answer are slightly differ because of value of (W-w)/7000 is given 0.0233 instead of 0.0225
