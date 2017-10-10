//Fluid system - By - Shiv Kumar
//Chapter 2 - Impact of Jet
//Example 2.33
      clc
     clear
     
//Given Data:-
        a=0.72;          //Total cross-sectional area of Jets, m^2
        Vr=12;         //Velocity through the Jet relative to ship, m/s
        u=6;            //Speed of ship, m/s
        eta_E=85/100;         //Efficiency of I.C. engine
        eta_P=70/100;        //Efficiency of Centrifugal Pump
        Pipe_Loss_per=8;       //Percentage of pipe losses (of the kinetic energy of Jet per sec)

//Data Used:-
        rho=1000;      //Density of water, kg/m^3

//Computations:-
        Pipe_Loss=(Pipe_Loss_per/100)*(rho*a*Vr^3/2);            //Pipe Losses, N-m/s
        V=Vr-u;         //Absolute Velocity of the Jet, m/s
    //(a)
        F=rho*V*a*(V+u);            //N
    //(b)
        W=F*u;        //Work done by Jet per second, N-m/s
        OE_P=rho*a*Vr^3/2+Pipe_Loss;           //Output energy of pump per sec, N-m/s
        IP_P=OE_P/eta_P;            //Input Energy of pump per sec, N-m/s
        OE_E=IP_P;        //Output of Engine is equal to Input to the pump
        IE_E=OE_E/eta_E;          //Input Energy of Engine per sec, N-m/s
        eta_o=W/IE_E*100;            //Overall Efficiency in percentage   

//Results:-
     printf("(a)Propelling Force=%.f N  \n", F)
     printf("(b)Overall Efficiency, eta_o=%.2f percent", eta_o)      //The answer vary due to round off error
