//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.7
      clc
     clear
     
//Given Data:-
        H_G=500;          //Gross Head, m
        h_f=(1/3)*H_G;         //Head lost in friction in penstock, m
        Q=2;          //Discharge, m^3/s
        AoD=165;           //Angle of Deflection of Jet, degrees
        Ku=0.45;          //Speed ratio
        Cv=1;

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
        H=H_G-h_f;         //Working Head, m
        Vi=Cv*sqrt(2*g*H);       //m/s
        Vwi=Vi;
        u=Ku*sqrt(2*g*H);          //m/s
        ui=u;
        uo=u;
        Vri=Vi-u;    //m/s
        Vro=Vri;
        beta_o=180-AoD;            //degrees
        Vrwo=Vro*cosd(beta_o);      //m/s
        Vwo=Vrwo-uo;            //m/s
        P=rho*Q*(Vwi+Vwo)*u/1000;        //power given by water to runner, kW
        eta_H=2*(Vwi+Vwo)*u/Vi^2*100;           //Hydraulic efficiency, In percentage

//Results:-
     printf("Power given by water to the runner=%.2f  kW  \n", P)        //The answer vary due to round off error
     printf("Hydraulic efficiency, eta_H=%.2f percent", eta_H)     //The answer vary due to round off error



