//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.32
      clc
     clear
     
//Given Data:-
        V=18;      //Absolute Velocity of the Jet, m/s
        a=0.04;       //cross-sectional area of Jet, m^2
        u=28;          //Speed of the ship, km/hr

//Data Used:-
        rho=1000;      //Density of water, kg/m^3

//Computations:-
        u=u*1000/3600;        //m/s
    //(a)
        F=rho*V*a*(V+u);            //N
    //(b)
        eta=2*u/(V+2*u)*100;        //In percentage

//Results:-
     printf("(a)Propelling Force, F=%.f N  \n", F)
     printf("(b)The Efficiency of propulsion, eta=%.2f percent  \n", eta)      //The answer vary due to round off error
