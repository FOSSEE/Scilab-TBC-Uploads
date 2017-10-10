//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.12
//To Determine     (i)Manometric Efficiency            (ii)Vane Angle at Inlet       (iii)The Least Speed at which the pump commence to work.

       clc
        clear

//Given Data:-
         Do=0.5;        //Outer Diameter of the Impeller, m
         N=600;        //Speed, rpm
         Q=8000;       //Discharge, litres/min.
         Hm=8.5;        //Manometric Head, m
         Di=0.25;         //Inner Diameter of Impeller, m
         beta_o=45;         //Vane Angle at outlet, degrees
         Af=0.06;        //Area of Flow, m^2


//Data Used:-
         g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
       Q=Q/60000;      //m^3/s

       Vfo=Q/Af;        //m/s
       Vfi=Vfo;
       ui=%pi*Di*N/60;       //Tangential velocity of Impeller at Inlet,m/s
       uo=%pi*Do*N/60;      // Tangential velocity of Impeller at Outlet, m/s
       Vwo=uo-Vfo/tand(beta_o);        //m/s
       
    //(i) Manometric Efficiency, eta_man
           eta_man=g*Hm/(Vwo*uo)*100;         //In Percentage          


    //(ii) Vane Angle at Inlet, beta_i
            beta_i=atand(Vfi/ui);       //degrees
         
     //(iii) The Least Speed at which the pump commence to work, Nmin 
         Nmin=120*Vwo*Do*(eta_man/100)/(%pi*(Do^2-Di^2));       //rpm 
            


//Results:-
      printf(" (i) Manometric Efficiency, eta_man =%.2f Percent \n ",eta_man )     //The answer vary due to round off error
      printf(" (ii) Vane Angle at Inlet, beta_i=%.2f Degrees \n ",beta_i )     //The answer vary due to round off error
      printf(" (iii) The Least Speed at which the pump commence to work, Nmin=%.2f rpm \n",Nmin )     //The answer vary due to round off error


