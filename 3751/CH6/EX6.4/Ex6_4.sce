//Fluid System By Shiv Kumar
//Chapter 6 - Kaplan and Propeller Turbines
//Example 6.4
//To Find (a)Discharge  (b)Hydraulic Efficiency (c)Overall Efficiency  (d)Specific Speed

  clc
  clear
  
//Given:
     N=30   //Speed, rpm
     Alpha_i=31;    //Inlet Guide Vane Angle, Degrees
     Beta_i=90;      //Inlet Runner Vane Angle, Degrees
     Beta_o=24;      //Outlet Runner Vane Angle, Degrees
     Dm=4;         //Mean Diameter of Runner, m
     A=31;        //Area of Flow, m^2
     ML=5;    //Percent of Mechanical Loss
//Data Required:
   rho=1000;   //Density of Water, Kg/m^3
   g=9.81;     //Acceleration due to gravity, m/s^2

//Computations

   u=%pi*Dm*N/60;     //Velocity of runner, m/s
   ui=u;
   uo=u;
   Vwi=ui;
     Vfi=ui*tand(Alpha_i);    //m/s
  Vf=Vfi;
  Vfo=Vfi;
 Vrwo=Vfo/tand(Beta_o);    //m/s
 Vwo=Vrwo-uo;
  Vo=sqrt(Vfo^2+Vwo^2);      //m/s
//(a)Discharge, Q
     Q=A*Vfi;     //m^3/s
//(b) Hydraulic Efficiency, eta_H
     H= (Vwi+Vwo) *u/g+Vo^2/(2*g);     // Head, m 
    eta_H=(Vwi*ui+Vwo*uo)*100/(g*H);     //Percent(%)
//(c)Overall  Efficiency, eta_o
     P=rho*Q*(Vwi+Vwo)*u*(1-ML/100);    //Shaft Power,  Watt(w)
     eta_o=P/(rho*Q*g*H)*100;      //Percent(%)
//(d)Specific Speed,Ns
   Ns=N*sqrt(P/1000)/(H^(5/4));    //SI Units

//Results
  printf("(a)Discharge, Q=%.2f m^3/s\n",Q)     //The answer vary due to round off error
  printf("(b) Hydraulic Efficiency,  eta_H =%.2f  Percent\n", eta_H)     //The answer vary due to round off error
  printf("(c) Overall Efficiency,  eta_o =%.2f  Percent\n", eta_o)     //The answer vary due to round off error
  printf("(d)Specific Speed, Ns =%.2f  (SI Units)\n", Ns)       //The answer vary due to round off error
