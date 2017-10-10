//Fluid Systems- By Shiv Kumar
//Chapter 5- Francis Turbine
//Example 5.2
//To Find  (a)Discharge   (b) Power Developed  and  (c)Hydraulic Efficiency

     clc
     clear

//Given Data:-
    Do=1.2;        //Diameter of Runner at Inlet, m
    Ao=0.4;        //Area of Flow at Inlet, m^2
    N=500;        //Speed of Runner, rpm
    H=135;        //Head, m
    alpha_i=20;        //Guide Vane Angle at Inlet, degrees
    beta_i=65;          //Vane angle at Inlet, degrees

//Data Required:-
      rho=1000;       //Density of Water, Kg/m^3
      g=9.81;           //Acceleration due to gravity, m/s^2


//Computations:-
         ui=%pi*Do*N/60;     //m/s
         Vri=ui*sind(alpha_i)/sind(beta_i-alpha_i);      //m/s
         Vfi=Vri*sind(beta_i);        //m/s
         Vwi=Vfi/tand(alpha_i);       //m/s
          
    //(a)Discharge, Q
             Q=Ao*Vfi;        //m^3/s
    
    //(b)Power develpoed by Runner
             P=rho*Q*Vwi*ui/1000;        //kW

    //(c)Hydraulic Efficiency, eta_H
             eta_H=Vwi*ui*100/(g*H);       //Percentage


//Results:-

printf(" (a)Discharge, Q=%.3f m^3/s\n ",Q)     //The Answer Vary due to Round off Error
printf(" (b)Power develpoed by Runner=%.3f kW\n ",P)      //The Answer provided in the Textbook is Wrong
printf(" (c)Hydraulic Efficiency, eta_H =%.2f Percent\n ",eta_H)        //The Answer Vary due to Round off Error

     
