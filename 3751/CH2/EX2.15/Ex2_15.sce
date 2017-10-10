//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.15
      clc
     clear
     
//Given Data:-
        Vi=20;     //Absolute velocity of Jet at Inlet of Vane, m/s
        u=10;     //Velocity of Vane, m/s
        ui=u;
        uo=u;
        alpha_i=20;      //Angle made by Jet at Inlet, degrees
        alpha_l=130;     //Angle made by Jet at leaving, degrees
        alpha_o=180-alpha_l;         //degrees
        
//Data Used:-
      g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
   //(a)
        Vwi=Vi*cosd(alpha_i);       //m/s
        Vfi=Vi*sind(alpha_i);        //m/s
        Vrwi=Vwi-ui;        //m/s
        beta_i=atand(Vfi/Vrwi);          //degrees
        Vri=Vfi/sind(beta_i);           //m/s
        Vro=Vri;
        beta_o=alpha_o-asind(uo*sind(180-alpha_o)/Vro);        //degrees
        Vwo=Vro*cosd(beta_o)-uo;         //degrees
   //(b)
        W=(Vwi+Vwo)*u/g;       //N-m/N
        
//Results:-
     printf("(a)Vane angle at Inlet, beta_i=%.2f degrees  \n", beta_i)
     printf("    Vane angle at Outlet, beta_o=%.2f degrees  \n\n", beta_o)      //The answer vary due to round off error
     printf("(b)Work done per second per unit weight of water striking the vane per second=%.2f N-m/N", W)      //The answer vary due to round off error



