//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.1
      clc
     clear
     
//Given Data:-
        P=735.75;     //Power Developed, kW
        H=200;        //Head, m
        N=800;         //Speed, rpm
        eta_O=86/100;     //Overall Efficiency
        d_by_D=1/10;      //Ratio of Jet diameter to turbine diameter (d/D)
        Cv=0.98;         //Co-efficienct of velocity
        Ku=0.45;      //Speed ratio

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
        Q=P*1000/(rho*g*H*eta_O);          //Net discharge, m^3/s
   //(a)Diameter of Turbine, D
        D=60*Ku*sqrt(2*g*H)/(%pi*N);        //m
        d=D*d_by_D;                   //m
   //(b)The no. of Jets required
        q=(%pi/4)*d^2*Cv*sqrt(2*g*H);          //Discharge of a single Jet, m^3/s
        n=round(Q/q);              //No. of Jets
   //(c)Diameter of Jet, d
        d=d_by_D*D;                 //m

//Results:-
     printf("(a)Diameter of Turbine, D=%.4f m  \n", D)    //The answer vary due to round off error
     printf("(b)The number of Jets required, n=%.f  \n", n)
     printf("(c)Diameter of Jet, d=%.4f m  \n", d)

