//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.11
//To Determine  The Flow Rate, Guide Vane Angles, Runner Vane Angles  and Inner and Outer Diameters of the Runner.

     clc
     clear

//Given Data:-
        H=86.4;       //Net Head, m
        N=650;     //Speed, rpm
        P=397;     //Shaft Power, kW     
        bo_by_Do=0.1;       //Breadth Ratio        
        Di_by_Do=0.5;       //Di/Do 
        Kf=0.17;             //Flow Ratio
        eta_H=95/100;      //Hydraulic Efficiency
        eta_o=85/100;     //Overall Efficiency    
     //As Discharge is Radial and Flow Velocity is Constant,
          alpha_o=90;     //degrees         //Vfi=Vfo=Vo 
                             

//Data Required:-
     rho=1000;        //Density of Water, Kg/m^3
     g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
        Q=P*1000/(rho*g*H*eta_o);         //m^3/s
        Vfi=Kf*sqrt(2*g*H);     //m/s
         Vfo=Vfi;       
               Do=sqrt(Q/(%pi*bo_by_Do*Vfi));      //m
               Di=Do*Di_by_Do;          //m
              ui=%pi*Do*N/60;      //m/s
              uo= %pi*Di*N/60;      //m/s
              Vwi=eta_H*g*H/ui;    //m/s 
               alpha_i=atand(Vfi/Vwi);       //degrees
               beta_i=atand(Vfi/(Vwi-ui));       //Runner Vane Angle at Inlet, degrees
               beta_o=atand(Vfo/uo);       //Runner Vane Angle at Outlet, degrees
               

//Results:-
    printf(" (i) The Flow Rate, Q=%.3f m^3/s\n",Q )
    printf(" (ii) Guide Vane Angles are: \n        alpha_i=%.2f Degrees  ,  alpha_o=%.f Degrees\n",alpha_i,alpha_o)        //The Answer Vary due to Round off Error
    printf(" (iii) Runner Vane Angles are:-  \n       beta_i=%.2f Degrees ,  beta_o =%.2f Degrees \n",beta_i,beta_o )        //The Answer Vary due to Round off Error
    printf(" (iv) Inner and Outer Diameters of the Runner are: \n        Di=%.2f m   ,    Do=%.2f m \n",Di,Do )


