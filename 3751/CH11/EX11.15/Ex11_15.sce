//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.15
//To Determine Minimum Starting Speed of the Pump.

       clc
        clear

//Given Data:-
         Di=300;       //Diameter of Impeller at Inlet, mm
         Do=600;        //Diameter of the Impeller at Outlet, mm
         Vfo=2.6;       //Velocity of Flow at Outlet, m/s
         beta_o=42;         //Vane Angle at outlet, degrees
         eta_man=65/100;        //Manomwtric Efficiency, m^2


//Computations:-
       Di=Di/1000;           //m
       Do=Do/1000;         //m
    
      uo_by_N=%pi*Do/60;      // uo/N
            
     //Minimum Starting Speed of The Centrifugal Pump, Nmin 
         Nmin=(120*Do*eta_man*Vfo/(tand(beta_o)*%pi*(Do^2-Di^2)))/(120*eta_man*Do*uo_by_N/(%pi*(Do^2-Di^2))-1);       //rpm 
            


//Results:-
      printf("The Minimum Starting Speed of the Centrifugal Pump, Nmin =%.2f rpm \n",Nmin )  //The answer vary due to round off error


