//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.5
//To Find the Discharge of Pump.

       clc
        clear

//Given Data:-
         Hm=14.5;        //Manometric Head, m
         N=1000;        //Speed, rpm
         beta_o=30;         //Vane Angle at outlet, degrees
         Do=300;         //Outer Diameter of the Impeller, mm
         bo=50;        //Width at Outlet, mm
         eta_man=95/100;      //Manometric Efficiency


//Data Used:-
          g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
          Do=Do/1000;        //m
          bo=bo/1000;       //m

         uo=%pi*Do*N/60;       //m/s
         Vwo=g*Hm/(uo*eta_man);        //m/s
         Vfo=tand(beta_o)*(uo-Vwo);       //m/s
         Q=%pi*Do*bo*Vfo*1000;       //Discharge, litres/s

//Results:-         
       printf("The Discharge of the Pump=%.2f litres/s\n",Q)     //The answer vary due to round off error


