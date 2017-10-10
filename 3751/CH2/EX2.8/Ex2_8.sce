//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.8
      clc
     clear
     
//Given Data:-
        d=75;     //Diameter of the Jet, mm
        V=14;     //Velocity of the Jet, m/s
        u=5;     //Velocity of plate, m/s

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     
//Computations:-
        d=d/1000;       //m
        a=(%pi/4)*d^2;  //cross sectional area of Jet, m^2
        F=rho*a*(V-u)^2;    //N
        W=F*u;           //J/s
        KE=(1/2)*rho*a*V^3;     //N-m/s
        eta=W/KE*100;      //In percentage
        
//Results:-
     printf("(a)The Force exerted by the Jet on the plate, F=%.2f N  \n", F)      //The answer vary due to round off error
     printf("(b)Work done by the Jet on the plate per second=%.1f N-m/s or J/s  \n", W)      //The answer vary due to round off error
     printf("(c)Efficiency of Jet, eta=%.2f percent", eta)      //The answer vary due to round off error
     
     
     
