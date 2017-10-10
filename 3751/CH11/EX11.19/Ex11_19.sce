//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.19
//To Find       (a)Head generated     and        (b)Power consumed

          clc
          clear

//Given Data:-
      n=2;           //Number of Stages 
      Q=100;           //Discharge, litres/s
      N=1000;            //Speed, rpm
      Do=500;           //Diameter of the Impeller at Outlet, mm
      bo=25;           //Width of Impeller at outlet, mm
      beta_o=30;      //degrees
      Area_per=10;         //Percentage of Total Area which is covered due to blade thickness
      eta_o=78/100;        //Overall Efficiency
      eta_man=85/100;          //Manometric Efficiency


//Data Used: -
          rho=1000;               //Density of water, kg/m^3
         g=9.81;       //Acceleration due to gravity, m/s^2
        

//Computations:-
            Q=Q/1000;           //m^3/s
            Do=Do/1000;        //m
            bo=bo/1000;        //m
           A=%pi*Do*bo*(1-Area_per/100);          //Actual Area of Flow, m^2

             uo=%pi*Do*N/60;         //Tangential Velocity of Impeller at Outlet, m/s
             Vfo=Q/A;         //Velocity of Flow, m/s
             Vfi= Vfo; 
             Vwo=uo-Vfo/tand(beta_o);      //m/s

      //(a)Head generated, H_Tm
              Hm=eta_man*Vwo*uo/g;        //m
              H_Tm=n*Hm;          //m

       //(b) Power consumed, P
                 P=rho*Q*g*H_Tm/(eta_o*1000);         //kW


//Results:-
          printf("(a)Head Generated, H_Tm=%.2f m \n",H_Tm)  //The answer vary due to round off error
          printf(" (b)Power consumed, P =%.2f kW \n",P)  //The answer vary due to round off error


