//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.3
      clc
     clear
     
//Given Data:-
        H=30;            //Effective Head, m
        AoD=165;            //Jet Deflection Angle, degrees
        Cv=0.98;          //Co-efficient of Velocity
        Ku=0.45;          //Speed ratio
        d=22;           //Diameter of Jet, mm
    //As  relative velocity at outlet is 0.98 times relative velocity at inlet,
       Vro_by_Vri=0.98;      // Vro/Vri

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
        d=d/1000;         //m
        beta_O=180-AoD;          //degrees
        Vi=Cv*sqrt(2*g*H);          //Absolut Velocity of Jet, m/s
        Vwi=Vi;
        u=Ku*sqrt(2*g*H);          //peripheral velocity of runner, m/s
        ui=u;
        uo=u;
        Vri=Vi-ui;          //m/s
        Vro=Vro_by_Vri*Vri;       //m/s
        Vrwo=Vro*cosd(beta_O);           //m/s
        Vwo=Vrwo-uo;              //m/s
       
   //(a)Power given by water to runner, P
        Q=(%pi/4)*d^2*Vi;          //m^3/s
        P=rho*Q*(Vwi+Vwo)*u/1000;           //kW

   //(b)The hydraulic efficiency, eta_H
        eta_H=2*(Vwi+Vwo)*u/Vi^2*100;          //In percentage

//Results:-
     printf("(a)The Power given by water to the runner=%.3f kW  \n", P)     //The answer vary due to round off error
     printf("(b)The Hydraulic Efficiency, eta_H=%.2f percent \n", eta_H)      //The answer vary due to round off error


