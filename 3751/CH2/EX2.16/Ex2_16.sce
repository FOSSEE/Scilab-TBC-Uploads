//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.16
      clc
     clear
     
//Given Data:-
        Vi=18;     //velocity of Jet at Inlet of, m/s
        u=6;     //Velocity of Vane, m/s
        ui=u;
        uo=u;
        AoD=110;       //Angle of deflection of the Jet, degrees
        
//Data Used:-
     g=9.81;     //Acceleration due to gravity, m/s^2
     
//Computations:-
     beta_i=(180-AoD)/2;
     beta_o=beta_i;

   //(a)
        alpha_i=beta_i-asind(ui*sind(180-beta_i)/Vi);       //degrees
        Vwi=Vi*cosd(alpha_i);       //m/s
        Vfi=Vi*sind(alpha_i);        //m/s
        Vri=Vfi/sind(beta_i);           //m/s
        Vro=Vri;
        Vfo=Vro*sind(beta_o);       //m/s
        Vrwo=Vro*cosd(beta_o);       //m/s
        Vwo=Vrwo-uo;           //m/s
        alpha_o=atand(Vfo/Vwo);          //degrees
    //(b)
        alpha_o_dash=180-alpha_o;       //degrees
    //(c)
        W=(Vwi+Vwo)*u/g;        //N-m/N
//Results:-
     printf("(a)Angle of Jet at Inlet of Vane, alpha_i=%.2f Degrees  \n", alpha_i)      //The answer vary due to round off error
     printf("    Angle at Outlet of Vane, alpha_o=%.2f Degrees  \n", alpha_o)      //The answer vary due to round off error
     printf("(b)Angle made by leaving Jet to the direction of motion of Vane, alpha_o_dash=%.2f Degrees  \n", alpha_o_dash)      //The answer vary due to round off error
     printf("(c)Work done per second per unit weight of water striking the vane per second=%.2f N-m/N", W)      //The answer vary due to round off error
