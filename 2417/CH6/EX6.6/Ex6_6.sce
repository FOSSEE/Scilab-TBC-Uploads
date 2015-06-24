clear;
clc;
printf("\t\t\tProblem Number 6.6\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.6 (page no. 245) 
// Solution

//Let us first put each of the given variables into a consistent set of units:
p=(200+14.7)*(144); //Unit:psfa*(lbf/ft^2) //1 ft^2=144 in^2 //pressure
T=(460+73); //Fahrenheit temperature converted to absolute temperature //unit:R
V=120/1728;  //1 ft^3=1728 in^3 //total volume //unit:ft^3
R=1545/28; //Unit:ft*lbf/lbm*R //because the molecular weight of nitrogen is 28 //constant of proportionality
//Applying, p*v=R*T, //ideal gas law
v=(R*T)/p; //Unit:ft^3/lbm //specific volume
printf("The specific volume is %f ft^3/lbm\n",v);
//The mass of gas is the total volume divided by the specific volume
printf("The gas in the container is %f lbm\n",V/v);
//The same result is obtained by direct use of eq. p*V=m*R*T
m=(p*V)/(R*T); //The gas in the container //unit:lbm //ideal gas law
printf("The gas in the container is %f lbm\n",m); 
