//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.16
//To Determine Minimum Starting Speed of the Pump.

       clc
        clear

//Given Data:-
         Di=200;       //Diameter of Impeller at Inlet, mm
         Do=400;        //Diameter of the Impeller at Outlet, mm
         Hm=25;        //Manometric Head, m

//Data Used:-
         g=9.81;       //Acceleration due to gravity, m/s^2


//Computations:-
       Di=Di/1000;           //m
       Do=Do/1000;         //m
    
      uo_by_Nmin=%pi*Do/60;      // uo/Nmin
      ui_by_Nmin=%pi*Di/60;      // ui/Nmin
            
     //Minimum Starting Speed of The Centrifugal Pump, Nmin 
         Nmin=sqrt(2*g*Hm/(uo_by_Nmin^2-ui_by_Nmin^2));      //rpm 
            


//Results:-
      printf("The Minimum Starting Speed of the Centrifugal Pump, Nmin =%.f rpm \n",Nmin )    //The answer vary due to round off error


