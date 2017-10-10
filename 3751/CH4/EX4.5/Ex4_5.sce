//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.5
      clc
     clear
     
//Given Data:-
        n=2;          //Number of Jets
        P=15450;         //Shaft Power, kW
        d=200;           //Diameter of each Jet, mm
        H=400;            //Net Head, m
        Cv=1;

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
        P=P*1000;         //W
        d=d/1000;           //m
        Vi=Cv*sqrt(2*g*H);         //Absolute Velocity of Jet at Inlet, m/s
        q=(%pi/4)*d^2*Vi;         //Discharge through each Jet, m^3/s
        Q=n*q;              //Net Discharge
        eta_O=P/(rho*Q*g*H)*100;          //Overall Efficiency, in percentage

//Results:-
     printf("The Overall Efficiency of the Turbine, eta_o=%.2f percent", eta_O)      //The answer vary due to round off error



