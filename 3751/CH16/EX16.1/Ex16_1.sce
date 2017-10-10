//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.1
//To Find the Maximum Power Available at the Outlet of Pipe.
      clc
      clear

//Given Data:-
    d=300;        //Diameter of the Pipe, mm
    l=3000;       //Length of the Pipe, m
    H=400;       //Total Head at Inlet, m
     f=0.005;

//Data Required:-
        rho=1000;     //Density of Water, Kg/m^3
        g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
        //Condition for Maximum Power transmission     
              hf=H/3;       //m
        V=sqrt(hf*(2*g*d/1000)/(4*f*l));       //m/s
        Q=(%pi/4)*(d/1000)^2*V;       //Discharge, m^3/s
        Pmax=rho*g*Q*(H-hf)/1000;        //Maximum Power Available at Outlet of Pipe, kW


//Results:-
    printf("The Maximum Power Available at Outlet of Pipe=%.3f kW",Pmax)       //The answer vary due to round off error

