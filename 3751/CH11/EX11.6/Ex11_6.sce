//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.6
//To Calculate  the Blade angle at Outlet, Power Required and Overall Efficiency of Pump.

       clc
        clear

//Given Data:-
         Do=80;         //Outer Diameter of the Impeller, cm
         Q=1;       //Discharge, m^3/s
         H=80;        //Head, m
         N=1000;        //Speed, rpm
         bo=8;        //Width at Outlet, cm
         Delta_Q_per=3;      //Percentage of Leakage Loss(of the Discharge)
         Delta_P=10;        //Mechanical Loss, kW
         eta_H=80/100;      //Hydraulic Efficiency


//Data Used:-
         rho=1000;       //Density of water, kg/m^3
          g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
          Do=Do/100;        //m
          bo=bo/100;       //m

         uo=%pi*Do*N/60;       //m/s
         Vfo=Q/(%pi*Do*bo);        //m/s
         Vwo=g*H/(uo*eta_H);      //m/s
         Vrwo=uo-Vwo;     //m/s

     //(a)
            beta_o=atand(Vfo/Vrwo);       //Blade Angle at Outlet, degrees
       
        //Result1
            printf(" Blade Angle at Outlet, beta_o=%.2f Degrees \n",beta_o)     //The answer vary due to round off error 
 
   //(b)Power Required          
            Pi=rho*(1+Delta_Q_per/100)*Q*Vwo*uo;         //Power delivered by the Impeller, W
            P=Pi/1000+Delta_P;      //Power required, kW

        //Result2
            printf(" Power Required, P =%.3f kW \n",P)     //The answer vary due to round off error

    //(c)Overall Efficiency, eta_o
           eta_V=1/(1+Delta_Q_per/100);       //Volumetric Efficiency
           eta_m=(P-Delta_P)/P;      //Mechanical Efficiency
           eta_o=eta_H*eta_V*eta_m*100;      //In Percentage     

        //Result3
            printf(" Overall Efficiency, eta_o =%.2f Percent \n",eta_o)     //The answer vary due to round off error

      //Also,  Overall Efficiency
          eta_o=rho*Q*g*H/(P*1000)*100;      //In Percentage        
      
        printf("Also, Overall Efficiency, eta_o=%.2f Percent\n",eta_o)


