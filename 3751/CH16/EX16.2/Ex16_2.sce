//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.2
//To Determine the Flow Rate and  the Minimum Diameter of Pipe.
      clc
      clear

//Given Data:-
     P=1000;     //Power Transmitted, kW
     eta=85/100;      //Efficiency    
     l=500;       //Length of the Pipe, m
     H=150;       //Head of Water at Inlet, m
     f=0.006;

//Data Required:-
        rho=1000;     //Density of Water, Kg/m^3
        g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
        hf=H*(1-eta);    //m
        Q=P*10^3/(rho*g*(H-hf));       //m^3/s
        d=(64*f*l*Q^2/(2*g*%pi^2*hf))^(1/5);   //m

//Results:-
         printf("The Required Flow Rate, Q=%.4f m^3/s\n",Q)
         printf("The Minimum Diameter, d=%.4f m\n",d)       //The answer vary due to round off error


