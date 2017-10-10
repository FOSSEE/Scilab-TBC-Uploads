//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.4
//To Find  (a)Diameter and Width at Inlet ant Outlet   (b)Runner Vane Angles at Inlet and Outlet    (c)Guide Blade Angles

     clc
     clear

//Given Data:-
        H=70;       //Net Head, m
        N=700;     //Speed, rpm
        P=330;     //Shaft Power, kW
        eta_o=85/100;       //Overall Efficiency
        eta_H=92/100;      //Hydraulic Efficiency
        Kf=0.22;             //Flow Ratio
        bo_by_Do=0.1;       //Breadth Ratio
        t_per=6;       //Percentage of Circumferential Area occupied by the Thickness of Vanes
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
       
     //(a)Diameter and Width at Inlet ant Outlet,  Do,bo, Di and bi.        
               Do=sqrt(Q/(Kt*%pi*bo_by_Do*Vfi));      //m
               Di=Do/Do_by_Di;          //m
               bo=Do*bo_by_Do*1000;        //mm
               bi=Do*bo/Di;           //mm

           ui=%pi*Do*N/60;      //m/s
           uo=%pi*Di*N/60;    //m/s
           Vwi=eta_H*g*H/ui;    //m/s 

    // (b)Runner Vane Angles at Inlet and Outlet,  beta_i,beta_o
               beta_i=atand(Vfi/(Vwi-ui));       //Runner Vane Angle at Inlet, degrees
               beta_o=atand(Vfo/uo);       //Runner Vane Angle at Outlet, degrees

    //(c)Guide Vane Angle, alpha_i
              alpha_i=atand(Vfi/Vwi);       //degrees
          //As flow is radial at outlet,
               alpha_o=90;      //degrees

//Results:-
    printf(" (a)Diameter and Width at Inlet and Outlet are: \n\t")
       printf("Do=%.3f m     bo=%.1f mm\n        Di=%.3f m     bi=%.1f mm\n",Do,bo,Di,bi)        //The Answer Vary due to Round off Error
    printf(" (b)Runner Vane Angles at Inlet and Outlet are:-  \n       beta_i=%.2f Degrees  ,   beta_o =%.2f Degrees \n",beta_i,beta_o)        //The Answer Vary due to Round off Error
    printf(" (c)Guide Vane Angles, \n      alpha_i=%.2f Degrees  ,  alpha_o=%.f Degrees\n ",alpha_i,alpha_o)        //The Answer Vary due to Round off Error

