//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.17
      clc
     clear
//Given Data:-
        d=60;     //Diameter of Jet, mm
        Vi=22;       //Absolute Velocity of Jet at Inlet, m/s
        u=11;        //Velocity of vane, m/s
        ui=u;
        uo=u;
        alpha_i=0;   //degrees
        alpha_l=65;  //degrees
        alpha_o=180-alpha_l;     //degrees
        
//Data Used:-
     rho=1000;     //Density of water, kg/m^3

//Computations:-
             
       d=d/1000;      //m
       a=(%pi/4)*d^2;      //cross-sectional area of Jet, m^2
       Vwi=Vi;      //m/s
       Vri=Vi-ui;    //m/s
       Vro=Vri;
       beta_o=alpha_o-asind(uo*sind(alpha_l)/Vro);       //degrees
       Vwo=uo-Vro*cosd(beta_o);     //m/s
   //(a)The Force exerted by Jet on Vane in direction of motion, Fx
       Fx=rho*a*Vri*(Vwi-Vwo);      //N
   //(b)Power developed by vane,
       P=Fx*u/1000;         //kW
   //(c)Efficiency of Vane,
       eta=2*Fx*u/(rho*a*Vi^3)*100;        //in Percentage
       
//Results:-
     printf("(a)The Force exerted by Jet on Vane in direction of motion, Fx=%.2f  N  \n", Fx)      //The answer vary due to round off error
     printf("(b)Power developed by vane=%.3f kW  \n", P)      //The answer vary due to round off error
     printf("(c)Efficiency of vane, eta=%.2f percent  \n", eta)      //The answer vary due to round off error
