//Fluid Systems - By Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.1
   
      clc
      clear

//Given Data:-
           Hs_th=4.8;               //Suction Head (Theoretical), m
           Hd_th=12;               //Delivery Head (Theoretical), m
           N=90;                 //Speed of Pump, rpm
           D=100;             //Piston Diameter, mm
           L=150;             //Length of Stroke, mm
           Q=102;           //Actual Discharge, lit./min
           eta_s=60/100;           //Efficiency of Suction Stroke
           eta_d=75/100;          //Efficiency of Delivery Stroke

//Data Used:-
         rho=1000;       //Density of Water, kg/m^3
          g=9.81;         //Accelerationdue to gravity, m/s^2

//Computations:-
        Vs=(%pi/4)*(D/1000)^2*(L/1000);          //Swept volume in one revolution, m^3
        Vth=Vs*N/60;                  //Theoritical Volume of Water pumped per second, m^3
        m=Vth*rho;         //Theoritical Mass Flow rate, kg/s
        m_act=Q*1000/(60*1000);      //Actual mas flow rate, kg/s
        
          Slip=(m-m_act)*100/m;   //Slip in Percentage
          Cd=m_act/m*100;        //Co-efficient of Discharge in Percentage
          Hs=Hs_th/eta_s;     //Suction Head taking suction efficiency in account, m
          Hd=Hd_th/eta_d;     //Delivery Head taking delivery efficiency in account, m
          H=Hs+Hd;      //Total Head, m
          Pth=m*g*H;         //Theoritical power required to Drive the Pump, W
            A=(%pi/4)*(D/1000)^2;     //Cross section Area of piston, m^2
          Fs=rho*g*Hs*A;         //Average Force during Suction, N
          Fd=rho*g*Hd*A;        //Average Force during Delivery, N
          P=(Fs+Fd)*L*N/60;       //Power required by Pump (Same as Pth), W

//Results:-
         printf(" 1. Slip=%.2f Percent \n",Slip)       //The answer vary due to round off error
         printf(" 2. The Co-efficient of Discharge =%.2f Percent \n",Cd)       //The answer vary due to round off error
         printf(" 3. Theoretical Power Required to Drive the Pump =%.2f W \n",Pth)       //The answer vary due to round off error
         printf(" 4. Force Required to Work the Piston during Suction Stroke =%.2f N \n",Fs)
         printf(" 5. Force Required to Work the Piston during Delivery Stroke =%.2f N \n",Fd)
                     

