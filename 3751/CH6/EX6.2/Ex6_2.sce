//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.2
//To Find Diameter of Runner, Speed of Runner and Specific Speed of Turbine

     clc
     clear

//Given:
   P=8;   //Shaft Power, MW
   H=6;   //Head, m
   Ku=2.09;       //Speed Ratio
   Kf=0.68;     //Flow Ratio
   eta_0=90/100;  //Overall Efficiency
   dbyD=1/3;   //Ratio of Diameters of Hub and Runner
   
//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Computations

     Q=P*10^6/(rho*g*H*eta_0);  //Discharge, m^3/s
     d=sqrt(Q/((%pi/4)*Kf*sqrt(2*g*H)*(dbyD^-2-1)));   //Diameter of hub, m
     D=d/dbyD;  //Diameter of runner, m
     N=Ku*60*sqrt(2*g*H)/(%pi*D);  //Speed of Runner, rpm
     Ns=N*(P*10^3)^(1/2)/(H^(5/4));   //Specific Speed of Turbine, SI Units
 
//Results
  printf("Diameter of Runner, D =%.1f m \n",D)
  printf("Speed of Runner, N = %.2f rpm \n",N)   //The answer provided in the textbook is wrong
  printf("Specific Speed of Turbine, Ns = %.2f (SI Units)",Ns)  //The answer provided in the textbook is wrong(Due to error in N)
