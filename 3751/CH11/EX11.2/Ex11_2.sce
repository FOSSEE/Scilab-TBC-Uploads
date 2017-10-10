//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.2
//To Find the Vane Angle at Outer Periphery of the Impeller.

     clc
      clear

//Given Data:-
        N=1470;      //Speed, rpm
        Q=100;       //Discharge, litres/s
        Hm=24;      //manometric Head,  m
        Do=240;      // Diameter of Impeller at Outlet, mm
        b_o=50;       //Width of Impeller at Outlet, mm
        eta_man=76/100;      //Manometric EEfficiency


//Data Used:-
        g=9.81;       //Acceleration due to gravity, m/s^2


//Computations:-
         Q=Q/1000;     //m^3/s
         Do=Do/1000;       //m
         b_o=b_o/1000;     //m

        uo=%pi*Do*N/60;      //m/s
        Vwo=g*Hm/(uo*eta_man);       //m/s
        Vfo=Q/(%pi*Do*b_o);       //m/s
    //From Outlet Velocity Triangle (OVT),
      beta_o=atand(Vfo/(uo-Vwo));      //degrees 

//Result:-
      printf("The Vane Angle at Outer Periphery of Impeller, beta_o=%.2f Degrees \n",beta_o)       //The answer vary due to round off error


