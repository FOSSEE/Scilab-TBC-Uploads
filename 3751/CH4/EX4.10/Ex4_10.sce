//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.10
      clc
     clear
     
//Given Data:-
        N=300;          //Speed of runner, rpm
        H=510;           //Head, m
        d=200;            //Diameter of the Jet, mm
        AoD=165;       //Angle of Deflection, degrees
        Vel_per=15;       //percentage by which velocity is reduced

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2
     Cv=0.98;
     Ku=0.46;

//Computations:-
     d=d/1000;            //m
     beta_O=180-AoD;           //degrees
     Vro_by_Vri=1-Vel_per/100;          //Vro/Vri
     Vi=Cv*sqrt(2*g*H);            //m/s
     Vwi=Vi;
     ui=Ku*sqrt(2*g*H);           //m/s
     uo=ui;
     u=ui;
     Vri=Vi-ui;         //m/s
     Vro=Vri*Vro_by_Vri;        //m/s
     Vrwo=Vro*cosd(beta_O);        //m/s
     Vwo=uo-Vrwo;          //m/s

  //(i) Water power available at inlet of turbine, P
     Q=(%pi/4)*d^2*Vi;           //m^3.s
     P=(1/2)*rho*Q*Vi^2/1000;        //kW
  //(ii)Resultant force on the bucket, F
     F=rho*Q*(Vwi-Vwo)/1000;          //kN
  //(iii)Overall Efficiency, eta_o
     eta_H=F*u/P;              //Hydraulic efficiency
    //Assume,
     eta_V=100/100;          //Volumetric efficiency is 100%
     eta_m=98/100          //Mechanical Efficiency is 98%
     
     eta_O=eta_V*eta_H*eta_m*100;          //In percentage

//Results:-
     printf("(i)Water power available at inlet of turbine=%.2f  kW  \n", P)       //The answer provided in the Textbook is wrong
     printf("(ii)Resultant force on the bucket, F=%.3f kN  \n", F)     //The answer vary due to round off error
     printf("(iii)Overall efficiency, eta_O=%.2f percent", eta_O)     //The answer vary due to round off error

