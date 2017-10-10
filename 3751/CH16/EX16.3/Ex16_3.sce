//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.3
//To Determine the Minimum Number of Pipes.
      clc
      clear

//Given Data:-
     l=7500;       //Length of each Pipe, m
     d=125;      //Diameter of each Pipe, mm
     Pr=6000;     //Pressure at Discharge End, kPa
     eta=85/100;      //Efficiency    
     P=156;      //Power Delivered, kW
     f=0.006;

//Data Required:-
        rho=1000;     //Density of Water, Kg/m^3
        g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
         H_minus_hf=Pr*10^3/(rho*g);      //H-hf, m
         H=H_minus_hf/eta;       //m
         hf=H-H_minus_hf;        //m
         Q=P*1000/(rho*g*(H-hf));      //m^3/s
          q=sqrt((hf*2*g*%pi^2*(d/1000)^5)/(64*f*l));      //Discharge in each Pipe, m^3/s
         n=Q/q;        //Number of Pipes

     
//Results:-

         printf("The Minimum Number of Pipes Required=%.f\n",n)

