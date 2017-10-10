//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.24
      clc
     clear
     
//Given Data:-
        Do=1.5;     //Diameter of rotor at inlet of vane, m
        Di=1;       //Diameter of rotor at outlet of vane, m
        N=400;       //Speed of the rotor, rpm
        Vi=15;       //m/s
        alpha_i=12;      //Nozzle angle at inlet, degrees
        Vo=5;       //m/s
        VFo=Vo;         
//Data Used:-
     g=9.81;          //Acceleration due to gravity, m/s^2

//Computations:-
        ui=%pi*Do*N/60;          //m/s
        uo=%pi*Di*N/60;          //m/s
        Vfi=Vi*sind(alpha_i);      //m/s
        Vfo=Vo;     //m/s
        Vwi=Vi*cosd(alpha_i);       //m/s
   //(a)
        Vrwi=ui-Vwi;           //m/s
        beta_i=180-atand(Vfi/Vrwi);        //Blade angle at inlet, degrees
        beta_o=atand(Vfo/uo);          //Blade angle at outlet, degrees
    //(b)
        Vro=uo/cosd(beta_o);          //m/s
    //(c)
        W=Vwi*ui/g;        //N-m/N

//Results:-
     printf("(a)Blade angle at entry and exit are:  \n\t")
     printf("beta_i=%.2f degrees  \t beta_o=%.2f degrees \n\n", beta_i,beta_o)      //The answer vary due to round off error
     printf("(b)Velocity of water relative to Vanes at exit, Vro=%.2f m/s  \n", Vro)      //The answer vary due to round off error
     printf("(c)Work done per second per unit weight of water strikes on Vane per second=%.2f N-m/N", W)      //The answer vary due to round off error

