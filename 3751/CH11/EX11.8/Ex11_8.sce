//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.8
//To Determine the Power Required to drive the centrifugal Pump.

       clc
        clear

//Given Data:-
         Q=40;       //Discharge, litres/s
         Hst=20;      //Static Head, m
         D=150;      //Diameter of Pipe, mm
         L=100;      //length of pipe, m
         eta_o=70/100;      //Overall Efficiency
          f=0.015;       //Coefficient of friction 


//Data Used:-
         rho=1000;       //Density of water, kg/m^3
         g=9.81;       //Acceleration due to gravity, m/s^2
   

//Computations:-
             Q=Q/1000;     //m^3/s
             D=D/1000;       //m
          
            A=(%pi/4)*D^2;      //m^2 
            V=Q/A;      //m/s
             Vd=V;
      
           h_f=4*f*L*V^2/(2*g*D);         //Frictional Head Loss in Pipe, m
           Hm=Hst+h_f+Vd^2/(2*g);       //Manometric Head, m
           P=rho*Q*g*Hm/(eta_o*1000);      //kW

//Result:-
      printf("Power Required to drive the Centrifugal Pump=%.3f kW\n",P)     //The answer vary due to round off error    

