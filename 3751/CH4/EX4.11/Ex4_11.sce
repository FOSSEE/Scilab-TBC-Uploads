//Fluid system - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.11
      
     clc
     clear
     
//Given Data:-
        N=300;          //Speed of runner, rpm
        H=500;           //Head, m
        d=200;            //Diameter of the Jet, mm
        AoD=165;       //Angle of Deflection, degrees
        Vel_per=15;       //percentage by which velocity is reduced
        Cv=0.98;       //Co-efficient of Velocity
        Ku=0.46;       //Speed ratio
      Loss_per=3;     //Percentage of Mechanical losses  
        
//Data Used:-
     rho=1000;     //Density of water, kg/m^3
     g=9.81;        //Acceleration due to gravity, m/s^2


//Computations:-
     d=d/1000;            //m
     beta_O=180-AoD;           //degrees
     Vro_by_Vri=1-Vel_per/100;          //Vro/Vri
     K=Vro_by_Vri;
     Vi=Cv*sqrt(2*g*H);            //m/s
     Vwi=Vi;
     ui=Ku*sqrt(2*g*H);           //m/s
     uo=ui;
     u=ui;
     Vri=Vi-ui;         //m/s
     Vro=K*Vri;        //m/s
     Vrwo=Vro*cosd(beta_O);        //m/s
     Vwo=uo-Vrwo;          //m/s

    //(a) Water power, WP
     Q=(%pi/4)*d^2*Vi;           //m^3.s
     WP=rho*Q*g*H/1000;        //kW
  
  //(b)The Force on the bucket in the direction of Jet, F
     F=rho*Q*(Vwi-Vwo)/1000;          //kN

   //(c)Shaft Power, SP
      Pr=F*u;    //Power developed by the Runner, W
      SP=Pr-Loss_per/100*Pr;     //kW
            
  //(d)Overall Efficiency, eta_o
     eta_o=SP/WP*100;          //In percentage

//Results:-
     printf("(a) Water power, WP=%.2f  kW  \n",WP)  //The answer provided in the Textbook is wrong
     printf("(b)The Force on the bucket in the direction of Jet=%.3f kN  \n", F)     //The answer vary due to round off error
     printf("(c)Shaft Power, SP=%.3f kW\n",SP)   //The answer provided in the Textbook is wrong
     printf("(d)Overall efficiency, eta_o=%.2f percent", eta_o)       //The answer vary due to round off error

