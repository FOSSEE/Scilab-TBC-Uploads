//Fluid Systems by Shiv Kumar
//Chapter 7 - Performance of water turbine
//Example 7.4
//To Find (a) The Diameter of Runner  (b) The Diameter of jet 
      clc
       clear
//Given:
     P=3200;    //Power Developed, kW
     H=310;     // Effective Head , m
     eta_o=82/100;    //Overall Efficiency
     Ku=0.46;     //	Speed Ratio
     Cv=0.98   // Co-efficient of Velocity
     Ns=18;    //Specific Speed (SI Units)
//Data required
    rho=1000;   //Density of Water, Kg/m^3
    g=9.81    // Acceleration due to gravity, m/s^2

//Computations
     N=Ns*H^(5/4)/sqrt(P);    //Speed, rpm
     D=Ku*sqrt(2*g*H)*60/(%pi*N);     //Diameter of runner, m
     Q=P*1000/(rho*g*H*eta_o);     //Discharge, m^3/s
     d=sqrt(Q/((%pi/4)*Cv*sqrt(2*g*H)));    // Diameter of Jet, m

//Results
  printf("(a) The Diameter of Runner, D =%.2f m\n",D)       //The Answer Vary due to Round Off Error
  printf("(c) The Diameter of Jet,  d=%.3f m \n",d)
