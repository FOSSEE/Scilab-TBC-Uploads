//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.4
//To Find the Diameter of Pipe.
      clc
      clear

//Given Data:-
     l=2100;       //Length of the Pipe, m
     P=103;      //Power Transmitted, kW
     pi=392.4;     //Pressure at Inlet of Pipe, N/cm^2
     eta=80/100;      //Efficiency    
     f=0.005;

//Data Required:-
        rho=1000;     //Density of Water, Kg/m^3
        g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
          H=pi*10^4/(rho*g);      //m
          hf=H*(1-eta);       //m
         Q=P*1000/(rho*g*(H-hf));      //m^3/s
         d=((64*f*l*Q^2)/(hf*2*g*%pi^2))^(1/5)*1000;      //mm  

     
//Results:-

         printf("The Diameter of Pipe=%.2f mm\n",d)       //The answer vary due to round off error

