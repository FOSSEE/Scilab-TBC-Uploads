//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.26
      clc
     clear

//Given Data:-
        H=4;        //Head of water in tank, m
        d=150;       //Diameter of orfice, mm
        Cv=0.96;

//Data Used:-
        rho=1000;      //Density of water, kg/m^3
        g=9.81;      //Acceleration due to gravity, m/s^2


//Computations:-
        d=d/1000;     //m
        a=(%pi/4)*d^2;         //cross-sectional are of orifice, m^2
        V=Cv*sqrt(2*g*H);        //Velocity of Jet, m/s
        F=rho*a*V^2;          //Force exerted on tank, N

//Results:-
     printf("The force exerted on the tank=%.2f n", F)      //The answer vary due to round off error
