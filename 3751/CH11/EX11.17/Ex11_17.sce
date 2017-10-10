//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.17
//To Find       (a)Manometric Efficiency.         (b)Minimum Starting Speed

          clc
          clear 

//Given Data:- 
      Di=1200;          //Inner Diameter of the Impeller,  mm
      Do=600;           //Outer Diameter of the Impeller, mm
      N=200;            //Speed, rpm
      Hm=6;          //Manometric Head,  m
      beta_o=26;          // Vane Angle at Outlet,  degrees
      Vfo=2.5;       // Velocity of flow at Outlet, m/s


//Data Used: -
        g=9.81;       //Acceleration due to gravity, m/s^2
        

//Computations:-
            Di=Di/1000;         //m
            Do=Do/1000;        //m

             uo=%pi*Di*N/60;         //Tangential Velocity of Impeller at Outlet, m/s
             Vwo=uo-Vfo/tand(beta_o);      //m/s
       
        //(a)Manometric Efficiency, eta_man
              eta_man=g*Hm/(Vwo*uo)*100;         //In Percentage

       //(b) Minimum Starting Speed,  Nmin 
                     Nmin =sqrt(2*g*Hm*60^2/(%pi^2*(Di^2-Do^2)));         //rpm


//Results:-
            printf("(a)Manometric Efficiency =%.2f Percent \n",eta_man)  //The answer vary due to round off error
            printf(" (b)Minimum Starting Speed, Nmin =%.f rpm",Nmin)  //The answer vary due to round off error


