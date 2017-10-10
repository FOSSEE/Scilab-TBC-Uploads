//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.18
//To Find       (a)Manometric Efficiency.         (b)Inlet Vane Angles.            (c)Loss of Head at Inlet of Impeller

          clc
          clear 

//Given Data:- 
      Q=0.21;           //Discharge, m^3/s
      Af=0.085;       //Cross-sectional Area of Flow, m^2
      Di=300;          //Inner Diameter of the Impeller,  mm
      Do=600;           //Outer Diameter of the Impeller, mm
      N=600;            //Speed, rpm
      Hm=19;          //Manometric Head,  m
      beta_o=35;      //degrees 
      Q_per=30;       //Percentage by which Discharge is reduced


//Data Used: -
        g=9.81;       //Acceleration due to gravity, m/s^2
        

//Computations:-
            Di=Di/1000;         //m
            Do=Do/1000;        //m

             ui=%pi*Di*N/60;           //Tangential Velocity of Impeller at Inlet,  m/s
             uo=%pi*Do*N/60;         //Tangential Velocity of Impeller at Outlet, m/s
             Vfo=Q/Af;         //Velocity of Flow, m/s
             Vfi= Vfo; 
             Vwo=uo-Vfo/tand(beta_o);      //m/s
             
       //(a)Manometric Efficiency, eta_man
           eta_man=g*Hm/(Vwo*uo)*100;      //In Percentage

     //(b)Inlet Vane Angle,  beta_i 
             beta_i=atand(Vfi/ui);        //degrees

     //(c)Loss of Head at inlet,  H_L
               Q_dash=Q-Q_per/100*Q;      //m^3/s
               Vfi_dash=Q_dash/Af;           //m/s
              H_L=(ui-Vfi_dash*cotd(beta_i) )^2/(2*g);      // m of water

//Results
    printf("(a)Manometric Efficiency, eta_man =%.2f Percent \n",eta_man)       //The answer vary due to round off error
    printf ("(b)Inlet Vane Angle, beta_i =%.2f Degrees \n",beta_i)       //The answer vary due to round off error  
    printf ("(c)Loss of Head at Inlet to the Impeller =%.3f m of water", H_L)  //The answer vary due to round off error
      
               

