//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.14
//To Find     (a)Vane Angle of Impeller at Inlet             (b) Overall Efficiency of the Pump         (c) Manometric Efficiency of the Pump.

       clc
        clear

//Given Data:-
         Do=400;         //Diameter of the Impeller at Outlet, mm
         Di=200;         //Diameter of the Impeller at Inlet, mm
         N=1000;        //Speed, rpm
         Q=39;     //Discharge, litres/s
         Vfo=2.2;       //Velocity of Flow, m/s
         Vfi=Vfo;
         Ds=150;        //Diameter of Suction Pipe, mm
         Dd=100;        //Diameter of Delivery Pipe, mm
         h_s=6;      //Suction Head,  m of water (abs)
         h_d=30;      //Delivery Head,  m of water (abs)
         P=15.75;          //Power required to drive the pump, kW     
         beta_o=45;         //Vane Angle at outlet, degrees
        

//Data Used:-
           rho=1000;         //Density of water, kg/m^3
            g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
          Do=Do/1000;        //m
          Di=Di/1000;         //m
          Ds=Ds/1000;       //m
          Dd=Dd/1000;      //m
           Q=Q/1000;       //m^3/s
           P=P*1000;       //W

    //(a)Vane Angle of Impeller at Inlet, beta_i 
          ui=%pi*Di*N/60;        //m/s
          beta_i=atand(Vfi/ui);        //degrees

   // (b) Overall Efficiency of the Pump 
         As=(%pi/4)*Ds^2;        //m^2
         Ad=(%pi/4)*Dd^2;        //m^2          
         Vd=Q/Ad;       //m/s
         Vs=Q/As;        //m/s
         Hm=(h_d+Vd^2/(2*g))-(h_s+Vs^2/(2*g));      //m
        eta_o=rho*Q*g*Hm/P*100;      //In percentage
         
                  
     // (c) Manometric Efficiency of the Pump, eta_man
          uo=%pi*Do*N/60;      // Tangential velocity of Impeller at Outlet, m/s
          Vwo=uo-Vfo/tand(beta_o);       //m/s
          eta_man=g*Hm/(Vwo*uo)*100;         //In Percentage
   
       
//Results:-
      printf(" (a)Vane Angle of Impeller at Inlet, beta_i=%.2f Degrees \n ",beta_i)  //The answer vary due to round off error
      printf(" (b) The Overall Efficiency of the Pump, eta_o =%.2f Percent \n ",eta_o)  //The answer vary due to round off error
      printf(" (c) Manometric Efficiency of the Pump, eta_man =%.2f Percent \n ",eta_man)  //The answer vary due to round off error

