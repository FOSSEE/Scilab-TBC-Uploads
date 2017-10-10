//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.5
      clc
     clear
     
//Given Data:-
        d=30;     //Diameter of the Jet, mm
        V=15;     //Velocity of the Jet, m/s
        W=245.25;     //Weight of plate, N

//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
        d=d/1000;       //m
        a=(%pi/4)*d^2;      //cross-sectional area of Jet, m^2
        theta=asind(rho*a*V^2/W);      //degrees
//Results:-
     printf("The Angle through which the plate will swing, theta=%.2f degrees \n", theta)      //The answer vary due to round off error
     
