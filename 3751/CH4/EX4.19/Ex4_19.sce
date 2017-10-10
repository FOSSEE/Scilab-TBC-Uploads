//Fluid Systems - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.19
  
      clc
       clear

//Given Data:-
      Q=2.5;           //Total Discharge, m^3/s
      Hr=300;        //Head from reservoir to base of nozzle, m
      n=6;        //Total number of Jets
      L=1200;     //Lenght of Pipe, m
      eta_p=92/100;         //Efficiency of Power Transmission
      eta_o=86/100;       //Overall Efficiency
      Cv=0.97;        //Co-efficient of Velocity
      f=0.0025;      //Darcy Co-efficient of Friction


//Data Used:-
        rho=1000;          //Density of water, kg/m^3
         g=9.81;            //Acceleration due to gravity, m/s^2

//Computations:-
            h_f=(1-eta_p)*Hr;       //m
            H=Hr-h_f;           //Effective Head, m
            Vi=Cv*sqrt(2*g*H);          //Velocity of Jet, m/s
            
       //(a)Shaft Power, P
             P=rho*Q*g*H*eta_o/1000;           //kW

       //(b)Diameter of the Jet, d
          q=Q/n;        //Discharge per Jet, m^3/s
          d=sqrt(q/((%pi/4)*Vi));         //m
                    
      //(c)Diameter of the Pipe, D_pipe
           D_pipe=(64*f*L*Q^2/(h_f*2*g*%pi^2))^(1/5)*1000;        //mm

//Results:-
        printf(" (a)Shaft Power, P=%.3f kW\n",P)
        printf(" (b)Diameter of the Jet, d=%.4f m\n",d)
        printf(" (c)Diameter of the Pipe, D_pipe=%.2f mm\n",D_pipe)       //The answer vary due to round off error


