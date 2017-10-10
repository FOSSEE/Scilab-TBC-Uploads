//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.1
//To Find (a)Discharge  (b)Diameter of Hub And Diameter of Runner (c)Speed

    clc
     clear
     
//Given:
   P=37;   //Shaft Power, MW
   H=22;   //Head, m
   eta_0=92/100;  //Overall Efficiency
   dbyD=1/3;   //Ratio of Diameters of Hub and Runner
   Kf=0.6;     //Flow Ratio
   Ku=2;       //Speed Ratio
//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Computations

  //(a)Discharge, Q
     Q=P*10^6/(rho*g*H*eta_0);   //m^3/s

  //(b)Diameter of Hub(d) And Diameter of Runner(D)
      d=sqrt(Q/((%pi/4)*Kf*sqrt(2*g*H)*(dbyD^-2-1)));   //m
      D=d/dbyD;  //m
  
  //(c) Speed,N
     N=Ku*60*sqrt(2*g*H)/(%pi*D);  // rpm

//Results
  printf("(a)Discharge, Q=%.2f m^3/s \n",Q)   //The answer vary due to round off error
  printf(" (b)Diameter of Hub, d=%.2f m \n",d)    
  printf("   Diameter of Runner, D=%.2f m \n",D)   //The answer vary due to round off error
  printf(" (c)Speed, N=%.2f rpm \n",N)   //The answer vary due to round off error
