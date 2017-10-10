//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.22
      clc
     clear
//Given Data:-
        Vi=32;     //velocity of Jet at Inlet, m/s
        u=16;     //Velocity of Vane, m/s
        ui=u;
        uo=u;
        alpha_i=22;       //Angle of Jet at Inlet, degrees
        K=0.92;          //Co-efficient of Vane

//Data Used:-
     g=9.81;          //Acceleration due to gravity, m/s^2

//Computations:-
        Vwi=Vi*cosd(alpha_i);       //m/s
        Vfi=Vi*sind(alpha_i);        //m/s
        Vrwi=Vwi-ui;       //m/s
   //(a)
        beta_i=atand(Vfi/Vrwi);       //degrees
        Vri=Vfi/sind(beta_i);           //m/s
        Vro=K*Vri;     //m/s
        beta_o=acosd(uo/Vro);        //degrees
    //(b)
        Vwo=0;          //m/s(as alpha_o=90 degrees)
        W=(Vwi+Vwo)*u/g;        //N-m/N
    //(c)
        eta=2*Vwi*u/Vi^2*100;        //In percentage

//Results:-
     printf("(a)Vane angle at Entrance, beta_i=%.2f degrees  \n", beta_i)      //The answer vary due to round off error
     printf("    Vane angle at exit, beta_o=%.2f degrees  \n", beta_o)      //The answer vary due to round off error
     printf("(b)Work done on vanes per unit weight of water=%.2f N-m/N  \n", W)
     printf("(c)Efficiency of the system, eta=%.2f percent", eta)      //The answer vary due to round off error
