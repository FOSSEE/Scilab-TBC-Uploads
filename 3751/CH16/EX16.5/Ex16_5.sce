//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.5
//To Calculate the Increase in Pressure Intensity.
      clc
      clear

//Given Data:-
          d=200;   //diameter of Pipe, mm
          Q=40;       //Discharge, Litres/s
          l=600;     //Length of Pipe, m
          t=1.5;      //Time taken to close the Valve gradually, s
  
//Data Required:-
        rho=1000;     //Density of Water, Kg/m^3

//Computations:-
          A=(%pi/4)*(d/1000)^2;     //m^2
          V=(Q/1000)/A;      //m/s
          p=rho*l*V/(t*1000);       //Pressure Rise, kPa  

     
//Results:-

         printf("The Pressure Rise due to Gradual Closure of Valve=%.f kPa\n",p)       //The answer vary due to round off error

