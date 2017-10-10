//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.25
      clc
     clear
     
//Given Data:-
        Vi=32;       //Absolute velocity of Jet at inlet, m/s
        N=250;       //Speed of the wheel, rpm
        alpha_i=20;      //angle of Jet at inlet, degrees
        Vo=6;       //Absolute velocity of Jet at outlet, m/s
        alpha=132;      //Angle made by Jet at outlet with tangent to wheel, degrees
        alpha_o=180-alpha;       //degrees
        Do=1.2;     //outer Diameter of wheel, m
        Di=0.75;    //Inner diameter of wheel, m
         
//Data Used:-
     g=9.81;          //Acceleration due to gravity, m/s^2

//Computations:-
        ui=%pi*Do*N/60;          //m/s
        uo=%pi*Di*N/60;          //m/s
   //(a)
        Vfi=Vi*sind(alpha_i);      //m/s
        Vwi=Vi*cosd(alpha_i);       //m/s
        Vrwi=Vwi-ui;          //m/s
        Vwo=Vo*cosd(alpha_o);        //m/s
        Vrwo=uo+Vwo;    //m/s
        Vfo=Vo*sind(alpha_o);     //m/s
        beta_i=atand(Vfi/Vrwi);         //degrees
        beta_o=atand(Vfo/Vrwo);          //degrees
    //(b)
        W=(Vwi*ui+Vwo*uo)/g;        //N-m/N
    //(c)
        eta=2*(Vwi*ui+Vwo*uo)/Vi^2*100;        //in percentage
        
//Results:-
     printf("(a)Vane angle at Inlet, beta_i=%.2f degrees  \n", beta_i)      //The answer vary due to round off error
     printf("    Vane angle at Outlet, beta_o=%.2f degrees  \n", beta_o)      //The answer vary due to round off error
     printf("(b)Work done per second per unit weight of water strikes on vane per second=%.2f N-m/N  \n", W)      //The answer vary due to round off error
     printf("(c)Efficiency of the wheel, eta=%.2f percent",eta)      //The answer vary due to round off error

