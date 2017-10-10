//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.35
      clc
     clear
     
//Given Data:-
        Vr=14;      //Relative Velocity of ship, m/s
        a=0.025;       //cross-sectional area of Jet, m^2
        u=32;          //Speed of ship, km/hr
        eta_P=80/100;        //Efficiency of pump
        h_f=2.5;         //Frictional Losses, m of water

//Data Used:-
        rho=1000;      //Density of water, kg/m^3
        g=9.81;         //Acceleration due to gravity, m/s^2

//Computations:-
        u=u*1000/3600;        //m/s
   //(i)
    //(a)
        V=Vr-u;      //m/s
        F=rho*V*a*(V+u);            //N
    //(b)
        W=F*u;           //N-m/s, Value in textbook is wrong due to incorrect value of u ia used.
    //(ii)
        E=rho*a*Vr*((Vr^2-u^2)/2+g*h_f);             //Actual energy supplied to water per second, N-m/s
        OE_P=E;          //Output fluid energy per second of pump
    //(a)
        P=OE_P/eta_P;         //Power required to drive the pump, W
    //(b)
        eta_o=W/P*100;          //In percentage

//Results:-
     printf("(i) (a)Resistance to the motion of ship, F=%.f N  \n", F)        //The answer provided in the textbook is wrong
     printf("    (b)Propulsive work per second=%.2f N-m/s  \n\n", W)        //The answer provided in the textbook is wrong
     printf("(ii) (a)Power required to drive the pump=%.2f W  \n", P)        //The answer provided in the textbook is wrong
     printf("     (b)Overall Efficiency of propulsion, eta_o=%.2f percent", eta_o)      //The answer vary due to round off error
