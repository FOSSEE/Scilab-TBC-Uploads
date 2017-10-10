//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.9
//To Find     (i)Vane Angle at Inlet       (ii)Work done by Impeller on water per second and       (iii)Manometric Efficiency.

       clc
        clear

//Given Data:-
         Do=500;         //Outer Diameter of the Impeller, mm
         Di=250;         //Inner Diameter of the Impeller, mm
         N=1000;        //Speed, rpm
         Hm=40;        //Manometric Head, m
         Vfo=2.5;       //Velocity of Flow, m/s
         Vfi=Vfo;     
         beta_o=40;         //Vane Angle at outlet, degrees
         bo=50;        //Width at Outlet, mm


//Data Used:-
           rho=1000;         //Density of water, kg/m^3
            g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
          Do=Do/1000;        //m
          Di=Di/1000;         //m
          bo=bo/1000;       //m

          ui=%pi*Di*N/60;       //Tangential velocity of Impeller at Inlet,m/s
          uo=%pi*Do*N/60;      // Tangential velocity of Impeller at Outlet, m/s
          Q=%pi*Do*bo*Vfo;      //Discharge, m^3/s

    //(i)Vane Angle at Inlet, beta_i
          beta_i=atand(Vfi/ui);       //degrees

    //(ii) Work done by Impeller on water per sec, W
            Vwo=uo-Vfo/tand(beta_o);        //m/s
           W=rho*Q*Vwo*uo/1000;          //kN-m/s
         
     //(iii) Manometric Efficiency, eta_man
            eta_man=g*Hm/(Vwo*uo)*100;         //In Percentage


//Results:-
      printf(" (i)Vane Angle at Inlet, beta_i=%.2f Degrees \n ",beta_i)     //The answer vary due to round off error
      printf(" (ii) Work done by Impeller on water per sec =%.3f kN-m/s \n ",W)     //The answer vary due to round off error
      printf(" (iii) Manometric Efficiency, eta_man =%.2f Percent \n ",eta_man)     //The answer vary due to round off error


