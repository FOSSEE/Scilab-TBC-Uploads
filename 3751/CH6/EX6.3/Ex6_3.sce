//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.3
//To Find (a)Inlet and Outlet blade Angles  (b)Mechanical Efficiency  (c)Volumetric Efficiency

     clc
      clear
      
//Given:
   D=6;    //Outer Diameter of Runner, m
   d=2;    //Inner Diameter of Runner, m
   P=30;   //Shaft Power, MW
   N=75;   //Speed, rpm
   H=12;   //Head, m
   Q=310   //Discharge through the Runner, m^3/s
   eta_H=96/100;  //Hydraulic Efficiency
      
//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Computations

   u=%pi*D*N/60;     //Velocity of runner, m/s
   ui=u;
   uo=u;
   Vf=Q/((%pi/4)*(D^2-d^2))     // m/s
   Vfi=Vf;
   Vfo=Vf;
   Vwi=eta_H*g*H/ui;   // m/s  //The Answer Vary Because Value of ui used in book is Wrong

//(a)Inlet and Outlet blade Angles, Beta_i and Beta_o

    Beta_i=180-atand(Vfi/(ui-Vwi));   //Degrees
    Beta_o=atand(Vfo/uo);    //Degrees

//(b)Mechanical Efficiency,eta_m 
   
    eta_M=P*10^6/(rho*Q*Vwi*ui)*100;   //percentage(%)    //The Answer Vary Because Value of Vwi used in book is Wrong

//(c)Volumetric Efficiency, eta_v

   eta_o=P*10^6/(rho*Q*g*H)*100;    //Overall Efficiency, percentage(%)
   eta_v=eta_o/(eta_M*eta_H);   //percentage(%)    //The Answer Vary Because Value of eta_m used in book is Wrong

//Results

  printf("(a)Inlet Blade Angle, Beta_i=%.2f degrees and \n",Beta_i)    //The answer vary due to round off error
  printf("   Outlet Blade Angle, Beta_o=%.2f degrees \n",Beta_o)     //The answer vary due to round off error
  printf("(b)Mechanical Efficiency, eta_m=%.2f percent\n",eta_M)     //The answer provided in the textbook is wrong
  printf("(c)Volumetric Efficiency, eta_v=%.2f percent\n ",eta_o)    //The answer provided in the textbook is wrong

