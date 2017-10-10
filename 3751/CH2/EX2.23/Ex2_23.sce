//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.23
      clc
     clear
//Given Data:-
        Vi=65;     //Absolut velocity of Jet at Inlet, m/s
        Ri=400;      //Inner radius of wheel, mm
        Ro=800;       //outer radius of wheel, mm
        alpha_i=24;        //degrees
        Vfo=12;      //Flow velocity at outlet, m/s
        beta_i=40;        //blade angle at Inlet, degrees
        beta_o=30;        //Blade angle at outlet, degrees

//Data Used:-
     g=9.81;          //Acceleration due to gravity, m/s^2

//Computations:-
        Ri=Ri/1000;       //m
        Di=2*Ri;        //m
        Ro=Ro/1000;       //m
        Do=2*Ro;          //m
        Vfi=Vi*sind(alpha_i);        //m/s
        Vwi=Vi*cosd(alpha_i);       //m/s
        Vrwi=Vfi/tand(beta_i);      //m/s
   //(a)
        ui=Vwi-Vrwi;      //m/s
        N=ui*60/(%pi*Do);       //rpm
        omega=2*%pi*N/60;        //rad/s
        uo=%pi*Di*N/60;         //m/s
        Vro=Vfo/sind(beta_o);       //m/s
        Vrwo=Vro*cosd(beta_o);       //m/s
        Vwo=Vrwo-uo;            //m/s
    //(b)
        W=(Vwi*ui+Vwo*uo)/g;        //Work done per unit weight of water, N-m/N
    //(c)
        eta=(Vwi*ui+Vwo*uo)*2/Vi^2*100;       //In percentage

//Results:-
     printf("(a)For the speed of wheel:  \n\t")
     printf("N=%.2f rpm  \n\t", N)      //The answer vary due to round off error
     printf("Angular velocity, omega=%.2f rad/s  \n\t", omega)      //The answer vary due to round off error
     printf("Peripheral velocity of wheel at outlet, uo=%.2f m/s  \n\t", uo)
     printf("Vwo=%.2f m/s  \n\n", Vwo)      //The answer vary due to round off error
     printf("(b)Work done per unit weight of water=%.2f N-m/N  \n", W)      //The answer vary due to round off error
     printf("(c)Efficiency of the system, eta=%.2f percent", eta)      //The answer vary due to round off error

