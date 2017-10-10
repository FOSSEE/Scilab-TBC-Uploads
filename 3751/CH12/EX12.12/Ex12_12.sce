//Fluid Systems - By - Shiv Kumar
//Chapter 12- Reciprocating Pumps
//Example 12.12
//To Find the  Maximum Speed at which the Pump may run without seperation.

        clc
         clear
  
//Given Data:-
        D=10;       //Plunger Diameter, cm
        L=20;        //Stroke Length, cm
        H_s=4;      //Suction Head, m
        H_d=14;     //Delivery Head, m
        d_s=4;       //Diameter of Suction Pipe, cm
        l_s=6;        //Length of Suction Pipe, m
        d_d=3;       //Diameter of Delivery Pipe, cm
        l_d=18;        //Length of Delivery Pipe, m
        p=7.85;      //Pressure (below atm.) for seperation, N/cm^2
        H_a=10.3;         //Atmospheric Pressure Head, m of water 


//Data Used:-
      g=9.81;       //Acceleration due to gravity, m/s^2
      rho=1000;    //Density of water, kg/m^3


//Computations:-
         d_s=d_s/100;    //m
         d_d=d_d/100;     //m
         D=D/100;       //m
         L=L/100;      //m

         a_s=(%pi/4)*d_s^2;      //m^2
         a_d=(%pi/4)*d_d^2;      //m^2
         A=(%pi/4)*D^2;      //m^2
         r=L/2;       //m

        H_sp=p*100^2/(rho*g);     //Pressure Head of water for seperation, m (below atmosphere)    (Value given in textbook is wrong due to incorrect value of p is used)
        H_abs=H_a-H_sp;      //Absolute Pressure Head of water for seperation, m 
        H_as_by_omega2=(l_s/g)*(A/a_s)*r;       //H_as/omega^2
        omega=sqrt((H_sp-H_s)/H_as_by_omega2);    //rad/s
        N_s=omega*60/(2*%pi);     //rpm

        H_ad_by_omega2=(l_d/g)*(A/a_d)*r;       //H_as/omega^2
        omega=sqrt((H_sp+H_d)/H_ad_by_omega2);    //rad/s
        N_d=omega*60/(2*%pi);     //rpm

    //Selecting maximum speed,    
     if N_s>N_d then 
       N=N_s;
      else
        N=N_d;

//Result:-
   printf("Hence, The Maximum Speed at which Pump should be Run is %.2f rpm\n",N)       //The answer vary due to round off error


