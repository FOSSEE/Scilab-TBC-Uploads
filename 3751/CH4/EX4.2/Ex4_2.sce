//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.2
      clc
     clear
     
//Given Data:-
        u=12;     //Speed of bucket, m/s
        ui=u;
        uo=u;
        Q=650;         //Discharge, liters/s
        H=40;            //Head of water, m
        AoD=162;            //Angle of Deflection, degrees
        Cv=0.98;          //Co-efficient of Velocity

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
        Q=Q/1000;         //m^3/s
        beta_O=180-AoD;          //Blade angle a outlet, degrees
        Vi=Cv*sqrt(2*g*H);          //Velocity of Jet, m/s
        Vwi=Vi;
        Vri=Vi-ui;          //m/s
        Vro=Vri;
        Vrwo=Vro*cosd(beta_O);           //m/s
        Vwo=Vrwo-uo;              //m/s
   //(a)Power given by water to runner, P
        P=rho*Q*(Vwi+Vwo)*u/1000;           //kW
   //(b)The hydraulic efficiency, eta_H
        eta_H=2*(Vwi+Vwo)*u/Vi^2*100;          //In percentage

//Results:-
     printf("(a)The Power given by water to the runner=%.3f kW  \n", P)     //The answer vary due to round off error
     printf("(b)The Hydraulic Efficiency of Turbine, eta_H=%.2f percent \n", eta_H)      //The answer vary due to round off error


