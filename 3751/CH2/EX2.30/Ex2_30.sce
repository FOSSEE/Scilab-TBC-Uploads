//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.30
     clc
     clear
     
//Given Data:-
        V=40;        //Absolute Velocity of Jet, m/s
        a=0.04;       //Cross-sectional area of Jet, m^2
        u=40;          //Speed of boat, km/hr

//Data Used:-
        rho=1000;      //Density of water, kg/m^3

//Computations:-
        u=u*1000/3600;         //m/s
        F=rho*a*(V+u)*V;          //N
        eta=2*u/(V+2*u)*100;          //in Percentage

//Results:-
     printf("(a)Propelling Force, F=%.f N \n", F)     //The answer vary due to round off error
     printf("(b)Efficiency of propulsion, eta=%.2f percent", eta)

