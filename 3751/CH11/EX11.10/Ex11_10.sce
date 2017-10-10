//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.10
//To Find     (i)Manometric Head             (ii)Manometric Efficiency         (iii)Overall Efficiency of the Pump.

       clc
       clear
       
//Given Data:-
         Do=480;         //External Diameter of the Impeller, mm
         Di=240;         //Internal Diameter of the Impeller, mm
         N=1000;        //Speed, rpm
         Q=0.0576;     //Rate of Flow, m^3/s
         Vfo=2.4;       //Velocity of Flow, m/s
         Vfi=Vfo;
         Ds=180;        //Diameter of Suction Pipe, mm
         Dd=120;        //Diameter of Delivery Pipe, mm
         h_s=6.2;      //Suction Head,  m of water (abs)
         h_d=30.2;      //Delivery Head,  m of water (abs)
         P=35;          //Power required to drive the pump, kW     
         beta_o=45;         //Vane Angle at outlet, degrees
        

//Data Used:-
           rho=1000;         //Density of water, kg/m^3
            g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
          Do=Do/1000;        //m
          Di=Di/1000;         //m
          Ds=Ds/1000;       //m
          Dd=Dd/1000;      //m
          P=P*1000;         //W

     //(i)Manometric Head, Hm

         As=(%pi/4)*Ds^2;        //m^2
         Ad=(%pi/4)*Dd^2;        //m^2          
         Vd=Q/Ad;       //m/s
         Vs=Q/As;        //m/s
         Hm=(h_d+Vd^2/(2*g))-(h_s+Vs^2/(2*g));      //m

         
          uo=%pi*Do*N/60;      // Tangential velocity of Impeller at Outlet, m/s
          Vwo=uo-Vfo/tand(beta_o);       //m/s
         
     //(ii) Manometric Efficiency, eta_man
            eta_man=g*Hm/(Vwo*uo)*100;         //In Percentage
   
     //(iii) The Overall Efficiency of the Pump, eta_o
           eta_o=rho*Q*g*Hm/P*100;      //In percentage

//Results:-
      printf(" (i)Manometric Head, Hm =%.2f m \n ",Hm)
      printf(" (ii) Manometric Efficiency, eta_man =%.2f Percent \n ",eta_man)     //The answer vary due to round off error
      printf(" (iii) The Overall Efficiency of the Pump, eta_o =%.2f Percent \n ",eta_o)     //The answer vary due to round off error


