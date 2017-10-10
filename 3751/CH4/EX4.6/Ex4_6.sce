//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.6
      clc
     clear
//Given Data:-
        N=300;          //Speed of runner, rpm
        H=510;        //Head,  m
        d=200;         //Diameter of the Jet, mm
        AoD=165;         //Angle of Jet(Deflection inside bucket), degrees
        Vel_per=15;           //Percentage by which velocity is reduced due to friction
        Loss_per=3;         //Percentage of mechanical Losses (of power Supplied)

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2
     Cv=0.98;      //Co-efficient of Velocity
     Ku=0.46;      //Speed ratio
     
//Computations:-
        d=d/1000;           //m
        beta_O=180-AoD;       //degrees
        Vro_by_Vri=1-Vel_per/100;          //Vro/Vri
        Vi=Cv*sqrt(2*g*H);             //m/s
        Vwi=Vi;
        u=Ku*sqrt(2*g*H);         //m/s
        uo=u;
        ui=u;
        Vri=Vi-ui;       //m/s
        Vro=Vri*Vro_by_Vri;        //m/s
        Vrwo=Vro*cosd(beta_O);         //m/s
        Vwo=uo-Vrwo;         //m/s
        Q=(%pi/4)*d^2*Vi;            //Discharge, m^3/s
   //(i) Resultant Force on bucket, F
        F=rho*Q*(Vwi-Vwo)/1000;          //kN

  //Result (i):-
     printf("(i) Resultant Force on bucket, F=%.3f kN  \n", F)     //The answer vary due to round off error

   //(ii) Shaft Power, P
        Pr=F*u;           //power developed by runner, kW
        P=Pr-(Loss_per/100)*Pr;          //kW
        
  //Result (ii)
     printf("(ii)Shaft Power, P=%.3f kW \n", P)      //The answer given in the textbook is wrong (due to round off error in F)
  //OR
        eta_m=1-Loss_per/100;     //Mechanical Efficiency
        P=eta_m*Pr;          //kW
      
  //(iii) Overall Efficiency, eta_O
        eta_O=P*1000/(rho*Q*g*H)*100;          //In percentage
  //Result (iii)
     printf("(iii)Overall efficiency, eta_O=%.2f percent", eta_O)
  



