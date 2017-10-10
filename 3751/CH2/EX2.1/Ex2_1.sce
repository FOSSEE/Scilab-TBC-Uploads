//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.1
     clc
     clear
     
//Given Data:-
        V=32;     //Velocity of the Jet, m/s
        d=5;      //Diameter of the Jet, cm

//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
       d=d/100;      //cm
       a=(%pi/4)*d^2;      //cross-sectional area of Jet, m^2
       m=rho*a*V;         //Mass Flow Rate, kg/s
       F=m*V/1000;        //Force Exerted by the Jet on the flat plate, kN
//Result:-
     printf("The Force exerted by the Jet on the plate=%.3f kN \n", F)      //The answer vary due to round off error
    
