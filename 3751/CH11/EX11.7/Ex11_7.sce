//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.7
//To Determine the Impeller Speed and Torque produced by it.

       clc
        clear

//Given Data:-
         Q=60;       //Discharge, litres/s
         Ri=75;         //Radius  of the Impeller at Inlet, mm
         Ro=150;         //Radius of the Impeller at Outlet, cm
         beta_o=30;     //Vane Angle at Outlet, degrees
         beta_i=30;     //Vane Angle at Inlet, degrees
         Ai=0.025;       //Impeller Area at Inlet, m^2


//Data Used:-
         rho=1000;       //Density of water, kg/m^3


//Computations:-
             Q=Q/1000;     //m^3/s
             Ri=Ri/1000;     //m
             Ro=Ro/1000;       //m

          Di=2*Ri;       //m
          Do=2*Ro;      //m
          Vfi=Q/Ai;         //m/s
          Vfo=Vfi;
          ui=Vfi/tand(beta_i);       //m/s
          N=ui*60/(%pi*Di);        //rpm
          
          uo=%pi*Do*N/60;          //m/s
          Vrwo=Vfo/tand(beta_o);       //m/s
          Vwo=uo-Vrwo;        //m/s
          P=rho*Q*Vwo*uo;      //Impeller Power, W
          Ti=P*60/(2*%pi*N);      //Impeller Torque, N-m

//Results:-
         printf("Impeller Speed, N=%.2f rpm\n",N)     //The answer vary due to round off error
         printf("Impeller Torque, Ti=%.2f N-m\n",Ti)     //The answer vary due to round off error
          

