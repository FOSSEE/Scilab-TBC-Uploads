//Fluid Systems - By Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.2
//Referring to Example 12.1
//To Determine      1.The Slip       2. The Co-efficient of Discharge        3. Theoretical Power Requied to Drive the Pump       4. Force Required to Work the Piston during Suction Stroke      5. Force Required to Work the Piston during Delivery Stroke.
  
      clc
      clear

//Given Data:-
      //The Pump is Double Acting
      //From Example 12.1
           Hs_th=4.8;               //Suction Head (Theoretical), m
           Hd_th=12;               //Delivery Head (Theoretical), m
           N=90;                 //Speed of Pump, rpm
           D=100;             //Piston Diameter, mm
           L=150;             //Length of Stroke, mm
           eta_s=60/100;           //Efficiency of Suction Stroke
           eta_d=75/100;          //Efficiency of Delivery Stroke

         Q=200;           //Actual Discharge, lit./min
         d=20;         //Diameter of Piston Rod, mm


//Data Used:-
         rho=1000;       //Density of Water, kg/m^3
          g=9.81;         //Accelerationdue to gravity, m/s^2

//Computations:-
        A=(%pi/4)*(D/1000)^2;      //m^2
        a= (%pi/4)*(d/1000)^2;      //m^2
        L=L/1000;        //m
        Vs=2*A*L;          //Swept volume in one revolution, m^3
        Vth=A*L*N/60+(A-a)*L*N/60;                  //Theoritical Volume of Water pumped per second, m^3
        m=Vth*rho;         //Theoritical Mass Flow rate, kg/s
        m_act=Q*1000/(60*1000);      //Actual mas flow rate, kg/s
        
          Slip=(m-m_act)*100/m;   //Slip in Percentage
          Cd=m_act/m*100;        //Co-efficient of Discharge in Percentage
          Hs=Hs_th/eta_s;     //Suction Head taking suction efficiency in account, m
          Hd=Hd_th/eta_d;     //Delivery Head taking delivery efficiency in account, m
          H=Hs+Hd;      //Total Head, m
          Pth=m*g*H;         //Theoritical power Required to Drive the Pump, W
          Fb=rho*(Hs*A+Hd*(A-a));         //Force to be provided by Pump during Backward Stroke, kg
          Ff=rho*(Hs*(A-a)+Hd*A);        // Force to be provided by Pump during Forward Stroke, kg

//Results:-
         printf(" 1. Slip=%.1f Percent \n",Slip)       //The answer vary due to round off error
         printf(" 2. The Co-efficient of Discharge =%.1f Percent \n",Cd)       //The answer vary due to round off error
         printf(" 3. Theoretical Power Requied to Drive the Pump =%.2f W \n",Pth)       //The answer vary due to round off error
         printf(" 4. Force to be provided by Pump during Backward Stroke =%.1f kg \n",Fb)
         printf(" 5. Force to be provided by Pump during Forward Stroke =%.f kg \n",Ff)
                     

