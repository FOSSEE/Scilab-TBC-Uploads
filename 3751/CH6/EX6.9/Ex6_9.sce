//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.9
//To Determine Runner Vane Angles at the hub and at the Outer Periphery

clc
clear

//Given:
   P=22500;   //Power Available at Shaft, KW
   H=20;   //Head, m
   N=150;    //Rotational Speed, rpm
   eta_H=95/100;  //Hydraulic Efficiency
   eta_0=88/100;  //Overall Efficiency
   D=4.5;    //Outer Diameter of Runner, m
   d=2;    //Diameter of Hub, m
   Vw=0;    //As there is no exit whirl
      
//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Computations
    //Runner Vane Angles at Hub
     uo=%pi*d*N/60;  //m/s
       ui=uo;
     Q=P*10^3/(rho*g*H*eta_0);   //Discharge, m^3/s
             Vwi=eta_H*g*H/ui;     //m/s
             Vfi=Q/((%pi/4)*(D^2-d^2))     // m/s
       Vfo=Vfi;
            Beta_i=180-atand(Vfi/(ui-Vwi));    //Degrees
            Beta_o=atand(Vfo/uo);      //Degrees
	
//Result1
       printf("Runner Vane Angles at the Hub \n\t")
       printf("Beta_i=%.2f Degrees\n\t",Beta_i)     //The answer vary due to round off error
       printf("Beta_o=%.2f Degrees\n\n",Beta_o)     //The answer vary due to round off error

     // Runner Vane Angles at outer periphery
    uo=%pi*D*N/60;  //m/s
               ui=uo;
          Vwi=eta_H*g*H/ui;     //m/s
            Beta_i=180-atand(Vfi/(ui-Vwi));    //Degrees
            Beta_o=atand(Vfo/uo);      //Degrees
	
//Result2
       printf("Runner Vane Angles at the Outer periphery \n\t")
       printf("Beta_i=%.2f Degrees\n\t",Beta_i)      //The answer vary due to round off error
       printf("Beta_o=%.2f Degrees\n\n",Beta_o)      //The answer vary due to round off error

