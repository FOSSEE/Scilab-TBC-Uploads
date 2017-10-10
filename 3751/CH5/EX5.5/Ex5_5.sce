//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.5
//To Determine  (a) Guide Blade Angle    (b)Runner Vane Angles at Inlet and Outlet    (c) Diameter of Runner at Inlet and Outlet       (d) Width of Wheel at Inlet.

     clc
     clear

//Given Data:-
        H=70;       //Net Head, m
        N=600;     //Speed, rpm
        P=367.875;     //Shaft Power, kW
        eta_o=85/100;       //Overall Efficiency
        eta_H=95/100;      //Hydraulic Efficiency
        Kf=0.25;             //Flow Ratio
        bo_by_Do=0.1;       //Breadth Ratio
        t_per=10;       //Percentage of Circumferential Area occupied by the Thickness of Vanes
        Kt=1-t_per/100;        //Vane Thickness Factor
      //As Outer Diameter= 2 times the Inner Diameter,        
             Do_by_Di=2;       //Do/Di 
            

//Data Required:-
     rho=1000;        //Density of Water, Kg/m^3
     g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
        Vfi=Kf*sqrt(2*g*H);     //m/s
         Vfo=Vfi;       
        Q=P*1000/(rho*g*H*eta_o);         //m^3/s
       
               Do=sqrt(Q/(Kt*%pi*bo_by_Do*Vfi));      //m
               Di=Do/Do_by_Di;          //m
               bo=Do*bo_by_Do*1000;        //mm
               bi=Do*bo/Di;           //mm

           ui=%pi*Do*N/60;      //m/s
           uo=%pi*Di*N/60;    //m/s
           Vwi=eta_H*g*H/ui;    //m/s 

    //(a)Guide Vane Angle, alpha_i
              alpha_i=atand(Vfi/Vwi);       //degrees
          
    // (b)Runner Vane Angles at Inlet and Outlet,  beta_i,beta_o
               beta_i=atand(Vfi/(Vwi-ui));       //Runner Vane Angle at Inlet, degrees
               beta_o=atand(Vfo/uo);       //Runner Vane Angle at Outlet, degrees


      //(c)Diameter of Runner at Inlet ant Outlet,  Do and Di .
                         //Calculated Above

     // (d) Width of Wheel at Inlet, bi.
                     //Calculated Above

 //Results:-
    printf(" (a)Guide Vane Angle,  alpha_i=%.2f Degrees\n ",alpha_i)         //The Answer Vary due to Round off Error
       
    printf(" (b)Runner Vane Angles at Inlet and Outlet are:-  \n       beta_i=%.2f Degrees  ,   beta_o =%.2f Degrees \n",beta_i,beta_o)         //The Answer Vary due to Round off Error

    printf(" (c)Diameter of Runner at Inlet and Outlet are: \n          Do=%.4f m          Di=%.4f m \n",Do,Di)         //The Answer(Do) Vary due to Round off Error
    printf(" (d) Width of Wheel at Inlet, bo=%.2f mm\n",bo )         //The Answer Vary due to Round off Error

