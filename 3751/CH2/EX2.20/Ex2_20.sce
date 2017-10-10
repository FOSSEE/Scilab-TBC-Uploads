//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.20
      clc
     clear
     
//Given Data:-
        d=40;     //Diameter of the Jet, mm
        V=35;     //Absolute Velocity of the Jet, m/s
        u=18;      //Velocity of the curved plate, m/s
        AoD=165;          //Angle of deflection of the Jet, degrees

//Data Used:-
     rho=1000;      //Density of water, kg/m^3
     
      
//Computations:-
        d=d/1000;       //m
        a=(%pi/4)*d^2;      //cross-sectional area of Jet, m^2
        theta=180-AoD;       //degrees
   //(a)
        Fx=rho*a*V*(V-u)*(1+cosd(theta));      //N
     //(b)Work done by Jet per second, W
          W=Fx*u;           //N-m/s
     //(c)
          eta=W*2/(rho*a*V^3)*100;        //In percentage
          
//Results:-
     printf("(a)Force exerted on the series of curved plates in direction of Jet, Fx=%.2f N  \n", Fx)      //The answer vary due to round off error
     printf("(b)Work done by Jet per second=%.2f N-m/s \n", W)      //The answer vary due to round off error
     printf("(c)Efficiency of the Jet, eta=%.2f percent", eta)      //The answer vary due to round off error
