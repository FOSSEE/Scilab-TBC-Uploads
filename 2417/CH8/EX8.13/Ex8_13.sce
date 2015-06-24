//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.13\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.13  (page no. 398) 
// Solution

//Regenerative cycle
//Assume that 1 lbm of steam leaves the steam generator and that W1 lbm is bled off to the closed heater at 100psia and that W2 lbm is bled off to the open heater at 50 psia.Alos,assume that the feedwater leaving the closed heater at 310F,18F less than the saturation temperature corresponding to 100 psia.For calculation purposes,we will use hf at 310 F for this enthalpy.Using the Mollier diagram and the steam tables,we find the following values of enthalpy:

//h to turbine=1505 Btu/lbm(at 1000 psia and 1000F)
//h at first extraction=1228 Btu/lbm(isentropically to 100 psia)
//h at second extraction=1168 Btu/lbm(isentropically to 100 psia)
//h at turbine exit=922 Btu/lbm (isentropically to 1 psia)
//hf=298.61 Btu/lbm(at 100 psia)
//hf=250.24 Btu/lbm(at 50 psia)
//hf=280.06 Btu/lbm(at 310 F)
//hf=69.74 Btu/lbm (at 1 psia)
//A heat balance around the high pressure heater gives us
//W1*(1228-298.61) = 1*(280.06-250.24)
W1=((1*(280.06-250.24)))/(1228-298.61); //lbm //W1 lbm is extracted at 100 psia
printf("W1=%f lbm\n",W1);
//A heat balance around the open heater gives us
//W2*1168 +(1-W1-W2)*69.74 + W1*268.61 = 1*250.24
W2=((1*250.24)-(W1*268.61)-69.74+(W1*69.74))/(1168-69.74); //lbm //W2 lbm is extracted at 50 psia
printf("W2=%f lbm\n",W2);
//The work output of the cycle consists of the work that 1 lbm does in expanding isentropically to 100 psia,plus the work done by (1-W1)lbm expanding isentropicaly from 100 to 50 psia,plus the work done by (1-W1-W2)lbm expanding isentropically from 50 to 1 psia.
//Numerically,the work is
workoutput=(1*(1505-1228))+((1-W1)*(1228-1168))+((1-W1-W2)*(1168-922)); //Btu/lbm //the work output
printf("The work output is %f Btu/lbm\n",workoutput);
heatinput=1505-280.06; //Btu/lbm //the heat input
printf("The heat input is %f Btu/lbm\n",heatinput);
n=workoutput/heatinput; //Efficiency
printf("The efficiency is %f percentage\n",n*100);
//When compared to 8.11,we conclude that the addition of additional closed heater raises the efficiency. 
