//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.9
      clc
     clear
     
//Given Data:-
        d=65;     //Diameter of the Jet, mm
        V=20;     //Velocity of the Jet, m/s
        u=8;      //Velocity of curved vane, m/s
        AoD=160;     //Angle of Deflection, degrees

//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
        d=d/1000;       //m
        a=(%pi/4)*d^2;      //cross-sectional area of Jet, m^2
        theta=180-AoD;      //degrees
        Fx=rho*a*(V-u)^2*(1+cosd(theta));      //N
        P=Fx*u/1000;       //Power of Jet, KW
        KE=(1/2)*rho*a*V^3;     //Kinetic energy of Jet per second, N-m/s(W)
        eta=P*1000/KE*100;     //In percentage
        
//Results:-
     printf("(a)The Force exerted on plate in direction of Jet, Fx=%.2f N  \n", Fx)      //The answer vary due to round off error
     printf("(b)Power of Jet=%.3f KW  \n", P)      //The answer vary due to round off error
     printf("(c)Efficiency of Jet, eta=%.2f percent", eta)


