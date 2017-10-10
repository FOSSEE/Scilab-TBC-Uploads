//Fluid Systems - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.15
  
      clc
       clear

//Given Data:-
      H=120;     //Head, m
      d=74;        //Diameter of Jet, mm
      Q=200;       //Discharge,  litres/s
      P=202.766;        //Shaft Power, kW
      P_mr=3.2;       //Power lost in mechanical resistance,  kW 


//Data Used:-
        rho=1000;          //Density of water, kg/m^3
         g=9.81;            //Acceleration due to gravity, m/s^2

//Computations:-
              Q=Q/1000;          //m^3/s
              d=d/1000;        //m
             P=P*1000;      //W
             P_mr=P_mr*1000;      //W

            Vi=Q/((%pi/4)*d^2);        //m/s
            P_n=(rho*Q*g*H-rho*Q*Vi^2/2)/1000;        //Power lost in Nozzle, kW
            P_hr=(rho*Q*g*H-(P+P_n*1000+P_mr))/1000;    //Power lost due to hydraulic resistance in Runner, kW


//Results:-
     printf("(a) Power lost in Nozzle=%.3f kW\n",P_n)       //The answer vary due to round off error
     printf(" (b)Power lost due to Hydraulic Resistance in Runner =%.2f kW\n",P_hr)       //The answer vary due to round off error   


