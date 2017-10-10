//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.21
      clc
     clear
//Given Data:-
        Vi=30;     //velocity of Jet at Inlet of, m/s
        u=15;     //Velocity of Vane, m/s
        ui=u;
        uo=u;
        alpha_i=32;       //Angle of Jet at Inlet, degrees
        alpha=125;          //Angle made by Jet at Outlet with direction fo motion of Vanes, degrees
        alpha_o=180-alpha;      //degrees

//Data Used:-
     g=9.81;          //Acceleration due to gravity, m/s^2
     rho=1000;     //Density of water, kg/m^3

//Computations:-
        Vwi=Vi*cosd(alpha_i);       //m/s
        Vfi=Vi*sind(alpha_i);        //m/s
        Vrwi=Vwi-ui;       //m/s
        beta_i=atand(Vfi/Vrwi);       //degrees
        Vri=Vfi/sind(beta_i);           //m/s
        Vro=Vri;
        beta_o=alpha_o-asind(uo*sind(180-alpha_o)/Vro);     //degrees

        Vrwo=Vri*cosd(beta_o);       //m/s
        Vwo=Vrwo-uo;           //m/s

    //(a)
        W=(Vwi+Vwo)*u/g;        //N-m/N  (Answer in textbook is wrong due to wrong value of Vwi used)
    //(b)Work done by Jet per second, W
        eta=2*(Vwi+Vwo)*u/(Vi^2)*100;        //In percentage

//Results:-
     printf("(a)Work done per unit weight of water=%.2f N-m/N  \n", W)        //The answer provided in the textbook is wrong
     printf("(b)Efficiency of the vane, eta=%.2f percent", eta)        //The answer provided in the textbook is wrong
     
