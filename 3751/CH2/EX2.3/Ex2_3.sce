//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.3
      clc
     clear
//Given Data:-
        d=40;     //Diameter of the Jet, mm
        V=60;     //Velocity of the Jet, m/s
        AoD=125;     //Angle of Deflection, degrees

//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
        d=d/1000;       //m
        a=(%pi/4)*d^2;      //cross-sectional area of Jet, m^2
        theta=180-AoD;      //degrees
        Fx=rho*a*V^2*(1+cosd(theta));      //N
//Results:-
     printf("The Force exerted by the Jet of water in the direction of Jet, Fx=%.2f N  \n",Fx)       //The answer provided in the textbook is wrong.
   
