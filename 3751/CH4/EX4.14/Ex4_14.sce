//Fluid Systems - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.14
 
      clc
       clear

//Given Data:-
      H=452;     //Net Head, m
      m=12;        //Jet Ratio (D/d)
      Ku=0.46;      //Speed Ratio
      AoD=165;     //Angle of Jet Deflection, degrees
      Cv=0.98;       //Co-efficient of Velocity
      Loss_f=15;      //Percentage of Friction Loss of Buckets
      eta_o=86/100;          //Overall Efficiency
      P_G=10200;        //Power developed by Generator, HP
      eta_G=95/100;       //Generator  Efficiency 


//Data Used:-
        rho=1000;          //Density of water, kg/m^3
         g=9.81;            //Acceleration due to gravity, m/s^2

//Computations:-
          P_G=P_G*736;       //W
          Vro_by_Vri=1-Loss_f/100;          //Vro/Vri
          beta_o=180-AoD;        //degrees

           u=Ku*sqrt(2*g*H);         //Velocity of Runner, m/s
           ui=u;
           uo=u;
          Vi=Cv*sqrt(2*g*H);         //m/s
          Vwi=Vi;
          Vri=Vi-ui;      //m/s
         Vro=Vri*Vro_by_Vri;     //m/s
         Vrwo=Vro*cosd(beta_o);      //m/s
         Vwo=uo-Vrwo;        //m/s

         P=P_G/eta_G;       //Shaft Power, W       
         Q=P/(rho*g*H*eta_o);          //Discharge, m^3/s
 
    //(a)
         d=sqrt(Q/((%pi/4)*Vi));       //Diameter of Jet, m

    //(b)
          D=m*d;       //Diameter of Runner, m

     //(c)
        Pr=rho*Q*(Vwi-Vwo)*u/1000;      // Power developed by Runner, kW

     //(d)
        eta_m=P/(Pr*1000)*100;        //Mechanical  Efficiency  in Percentage


//Results:-
      printf("(a) Diameter of the Jet, d=%.3f m\n",d)
      printf(" (b)Diameter of the Runner, D=%.3f m\n",D)       //The answer vary due to round off error
      printf(" (c)Power Developed by the Runner=%.3f kW\n",Pr)       //The answer provided in the textbook is wrong
      printf(" (d)Mechanical Efficiency , eta_m=%.2f Percent\n",eta_m)       //The answer vary due to round off error

                 
