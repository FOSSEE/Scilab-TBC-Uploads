//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.7
//To Determine  (a) The Diameter of Wheel   (b) The Quantity of Water Supplied    (c) The Guide Blade Angle at Inlet       (d) The Runner Vane Angles at Inlet and Exit.

     clc
     clear

//Given Data:-
        P=368;     //Shaft Power, kW     
        H=71;       //Head, m
        N=748;     //Speed, rpm
        bo_by_Do=0.1;       //Breadth Ratio        
        Kf=0.15;             //Flow Ratio
        eta_H=95/100;      //Hydraulic Efficiency
        eta_m=85/100;     //Mechanical Efficiency
        eta_v=100/100;    //Volumetric Efficiency (Assumed to be 100%)
          
      //As Inner Diameter is Half the  Outer Diameter,        
             Di_by_Do=1/2;       //Di/Do 
            

//Data Required:-
     rho=1000;        //Density of Water, Kg/m^3
     g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
        eta_o=eta_H*eta_m*eta_v;     //Overall Efficiency
        Q=P*1000/(rho*g*H*eta_o);         //m^3/s
        Vfi=Kf*sqrt(2*g*H);     //m/s
         Vfo=Vfi;       
               Do=sqrt(Q/(%pi*bo_by_Do*Vfi));      //m
               Di=Do*Di_by_Do;          //m
               
    // (a) The Diameter of Wheel, Do
            //Calculated Above  

    // (b) The Quantity of Water Supplied, Q
             //Calculated Above

   // (c) The Guide Blade Angle at Inlet , alpha_i
   
           ui=%pi*Do*N/60;      //m/s
           uo= %pi*Di*N/60;      //m/s
           Vwi=eta_H*g*H/ui;    //m/s 
           alpha_i=atand(Vfi/Vwi);       //degrees
          
    // (d)Runner Vane Angles at Inlet and Outlet,  beta_i, beta_o
               beta_i=atand(Vfi/(Vwi-ui));       //Runner Vane Angle at Inlet, degrees
               beta_o=atand(Vfo/uo);       //Runner Vane Angle at Outlet, degrees


 //Results:-
    printf(" (a) The Diameter of Wheel, Do =%.3f m\n ",Do )
    printf(" (b) The Quantity of Water Supplied, Q=%.4f m^3/s\n",Q )
    printf(" (c) The Guide Blade Angle at Inlet , alpha_i=%.2f Degrees\n",alpha_i )         //The Answer Vary due to Round off Error
    printf(" (d)Runner Vane Angles at Inlet and Outlet are:-  \n       beta_i=%.2f Degrees  ,   beta_o =%.2f Degrees \n",beta_i,beta_o )          //The Answer Vary due to Round off Error


