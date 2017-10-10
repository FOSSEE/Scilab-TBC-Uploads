//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.18
      clc
     clear
     
//Given Data:-
        Vi=18;     //velocity of Jet at Inlet of, m/s
        u=6;     //Velocity of Vane, m/s
        ui=u;
        uo=u;
        AoD=120;       //Angle of deflection of the Jet, degrees
        
//Data Used:-
     g=9.81;          //Acceleration due to gravity, m/s^2
     
//Computations:-
        beta_i=(180-AoD)/2;         //degrees
        beta_o=beta_i;
   //(i)
        alpha_i=beta_i-asind(ui*sind(180-beta_i)/Vi);          //degrees
   //(ii)
        Vrwi=Vi*cosd(alpha_i)-ui;       //m/s
        Vfi=Vi*sind(alpha_i);        //m/s
        Vri=Vfi/sind(beta_i);           //m/s
        Vro=Vri;
        Vfo=Vro*sind(beta_o);       //m/s
        Vwo=Vro*cosd(beta_o)-uo;      //m/s
        alpha_o=atand(Vfo/Vwo);         //degrees
        Vo=Vfo/sind(alpha_o);      //m/s
    //(iii)
        W=(Vi*cosd(alpha_i)+Vwo)*u/g;        //N-m/N
//Results(a):-
     printf("(i)Angle of Jet at Inlet, alpha_i=%.2f Degrees  \n", alpha_i)
     printf("(ii)Absolute velocity of Jet at Outlet, Vo=%.2f m/s with angle alpha_o=%.2f Degrees  \n", Vo,alpha_o)      //The answer vary due to round off error
     printf("(iii)Work done per N of Water=%.2f N-m/N", W)      //The answer vary due to round off error
