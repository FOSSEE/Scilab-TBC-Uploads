//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.10
//To Determine (i)Hydraulic Efficiency of turbine (ii)Discharge through the turbine  (iii)Power Developed by the Runner

clc
clear

//Given:
       D=4.5;     // Runner Diameter, m
       N=48;      // Speed, rpm
       Alpha_i=145;      //Guide Vane Angle at Inlet, Degrees    
       Beta_o=25;          //Runner blade Angle at Outlet
       A=30;        //Flow Area, m^2
    //As runner blade angle at inlet is radial
       Beta_i=90     //Degrees

//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Calculations
       u=%pi*D*N/60;  //Velocity of Runner,m/s
      ui=u;
      uo=u;
      Vwi=ui;
   Vfi=ui*tand(180-Alpha_i);    //m/s
      Vfo=Vfi;
   Vrwo=Vfo/tand(Beta_o);   //m/s
   Vwo=Vrwo-uo;      //The answer vary because wrong Value of uo is used to calculate Vwo in the textbook
   Vo=sqrt(Vfo^2+Vwo^2);   //m/s       //The answer vary because wrong Value of Vwo is used to calculate Vo in the textbook

//(i)Hydraulic Efficiency, eta_H
     H= (Vwi-Vwo)*u/g+Vo^2/(2*g);     // Head, m       //The answer vary because wrong Value of Vo and Vwo is used to calculate H in the textbook
    eta_H=(Vwi*ui-Vwo*uo)*100/(g*H);     //Percent(%)

//(ii) Discharge through the turbine, Q
      Q=A*Vfi;     //m^3/s
//(iii)Power Developed by the Runner, P
   P=rho*Q*(Vwi-Vwo)*u/10^6;    //MW
//Results
    printf("(i)Hydraulic Efficiency, eta_H=%.2f Percent\n",eta_H)     //The answer given in the textbook is wrong
    printf("(ii) Discharge through the turbine, Q =%.1fm^3/s\n",Q)     //The answer vary due to round off error
    printf("(iii)Power Developed by the Runner, P =%.3fMW\n",P)      //The answer given in the textbook is wrong
