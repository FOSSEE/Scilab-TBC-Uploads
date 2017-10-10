//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.8
      clc
     clear
     
//Given Data:-
        Cv=0.97;          //Co-efficient of Velocity
        H_l=400;         //Head at lake, m
        d=80;       //Diameter of Jet, mm
        D_pipe=0.6;       //Diameter of pipe, m
        l=4;         //Length of pipe, m
        f_dash=0.032;            //Friction factor
        AoD=165;        //Angle of Deflection, degrees
        beta_o=180-AoD;        //degrees
  // As bucket runs at 0.48 Jet speed
        u_by_Vi=0.48;         //u/Vi
        Vel_per=15;         //percentage by which velocity is reduced
        eta_m=90/100;        //Mechanical Efficiency

//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
        d=d/1000;         //m
        l=l*1000;         //m
        Vro_by_Vri=1-Vel_per/100;        //Vro/Vri
   //using continuity equation,
        V_by_Vi=(d/D_pipe)^2;        //V/Vi
        Vi=sqrt((2*g*H_l)/(1/Cv^2+f_dash*l*V_by_Vi^2/D_pipe));       //m/s
        Vwi=Vi;
        u=Vi*u_by_Vi;       //m/s
        ui=u;
        uo=u;
        Vri=Vi-ui;       //m/s
        Vro=Vri*Vro_by_Vri;          //m/s
        Vrwo=Vro*cosd(beta_o);         //m/s
   //(i) Flow Rate, Q
        Q=(%pi/4)*d^2*Vi;              //m^3/s
   //(ii) Shaft Power, P
        Vwo=uo-Vrwo;       //m/s
        Pr=rho*Q*(Vwi-Vwo)*u/1000;      //Power developed by the runner, kW
        P=eta_m*Pr;          //kW

//Results:-
     printf("Flow Rate, Q=%.4f  m^3/s  \n", Q)     //The answer vary due to round off error
     printf("Shaft power, P=%.2f kW", P)     //The answer vary due to round off error

