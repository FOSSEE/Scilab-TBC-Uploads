//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.11
//To Find  Vane Angle at Outer periphery of Impeller.

       clc
        clear

//Given Data:-
         Q=0.118;      //discharge, m^3/s
         N=1450;        //Speed, rpm
         Hm=25;        //Manometric Head, m
         Do=250;         //Diameter of the Impeller at Outlet,  mm
         bo=50;        //Width at Outlet, mm
         eta_man=75/100;         //Manometric Efficiency


//Data Used:-
         g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
          Do=Do/1000;        //m
          bo=bo/1000;       //m

          uo=%pi*Do*N/60;      // Tangential velocity of Impeller at Outlet, m/s
          Vwo=g*Hm/(uo*eta_man);       //m/s
          Vfo=Q/(%pi*Do*bo);      //m/s
          beta_o=atand(Vfo/(uo-Vwo));       //degrees

//Results:-
      printf(" Vane Angle at Outlet, beta_o=%.2f Degrees \n ",beta_o)     //The answer vary due to round off error
      


