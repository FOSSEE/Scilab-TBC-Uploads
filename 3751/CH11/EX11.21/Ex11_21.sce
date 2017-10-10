//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.21
//To Find  the Manometric Efficiency
          clc
          clear

//Given Data:-
      n=4;           //Number of Pumps 
      N=400;            //Speed, rpm
      H_Tm=40;         //Total Manometric Head, m
      Q=0.2;           //Discharge, m^3/s
      beta_o=40;      //Vane Angle at Outlet, degrees
      Do=600;           //Diameter of the Impeller at Outlet, mm
      bo=50;           //Width of Impeller at outlet, mm
   

//Data Used: -
          rho=1000;               //Density of water, kg/m^3
         g=9.81;       //Acceleration due to gravity, m/s^2
        

//Computations:-
            Do=Do/1000;        //m
            bo=bo/1000;        //m
           A=%pi*Do*bo;          //Area of Flow, m^2
           Hm=H_Tm/n;            //Manometric Head of each Pump, m

             uo=%pi*Do*N/60;         //Tangential Velocity of Impeller at Outlet, m/s
             Vfo=Q/A;         //Velocity of Flow, m/s
             Vfi= Vfo; 
             Vwo=uo-Vfo/tand(beta_o);      //m/s

              eta_man=g*Hm/(Vwo*uo)*100;       //Manometric Efficiency in Percentage     


//Results:-
          printf("Manometric Efficiency, eta_man=%.2f Percent \n",eta_man)       //The answer vary due to round off error


