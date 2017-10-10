//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.27
      clc
     clear
     
//Given Data:-
        H=3.8;        //Head of water in tank, m
        d=200;       //Diameter of orfice, mm
        Cv=0.97;
        u=2;          //Velocity of tank, m/s

//Data Used:-
        rho=1000;      //Density of water, kg/m^3
        g=9.81;       //Acceleration due to gravity, m/s^2
        
//Computations:-
        d=d/1000;     //m
        a=(%pi/4)*d^2;         //cross-sectional are of orifice, m^2
        V=Cv*sqrt(2*g*H);        //Velocity of Jet, m/s
   //(a)
        F=rho*a*(V+u)*V;          //N
   //(b)
        W=F*u;            //N-m/s
   //(c)
        eta=2*V*u/(V+u)^2*100;          //in Percentage

//Results:-
     printf("(a)Propelling Force on tank, F=%.2f N \n", F)        //The answer provided in the textbook is wrong
     printf("(b)Work done by propelling force per second=%.2f N-m/s  \n", W)        //The answer provided in the textbook is wrong
     printf("(c)Efficiency of propulsion, eta=%.2f percent", eta)      //The answer vary due to round off error
