//Fluid Systems - By - Shiv Kumar
//Chapter 11- Centrifugal Pumps
//Example 11.13
//To Find         (i)The Discharge of the Pump          (ii)The Pressure at Suction and Delivery side of the Pump.

       clc
        clear

//Given Data:-
         h_st=35;      //Static Head, m
         h_s=4;       //Suction Head, m         
         D=150;         //Diameter of Pipes, mm
         Ds=D;        //Diameter of Suction Pipe, mm
         Dd=D;        //Diameter of Delivery Pipe, mm
         h_fs=1.6;      //Head loss in Suction pipe,  m
         h_fd=6.5;     //Head loss in Delivery Pipe,  m
         Do=380;      //Diameter of Impeller at Outlet, mm
         bo=25;        //Width of Impeller at Outlet, mm
         N=1200;        //Speed, rpm
         beta_o=35;         //Ezxit Blade Angle, degrees
         eta_man=80/100;       //Manometric Efficiency        


//Data Used:-
         g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
          Do=Do/1000;        //m
          D=D/1000;         //m
          Ds=Ds/1000;       //m
          Dd=Dd/1000;      //m
          bo=bo/1000;     //m

         Hm=h_st+h_fs+h_fd;      // Manometric Head, m
          uo=%pi*Do*N/60;      // Tangential velocity of Impeller at Outlet, m/s
          Vwo=g*Hm/(uo*eta_man);       //m/s
          Vfo=(uo-Vwo)*tand(beta_o);        //m/s

     //(i)The Discharge of the Pump, Q
          Q=%pi*Do*bo*Vfo*1000;       //litres/s

    // (ii)The Pressure at Suction and Delivery side of the Pump
   
         A=(%pi/4)*D^2;        //m^2
         Vd=Q*10^-3/A;       //m/s
         Vs=Vd;        //m/s
         Hs=h_s+h_fs+Vs^2/(2*g);        //Pressure on Suction Side, m of water
         h_d=h_st-h_s;      //m
         Hd=h_d+h_fd+Vd^2/(2*g);        //Pressure on Delivery Side, m of water
         

//Result:-
      printf(" (i)The Discharge of the Pump, Q =%.2f litres/s\n",Q)  //The answer vary due to round off error 
      printf(" (ii) Pressure on Suction Side, Hs =-%.3f m of water \n",Hs)  //The answer vary due to round off error
     printf("      Pressure on Delivery Side, Hd =%.2f m of water \n",Hd)  //The answer vary due to round off error
      
