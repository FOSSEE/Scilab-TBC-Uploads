//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.28
      clc
     clear
     
//Given Data:-
        V=20;        //Absolute Velocity of Jet of Water, m/s
        a=0.02;       //Cross-sectional area of Jet, m^2
        u=30;          //Speed of boat, km/hr

//Data Used:-
        rho=1000;      //Density of water, kg/m^3

//Computations:-
        u=u*1000/3600;         //m/s
   //(a)
        Fx=rho*a*(V+u)*V;          //N
   //(b)
        P=Fx*u/1000;       //kW
   //(c)
        eta=2*V*u/(V+u)^2*100;          //in Percentage

//Results:-
     printf("(a)Propelling Force on the boat, Fx=%.f N \n", Fx)      //The answer vary due to round off error
     printf("(b)power required to drive the pump=%.2f kW  \n", P)      //The answer vary due to round off error
     printf("(c)Efficiency of the Jet propulsion, eta=%.2f percent", eta)      //The answer vary due to round off error

