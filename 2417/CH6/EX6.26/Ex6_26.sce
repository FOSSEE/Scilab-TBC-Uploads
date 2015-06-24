clear;
clc;
printf("\t\t\tProblem Number 6.26\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.26 (page no. 270) 
// Solution

//data given
v2=2; //Because,v2=(2)*v1 //volume increases to its twice its final volume
v1=1; //initial volume
T=460+200; //Fahrenheit temperature converted to absolute temperature
J=778; //conversion factor
R=1545/28; //moleculer weight of nitrogen=28 //Unit:ft*lbf/lbm*R //constant of proportionality
//From the equation, w/J=q=T*deltas=((R*T)/J)*log(v2/v1)
q=((R*T)/J)*log(v2/v1); //Btu/lbm //the heat added to system
//For 0.1 lb,
Q=0.1*q; //Btu //the heat added to system
printf("The heat added to system is %f Btu\n",Q);
//The work out of the system is equal to the heat added;thus,
WbyJ=Q; //The work out of the system(out of the system) //unit:Btu
printf("The work out of the system is %f Btu(out of the system)\n",WbyJ);
