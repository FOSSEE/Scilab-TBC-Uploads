//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.8
//To Find Inlet and outlet Angles of the Runner blades

clc
clear

//Given:
   H=25;   //Head, m
   P=23000;   //Shaft Power, KW
   D=5;    //External Diameter of Runner, m
   d=3;    //Diameter of Hub, m
   N=60;    //Rotational Speed, rpm
   eta_H=95/100;  //Hydraulic Efficiency 
   eta_0=88/100;  //Overall Efficiency
   Vw=0;    //As there is no exit whirl
      
//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Computations
     Dm=(D+d)/2;   //Mean Diameter of Runner, m
     ui=%pi*Dm*N/60   //m/s
     Q=P*10^3/(rho*g*H*eta_0);   //Discharge, m^3/s
            Vfi=Q/((%pi/4)*(D^2-d^2))     // m/s
            Vwi=eta_H*g*H/ui;     //m/s
                     uo=ui;
                     Vfo=Vfi;
            Beta_i=atand(Vfi/(Vwi-ui));    //Degrees
            Beta_o=atand(Vfo/uo);      //Degrees

//Results
       printf("At the Mean Radius\n\t")
       printf("Runner Blade Angle at Inlet, Beta_i=%.2f Degrees\n\t",Beta_i)     //The answer vary due to round off error
       printf("Runner Blade Angle at Outlet, Beta_o=%.2f Degrees\n",Beta_o)     //The answer vary due to round off error
