//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.4
//To Find     (a)Vane Angle at Inlet       (b)Work done by Impeller on water per second        (c)Manometric Efficiency

       clc
        clear

//Given Data:-
      //As Outer Diameter equals two times Inner Diameter,
         Do_by_Di=2;         //Do/Di
         N=980;        //Speed, rpm
         Hm=52;        //Manometric Head, m
         Vfo=2.6;       //Velocity of Flow, m/s
         Vfi=Vfo;     
         beta_o=42;         //Vane Angle at outlet, degrees
         Do=600;         //Outer Diameter of the Impeller, mm
         bo=60;        //Width at Outlet, mm


//Data Used:-
           rho=1000;         //Density of water, kg/m^3
            g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
          Do=Do/1000;        //m
          bo=bo/1000;       //m

          Di=Do/Do_by_Di;         //Diameter at Inlet of Impeller, m
          ui=%pi*Di*N/60;       //Tangential velocity of Impeller at Inlet,m/s
          uo=%pi*Do*N/60;      // Tangential velocity of Impeller at Outlet, m/s
          Q=%pi*Do*bo*Vfo;      //Discharge, m^3/s

    //(a)Vane Angle at Inlet, beta_i
          beta_i=atand(Vfi/ui);       //degrees

    //(b) Work done by Impeller on water per sec, W
            Vwo=uo-Vfo/tand(beta_o);        //m/s
           W=rho*Q*Vwo*uo/1000;          //kN-m/s
         
     //(c) Manometric Efficiency, eta_man
            eta_man=g*Hm/(Vwo*uo)*100;         //In Percentage


//Results:-
      printf(" (a)Vane Angle at Inlet, beta_i=%.2f Degrees \n ",beta_i)
      printf(" (b) Work done by Impeller on water per sec =%.3f kN-m/s \n ",W)      //The answer provided in the textbook is wrong.
      printf(" (c) Manometric Efficiency, eta_man =%.2f Percent \n ",eta_man)      //The answer provided in the textbook is wrong.


