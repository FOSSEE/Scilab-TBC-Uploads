//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.13
      clc
     clear
     
//Given Data:-
        d=25;      //Diameter of the Jet, mm
        V=27;     //Velocity of the Jet, m/s
        AoD=140;       //Angle of Deflection, degrees

//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
       d=d/1000;      //m
       a=(%pi/4)*d^2;      //cross-sectional area of Jet, m^2
       m=rho*a*V;         //Mass Flow Rate, kg/s
   //For condition of Maximum work done,
       u=V/3;        //Velocity of Vane, m/s
       theta=180-AoD;          //degrees
   //(a)Maximum work done/second
       W=rho*a*(V-u)^2*(1+cosd(theta))*u/1000;       //kJ/s
   //(b)Efficiency of the Jet,
       KE=(1/2)*rho*a*V^3;        //kinetic energy supplied by jet per second, J
       eta=W*1000/KE*100;         //In percentage

//Result:-
     printf("(a)Maximum work done/sec=%.3f kJ/s \n", W)      //The answer vary due to round off error
     printf("(b)Effeciency of the Jet, eta=%.2f percent \n", eta)      //The answer vary due to round off error
