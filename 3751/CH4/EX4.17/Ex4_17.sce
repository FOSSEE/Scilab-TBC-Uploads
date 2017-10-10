//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.17
      
     clc
     clear
     
//Given Data:-
        H_G=510;          //Gross Head, m
        h_f=(1/3)*H_G;         //Head lost in friction in penstock, m
        d=170;          //Diameter of Jet, mm
        AoD=165;           //Angle of Deflection of Jet, degrees
        Ku=0.45;          //Speed ratio
        Cv=0.98;        //Co-efficient of Velocity

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
        H=H_G-h_f;         //Effective Head, m
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
        Q=(%pi/4)*(d/1000)^2*Vi;       //Discharge, m^3/s
        P=rho*Q*(Vwi+Vwo)*u/1000;        //Power developed by runner, kW
        eta_H=2*(Vwi+Vwo)*u/Vi^2*100;           //Hydraulic efficiency, In percentage

//Results:-
     printf("(a)Power developed by the runner=%.3f kW  \n",P) //The answer provided in the Textbook is wrong
     printf("(b)Hydraulic efficiency, eta_H=%.2f percent", eta_H)        //The answer vary due to round off error



